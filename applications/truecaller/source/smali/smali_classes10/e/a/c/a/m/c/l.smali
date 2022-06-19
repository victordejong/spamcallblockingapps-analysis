.class public final Le/a/c/a/m/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/i;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/l;->a:Le/a/c/a/m/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/l;->a:Le/a/c/a/m/c/i;

    .line 2
    iget-object p1, p1, Le/a/c/a/m/c/i;->f:Le/a/c/a/m/b/u;

    .line 3
    iget-object p1, p1, Le/a/c/a/m/b/u;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/c/a/m/b/l;

    .line 6
    iget-boolean v2, v2, Le/a/c/a/m/b/l;->b:Z

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/c/a/m/c/l;->a:Le/a/c/a/m/c/i;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Please select some items before sending feedback"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/c/a/m/c/l;->a:Le/a/c/a/m/c/i;

    .line 10
    iget-object v1, p1, Le/a/c/a/m/c/i;->e:Lq3/a/i0;

    .line 11
    iget-object v2, p1, Le/a/c/a/m/c/i;->b:Ls1/w/f;

    const/4 p1, 0x0

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 12
    new-instance v4, Le/a/c/a/m/c/l$a;

    invoke-direct {v4, p0, v0, p1}, Le/a/c/a/m/c/l$a;-><init>(Le/a/c/a/m/c/l;Ljava/util/List;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_1
    return-void

    :cond_3
    const-string v0, "ioContext"

    .line 13
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1
.end method
