.class public final Le/a/a/c/k8/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k8/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/k8/c;


# direct methods
.method public constructor <init>(Le/a/a/c/k8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/k8/c$c;->a:Le/a/a/c/k8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c9(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln3/b/e/a;->f()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    iget-object v0, p0, Le/a/a/c/k8/c$c;->a:Le/a/a/c/k8/c;

    .line 3
    iput-object p1, v0, Le/a/a/c/k8/c;->e:Ln3/b/e/a;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04068f

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    .line 5
    iget-object v0, p0, Le/a/a/c/k8/c$c;->a:Le/a/a/c/k8/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04068d

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v2

    invoke-static {v1, v2}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ls1/u/z;

    invoke-virtual {v3}, Ls1/u/z;->a()I

    move-result v3

    .line 9
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    const-string v2, "it"

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Le/a/p5/s0/f;->e(Landroid/view/MenuItem;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/a/c/k8/c$c;->a:Le/a/a/c/k8/c;

    invoke-virtual {p2}, Le/a/a/c/k8/c;->PA()Le/a/a/c/k8/m;

    move-result-object p2

    invoke-interface {p2}, Le/a/a/c/k8/l;->R()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/b/e/a;->o(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menuItem"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/c/k8/c$c;->a:Le/a/a/c/k8/c;

    invoke-virtual {p1}, Le/a/a/c/k8/c;->PA()Le/a/a/c/k8/m;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/a/c/k8/l;->d(I)Z

    move-result p1

    return p1
.end method

.method public zn(Ln3/b/e/a;)V
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/c/k8/c$c;->a:Le/a/a/c/k8/c;

    invoke-virtual {p1}, Le/a/a/c/k8/c;->PA()Le/a/a/c/k8/m;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/c/k8/l;->O()V

    return-void
.end method
