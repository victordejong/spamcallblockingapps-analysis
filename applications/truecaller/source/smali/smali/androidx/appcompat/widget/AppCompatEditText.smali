.class public Landroidx/appcompat/widget/AppCompatEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/p;


# instance fields
.field public final a:Ln3/b/f/c;

.field public final b:Ln3/b/f/q;

.field public final c:Ln3/b/f/p;

.field public final d:Ln3/k/j/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ln3/b/f/o0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Ln3/b/f/m0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 4
    new-instance p1, Ln3/b/f/c;

    invoke-direct {p1, p0}, Ln3/b/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    .line 5
    invoke-virtual {p1, p2, p3}, Ln3/b/f/c;->d(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Ln3/b/f/q;

    invoke-direct {p1, p0}, Ln3/b/f/q;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:Ln3/b/f/q;

    .line 7
    invoke-virtual {p1, p2, p3}, Ln3/b/f/q;->e(Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p1}, Ln3/b/f/q;->b()V

    .line 9
    new-instance p1, Ln3/b/f/p;

    invoke-direct {p1, p0}, Ln3/b/f/p;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->c:Ln3/b/f/p;

    .line 10
    new-instance p1, Ln3/k/j/i;

    invoke-direct {p1}, Ln3/k/j/i;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->d:Ln3/k/j/i;

    return-void
.end method


# virtual methods
.method public a(Ln3/k/i/c;)Ln3/k/i/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->d:Ln3/k/j/i;

    invoke-virtual {v0, p0, p1}, Ln3/k/j/i;->a(Landroid/view/View;Ln3/k/i/c;)Ln3/k/i/c;

    move-result-object p1

    return-object p1
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/b/f/c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:Ln3/b/f/q;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ln3/b/f/q;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/f/c;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/f/c;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->c:Ln3/b/f/p;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ln3/b/f/p;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:Ln3/b/f/q;

    invoke-virtual {v1, p0, v0, p1}, Ln3/b/f/q;->g(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 3
    invoke-static {v0, p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a1(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    .line 4
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    sget v1, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p1, v1}, Ln3/k/i/g0/a;->b(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 7
    new-instance v1, Ln3/b/f/l;

    invoke-direct {v1, p0}, Ln3/b/f/l;-><init>(Landroid/view/View;)V

    .line 8
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Q(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ln3/k/i/g0/d;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 7
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    .line 9
    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t handle drop: no activity: view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 14
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 17
    new-instance v0, Ln3/k/i/c$a;

    .line 18
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ln3/k/i/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 19
    new-instance v1, Ln3/k/i/c;

    invoke-direct {v1, v0}, Ln3/k/i/c;-><init>(Ln3/k/i/c$a;)V

    .line 20
    invoke-static {p0, v1}, Ln3/k/i/s;->l(Landroid/view/View;Ln3/k/i/c;)Ln3/k/i/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v3, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 22
    throw p1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    return v2

    .line 23
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 5

    const/4 v0, 0x0

    const v1, 0x1020022

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    const v3, 0x1020031

    if-ne p1, v3, :cond_5

    .line 1
    :cond_0
    sget-object v3, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    sget v3, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 6
    new-instance v4, Ln3/k/i/c$a;

    invoke-direct {v4, v3, v2}, Ln3/k/i/c$a;-><init>(Landroid/content/ClipData;I)V

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 7
    :goto_1
    iput v0, v4, Ln3/k/i/c$a;->c:I

    .line 8
    new-instance v0, Ln3/k/i/c;

    invoke-direct {v0, v4}, Ln3/k/i/c;-><init>(Ln3/k/i/c$a;)V

    .line 9
    invoke-static {p0, v0}, Ln3/k/i/s;->l(Landroid/view/View;Ln3/k/i/c;)Ln3/k/i/c;

    :cond_4
    move v0, v2

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    return v2

    .line 10
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/f/c;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ln3/b/f/c;->f(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->N1(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/c;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:Ln3/b/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/f/c;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:Ln3/b/f/q;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Ln3/b/f/q;->f(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->c:Ln3/b/f/p;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, v0, Ln3/b/f/p;->b:Landroid/view/textclassifier/TextClassifier;

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
