.class public final Le/a/k/a/g/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/q;->a:Le/a/k/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/k/a/g/q;->a:Le/a/k/a/g/f;

    invoke-virtual {p1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object p1

    check-cast p1, Le/a/k/a/g/y;

    .line 2
    invoke-virtual {p1}, Le/a/k/a/g/y;->Hj()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/k/a/g/x;->Yl()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object v2

    invoke-interface {v2}, Le/a/k/c/h;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object v0

    invoke-interface {v0}, Le/a/k/c/h;->l()V

    .line 6
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Le/a/k/a/g/x;->Lq(Z)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object v2

    invoke-interface {v2}, Le/a/k/c/h;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/g/x;

    if-eqz v2, :cond_4

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0}, Le/a/k/a/g/x;->Lq(Z)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Le/a/k/a/g/x;->Lq(Z)V

    :cond_4
    :goto_1
    const/4 v0, 0x3

    .line 10
    invoke-static {p1, v1, v1, v0}, Le/a/k/a/g/y;->nk(Le/a/k/a/g/y;ZZI)V

    :goto_2
    return-void
.end method
