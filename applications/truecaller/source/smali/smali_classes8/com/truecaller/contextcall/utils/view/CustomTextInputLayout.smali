.class public final Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;,
        Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002&\'J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u0008J\r\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u00058F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR.\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001d\u0010!\u001a\u00020\u001c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "",
        "text",
        "setTextMessage",
        "(Ljava/lang/String;)V",
        "errorMessage",
        "M",
        "h1",
        "getMessage",
        "()Ljava/lang/String;",
        "message",
        "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;",
        "value",
        "u",
        "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;",
        "getCustomTextInputLayoutCallback",
        "()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;",
        "setCustomTextInputLayoutCallback",
        "(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;)V",
        "customTextInputLayoutCallback",
        "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;",
        "v",
        "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;",
        "inputState",
        "Le/a/o/o/o;",
        "t",
        "Ls1/g;",
        "getBinding",
        "()Le/a/o/o/o;",
        "binding",
        "",
        "getMessageLength",
        "()I",
        "messageLength",
        "a",
        "b",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Ls1/g;

.field public u:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

.field public v:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Le/a/o/b/a/e;

    invoke-direct {p2, p0}, Le/a/o/b/a/e;-><init>(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->t:Ls1/g;

    .line 4
    sget-object p2, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    iput-object p2, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->v:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/truecaller/contextcall/R$layout;->view_custom_text_input_context_call:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static final synthetic f1(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)Le/a/o/o/o;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object p0

    return-object p0
.end method

.method public static final g1(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->v:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    sget-object v1, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/truecaller/contextcall/R$color;->context_call_light_brand_blue:I

    .line 3
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v2

    .line 6
    iget-object v3, v2, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "etCustomMsg"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColor(I)V

    .line 7
    iget-object v3, v2, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v2, v2, Le/a/o/o/o;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iput-object v1, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->v:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    :goto_0
    return-void
.end method

.method private final getBinding()Le/a/o/o/o;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/o/o;

    return-object v0
.end method

.method private final getMessageLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final M(Ljava/lang/String;)V
    .locals 5

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->v:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    sget-object v1, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/truecaller/contextcall/R$color;->call_context_error_theme:I

    .line 3
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v2

    .line 6
    iget-object v3, v2, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "etCustomMsg"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColor(I)V

    .line 7
    iget-object v3, v2, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v3, v2, Le/a/o/o/o;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, v2, Le/a/o/o/o;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 10
    iput-object v1, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->v:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    return-void
.end method

.method public final getCustomTextInputLayoutCallback()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->u:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.etCustomMsg"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->c:Landroid/widget/TextView;

    const-string v1, "binding.txtCounter"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/contextcall/R$string;->context_call_custom_message_counter:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getMessageLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/contextcall/R$integer;->context_call_custom_message_max_length:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 7
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.etCustomMsg"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Le/a/o/b/a/g;

    invoke-direct {v2, p0}, Le/a/o/b/a/g;-><init>(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Le/a/o/b/a/f;

    invoke-direct {v1, p0}, Le/a/o/b/a/f;-><init>(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    return-void
.end method

.method public final setCustomTextInputLayoutCallback(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;->T(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->u:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

    return-void
.end method

.method public final setTextMessage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getBinding()Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "binding.etCustomMsg"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
