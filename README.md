# Richard Tsai Jac App

UMID: 61772289

Added a due date for each item on the Todo list.

Just select when a task is due when inputting it, and it will display in the list.

Added a new "due_date" attribute to the TodoItems, so relevant code can be found in:

main.jac: node Todo, walker AddTodo, walker ListTodo

frontend.impl.jac: app.addTodo, app.toggleTodo

frontend.cl.jac: newTodoDueDate: str = "" in the declarations block, new input field on line 99

TodoItem.cl.jac: new span to display due date on line 15

## Getting Started

Clone Repository:

```bash
git clone git@github.com:ichard58/eecs449-app.git
```

This app uses Gemini, so export a GEMINI_API_KEY:
```bash
export GEMINI_API_KEY="your-key"
```

Start the development server:

```bash
jac start main.jac
```

## Project Structure

```
my-todo-app/
├── jac.toml              # Server: nodes, AI, walkers
├── main.jac              # Main application entry
├── frontend.cl.jac       # Client: state, UI, method declarations
├── frontend.impl.jac     # Client: method implementations
├── styles.css            # Styles
├── components/           # Reusable components
│   └── AuthForm.cl.jac           # Login/signup form
│   └── IngredientItem.cl.jac     # Single todo display
│   └── TodoItem.cl.jac           # Single ingredient display
├── assets/               # Static assets (images, fonts, etc.)
└── build/                # Build output (generated)
```
