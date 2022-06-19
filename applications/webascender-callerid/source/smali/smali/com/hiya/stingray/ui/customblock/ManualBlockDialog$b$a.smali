.class Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-static {v1}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->t1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->z:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/y;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "block_entered_number"

    .line 4
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "entered_number"

    .line 5
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->a:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v5, v5, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object v5, v5, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->countryCodeEdit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v5, v5, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object v5, v5, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->z:Lh/a;

    invoke-interface {v5}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;->s(Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->b:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroidx/appcompat/app/g;->dismiss()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-static {v1}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->t1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;)Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->BEGINS_WITH:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    if-ne v1, v2, :cond_1

    const-string v1, "block_begins_with"

    .line 9
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "prefix_number"

    .line 10
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 11
    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->a:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object v4, v4, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object v4, v4, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->countryCodeEdit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;->s(Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->b:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroidx/appcompat/app/g;->dismiss()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    invoke-static {p1, v3}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->u1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;Z)V

    .line 14
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->numberEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b$a;->f:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$b;->c:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    iget-object p1, p1, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->A:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "add_to_block_list"

    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
