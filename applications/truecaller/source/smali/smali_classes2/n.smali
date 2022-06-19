.class public final Ln;
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

    iput p1, p0, Ln;->a:I

    iput-object p2, p0, Ln;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Ln;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Ln;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/i;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 2
    :cond_0
    throw v0

    .line 3
    :cond_1
    iget-object p1, p0, Ln;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/i;

    .line 4
    iget-object p1, p1, Le/a/c/a/e/a/i;->b:Le/a/c/h/f;

    const-string v1, "insightsSmsIntents"

    if-eqz p1, :cond_4

    .line 5
    invoke-interface {p1}, Le/a/c/h/f;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Ln;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/i;

    .line 7
    iget-object v2, p1, Le/a/c/a/e/a/i;->b:Le/a/c/h/f;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Le/a/c/h/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    iget-object v0, p0, Ln;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/e/a/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Ln;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/e/a/i;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 12
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
