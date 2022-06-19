.class public final Le/a/o/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-static {v0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->g1(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V

    .line 2
    iget-object v0, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {v0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getCustomTextInputLayoutCallback()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;->T(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-static {v0}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->f1(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)Le/a/o/o/o;

    move-result-object v0

    iget-object v0, v0, Le/a/o/o/o;->c:Landroid/widget/TextView;

    const-string v1, "binding.txtCounter"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4
    sget v2, Lcom/truecaller/contextcall/R$string;->context_call_custom_message_counter:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 5
    iget-object v4, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/contextcall/R$integer;->context_call_custom_message_max_length:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {p2}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getCustomTextInputLayoutCallback()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;->T(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/o/b/a/g;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {p2}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getCustomTextInputLayoutCallback()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;->T(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
