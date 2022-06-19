.class public Le/m/a/g/y/h$a;
.super Le/m/a/g/o/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/y/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/y/h;


# direct methods
.method public constructor <init>(Le/m/a/g/y/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/y/h$a;->a:Le/m/a/g/y/h;

    invoke-direct {p0}, Le/m/a/g/o/m;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/y/h$a;->a:Le/m/a/g/y/h;

    iget-object p1, p1, Le/m/a/g/y/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Le/m/a/g/y/h;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/m/a/g/y/h$a;->a:Le/m/a/g/y/h;

    .line 4
    iget-object v0, v0, Le/m/a/g/y/h;->n:Landroid/view/accessibility/AccessibilityManager;

    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Le/m/a/g/y/h;->f(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/g/y/h$a;->a:Le/m/a/g/y/h;

    iget-object v0, v0, Le/m/a/g/y/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 9
    :cond_0
    new-instance v0, Le/m/a/g/y/h$a$a;

    invoke-direct {v0, p0, p1}, Le/m/a/g/y/h$a$a;-><init>(Le/m/a/g/y/h$a;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
