# Script to check if local trailer exists

- it'll write window property to true 'SetProperty(trailer_avail,true,home)'

# Conditional Check with property :
			
			!String.IsEmpty(Window(home).Property(trailer_avail))

# VIDEOINFO PLAYBACK :

>			show	PlayMedia($INFO[ListItem.Filenameandpath]$INFO[ListItem.TvShowTitle,,-trailer.mp4])
		
		
>			movie	PlayMedia($INFO[listitem.path]$INFO[ListItem.FolderName,,-trailer.mp4])
			
# LIBRARY PLAYBACK :
			
>			show/movie 	PlayMedia($INFO[listitem.path]$INFO[ListItem.FolderName,,-trailer.mp4])
