#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <gtk/gtk.h>
//gcc op_gg_shortcut.c -o test `pkg-config --cflags --libs gtk+-3.0` `pkg-config --libs gtk+-3.0`

char* RemoveSpace(char* username)                                         
{
    int i;
	int j;
    char *output=username;
	
    for (i = 0, j = 0; i<strlen(username); i++,j++)          
    {
		if(i == 5)
			;
		else{
			
			if(username[i]!=' ')                           
                output[j]=username[i];                     
			else
                j--;   
			
		}

    }
	
    output[j]=0;
    return output;
}


static void search(GtkWidget *search_button, gpointer data){

	const gchar *text = gtk_entry_get_text(GTK_ENTRY(data));
	char *browser_search;
	char link[] = "start https://br.op.gg/summoner/userName=";
	
	browser_search = (char *)malloc(2 * sizeof(link) * sizeof(char));
	strcpy(browser_search, link);
	
	if(text[0] != '\0'){
		
		strcat(browser_search, text);
		system(RemoveSpace(browser_search));
		
	}
	
}



int main(int argc, char **argv){
	
	gtk_init(&argc, &argv);

	GtkWidget *window;
	GtkWidget *grid;
	GtkWidget *search_button;
    
	GtkWidget *input1;
	GtkWidget *input2;
	GtkWidget *input3;
	GtkWidget *input4;
	GtkWidget *input5;
	
	window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);
	
	grid = gtk_grid_new();
	gtk_container_add(GTK_CONTAINER(window), grid);
	
	input1 = gtk_entry_new();
	gtk_grid_attach(GTK_GRID(grid), input1, 0, 1, 1, 1);
	
	input2 = gtk_entry_new();
	gtk_grid_attach(GTK_GRID(grid), input2, 1, 1, 1, 1);
	
	input3 = gtk_entry_new();
	gtk_grid_attach(GTK_GRID(grid), input3, 2, 1, 1, 1);
	
	input4 = gtk_entry_new();
	gtk_grid_attach(GTK_GRID(grid), input4, 3, 1, 1, 1);
	
	input5 = gtk_entry_new();
	gtk_grid_attach(GTK_GRID(grid), input5, 4, 1, 1, 1);
	
	
	search_button = gtk_button_new_with_label("Search");
	gtk_grid_attach(GTK_GRID(grid), search_button, 2, 0, 1, 1);
	
	g_signal_connect(search_button, "clicked", G_CALLBACK(search), input1);
	g_signal_connect(search_button, "clicked", G_CALLBACK(search), input2);
	g_signal_connect(search_button, "clicked", G_CALLBACK(search), input3);
	g_signal_connect(search_button, "clicked", G_CALLBACK(search), input4);
	g_signal_connect(search_button, "clicked", G_CALLBACK(search), input5);
	
	gtk_widget_show_all(window);
	gtk_main();
	
	
	return 0;
	
}