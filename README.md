# my-todo-app

A Jac client-side application with React support.

## Project Structure

```
my-todo-app/
├── jac.toml              # Project configuration
├── main.jac              # Main application entry
├── components/           # Reusable components
│   └── AuthForm.cl.jac     # Example Jac component
│   └── IngredientItem.cl.jac     # Example Jac component
│   └── TodoItem.cl.jac     # Example Jac component
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
