<style>
/* Dropdown container */
.navbar {
    display: flex;
    justify-content: space-between;
    background-color: #333;
    padding: 10px;
}

.navbar > div {
    position: relative;
}

.navbar a {
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    display: block;
}

.navbar .dropdown-content {
    display: none;
    position: absolute;
    background-color: #333;
    min-width: 160px;
    z-index: 1;
}

.navbar .dropdown-content a {
    color: white;
    padding: 12px 16px;
    text-decoration: none;
}

.navbar .dropdown:hover .dropdown-content {
    display: block;
}
</style>

<div class="navbar">
    <div class="dropdown">
        <a href="#">Getting started</a>
        <div class="dropdown-content">
            <a href="Getting_started/01_1_python_installation_win.md">Installation Windows</a>
            <a href="Getting_started/01_2_python_installation_mac.md">Installation Mac</a>
            <a href="Getting_started/03_create_new_project.md">Creating a project</a>
            <a href="Getting_started/04_lea.md">Using Léa</a>
            <a href="Getting_started/06_debugging.md">Debugging</a>
            <a href="Getting_started/07_one_drive.md">OneDrive</a>
        </div>
    </div>

    <div class="dropdown">
        <a href="#">Topics</a>
        <div class="dropdown-content">
            <a href="Notes/01_introduction.md">Introduction</a>
            <a href="Notes/04_python_data_types.md">Python Data Types</a>
            <a href="Notes/08_variables.md">Variables</a>
            <a href="Notes/09_turtle_graphics.md">Turtle Graphics</a>
            <a href="Notes/10_operators.md">Operators</a>
            <a href="Notes/16_functions.md">Functions</a>
            <a href="Notes/28_lists.md">Lists</a>
            <a href="Notes/23_statements.md">Statements</a>
            <a href="Notes/31_math_to_python.md">Math To Python</a>
            <a href="Notes/33_scientific_modules.md">Scientific modules</a>
            <a href="Notes/35_files.md">Files</a>
            <a href="Notes/06_additional_notes.md">Additional notes</a>
        </div>
    </div>

    <div class="dropdown">
        <a href="#">Practice Exercises</a>
        <div class="dropdown-content">
            <a href="Practice_questions/list_practice_by_topic.md">List of practice questions</a>
        </div>
    </div>
</div>
