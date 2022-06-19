.class public final Le/a/r5/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/v;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r5/v;


# direct methods
.method public constructor <init>(Le/a/r5/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c9(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 5

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln3/b/e/a;->f()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0036

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    iget-object v0, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f04068f

    invoke-static {v0, v1}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "$this$tintMenuItems"

    .line 3
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const-string v4, "getItem(i)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    .line 7
    iput-object p1, p2, Le/a/r5/v;->m:Ln3/b/e/a;

    const/4 p1, 0x1

    return p1
.end method

.method public gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    invoke-virtual {v0}, Le/a/r5/v;->QA()Le/a/r5/f0;

    move-result-object v0

    invoke-interface {v0}, Le/a/r5/a;->R()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ln3/b/e/a;->o(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    invoke-static {p1, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ls1/u/z;

    invoke-virtual {v1}, Ls1/u/z;->a()I

    move-result v1

    .line 5
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    const-string v0, "it"

    .line 7
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    invoke-virtual {v0}, Le/a/r5/v;->QA()Le/a/r5/f0;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/r5/a;->t7(I)Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
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
    iget-object p1, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    invoke-virtual {p1}, Le/a/r5/v;->QA()Le/a/r5/f0;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/r5/a;->d(I)Z

    move-result p1

    return p1
.end method

.method public zn(Ln3/b/e/a;)V
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/r5/v$a;->a:Le/a/r5/v;

    invoke-virtual {p1}, Le/a/r5/v;->QA()Le/a/r5/f0;

    move-result-object p1

    invoke-interface {p1}, Le/a/r5/a;->O()V

    return-void
.end method
