# Programming in Science - Course Notes

This website is used by the John Abbott Computer Science department to distribute course notes and practice questions for all sections of 420-SN1 Programming in Science. 

# Website structure
All course content is found in the `/content` folder which also acts as the Quarto root folder. 

# Site Navigation 
The website uses a sidebar style navigation. The content of the sidebar are expliclty specified in the `_quarto.yaml` file.

# Topics 
Each topic and sub-topic are in their own folders so that `_assets` for that given topic is well seperated from other topics. In the first version of the website, all assets were in the same folder which became really messy overtime.  

## QMD files
Every topic is written in the  Quarto Markdown (`.qmd`) format which is just like normal markdown with an added YAML header parse by Quarto to populate the website pages or render them a certain way (speceifically quarto -live). 



# Styles 
All styles are centralized in the `styles.css` and theme-specific styles are found in `theme-dark.scss` (dark mode) and `theme.scss` (light mode)

# Quarto Local Preview 
1. Clone the repo locally
2. Open it with VS Code (ideally)
3. Install [Quarto](https://quarto.org/docs/get-started/)
4. Install the Quarto VS Code extension
5. Some rendered pages require Jupyter Notebook, so to render the entire website install jupyter:
```cmd
python -m pip install jupyter
```
6. To generate the preview of a page, you can either press the preview icon in VS Code at the top-right corner of each **.qmd** file
7. You may also use the CTRL + SHIFT + P and type Quarto Preview 
8. You may also render the entire website at once using this command in a terminal opened at the root of the Quarto project (`/content` folder)
```cmd
quarto preview 
```