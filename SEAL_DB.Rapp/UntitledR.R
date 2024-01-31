output$selectedImage <- renderImage({
   selectedImage <- paste0(input$image, ".jpg")
   imagePath <- file.path("/www", selectedImage)
   print(imagePath)  # Add this line for debugging
   return(list(src = imagePath, contentType = "image/jpg"))
}, deleteFile = FALSE)
