# Richard Tsai Jac App

UMID: 61772289

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

## Getting Started

Start the development server:

```bash
jac start main.jac
```

## Adding Dependencies

Add npm packages with the --cl flag:

```bash
jac add --cl react-router-dom
```
