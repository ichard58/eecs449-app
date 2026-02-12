"""Todo item component."""

def:pub TodoItem(todo: dict, onToggle: any, onDelete: any) -> any {
    isOverdue = (todo.is_overdue and not todo.completed);

    itemClass = ("todo-item overdue" if isOverdue else "todo-item");
    titleClass = (
        "todo-title-completed" if todo.completed else (
            "todo-title-overdue" if isOverdue else "todo-title"
        )
    );
    dueDateClass = (
        "todo-due-overdue" if isOverdue else (
            "todo-title-completed" if todo.completed else "todo-due"
        )
    );

    return
        <div className={itemClass}>
            <input
                type="checkbox"
                checked={todo.completed}
                onChange={lambda -> None { onToggle(todo.id); }}
                className="todo-checkbox"
            />
            <span className={titleClass}>
                {todo.title}
            </span>
            <span className={dueDateClass}>
                Due: {todo.due_date}
            </span>
            {(
                <span className="category-badge">{todo.category}</span>
            ) if todo.category and todo.category != "other" else None}
            <button
                onClick={lambda -> None { onDelete(todo.id); }}
                className="todo-delete-btn"
            >
                ×
            </button>
        </div>;
}
