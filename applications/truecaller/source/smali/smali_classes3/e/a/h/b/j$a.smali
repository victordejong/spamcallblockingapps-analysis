.class public final Le/a/h/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/j;


# direct methods
.method public constructor <init>(Le/a/h/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c9(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    invoke-virtual {v0}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h/b/f;->Vb(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ln3/b/e/a;->f()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    iput-object p2, p1, Ln3/b/e/a;->a:Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    .line 7
    iput-object p1, p2, Le/a/h/b/j;->m:Ln3/b/e/a;

    .line 8
    invoke-virtual {p2}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object p1

    invoke-interface {p1, v1}, Le/a/h/b/f;->sa(I)V

    return v1
.end method

.method public gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    invoke-virtual {v0}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h/b/f;->Dd(I)Ljava/lang/String;

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

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Ls1/u/z;

    invoke-virtual {v2}, Ls1/u/z;->a()I

    move-result v2

    .line 5
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    invoke-virtual {v0}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/h/b/f;->V8(II)Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    return v1
.end method

.method public sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menuItem"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    invoke-virtual {p1}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Le/a/h/b/f;->i8(II)Z

    move-result p1

    return p1
.end method

.method public zn(Ln3/b/e/a;)V
    .locals 1

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/b/j$a;->a:Le/a/h/b/j;

    invoke-virtual {p1}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/h/b/f;->ri(I)V

    return-void
.end method
