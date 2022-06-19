.class public final Ll1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll1;->a:I

    iput-object p2, p0, Ll1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Ll1;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Ll1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/h;

    invoke-static {p1, v0}, Le/a/t/a/h;->j(Le/a/t/a/h;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Ll1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Le/a/t/a/h;->j(Le/a/t/a/h;I)V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Ll1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/h;

    invoke-virtual {p1}, Le/a/t/a/h;->dismiss()V

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Ll1;->b:Ljava/lang/Object;

    check-cast p1, Le/a/t/a/h;

    .line 6
    iget v1, p1, Le/a/t/a/h;->j:I

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p1, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    iget-object p1, p1, Le/a/t/a/h;->h:Le/a/t/a/a/d;

    invoke-virtual {p1}, Le/a/t/a/a/d;->getItemCount()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/t/a/a/g;->U5(I)V

    goto :goto_0

    .line 8
    :cond_5
    new-instance v0, Le/a/t/a/x/e;

    iget-object v1, p1, Le/a/t/a/h;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "editText.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Le/a/t/a/h;->k:Le/a/t/a/o;

    invoke-direct {v0, v1, v2}, Le/a/t/a/x/e;-><init>(Landroid/content/Context;Le/a/t/a/o;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 10
    invoke-virtual {p1}, Le/a/t/a/h;->dismiss()V

    :goto_0
    return-void
.end method
