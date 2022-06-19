.class public final Le/a/e/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/e/a/b$a;->a:I

    iput-object p2, p0, Le/a/e/a/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/e/a/b$a;->a:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1
    iget-object p1, p0, Le/a/e/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/a/b;

    .line 2
    iget-object v0, p1, Le/a/e/a/b;->e:Le/a/p4/b;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Le/a/e/a/b;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "customRepliesEdit"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/p4/b;->F2(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/e/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/a/b;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "qaMenuSettings"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    throw v1

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/e/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/a/b;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_4
    return-void
.end method
