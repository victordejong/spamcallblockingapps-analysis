.class public final Le/a/a/o/r/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/r/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/o/r/e;


# direct methods
.method public constructor <init>(Le/a/a/o/r/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/o/r/e$c;->a:Le/a/a/o/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c9(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln3/b/e/a;->f()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Le/a/a/o/r/e$c;->a:Le/a/a/o/r/e;

    .line 3
    iput-object p1, p2, Le/a/a/o/r/e;->i:Ln3/b/e/a;

    const/4 p1, 0x1

    return p1
.end method

.method public gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ls1/u/z;

    invoke-virtual {v1}, Ls1/u/z;->a()I

    move-result v1

    .line 4
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    const-string v0, "it"

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/o/r/e$c;->a:Le/a/a/o/r/e;

    invoke-virtual {v0}, Le/a/a/o/r/e;->RA()Le/a/a/o/r/g;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/o/r/g;->u(I)Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/o/r/e$c;->a:Le/a/a/o/r/e;

    invoke-virtual {p1}, Le/a/a/o/r/e;->RA()Le/a/a/o/r/g;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/a/o/r/g;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public zn(Ln3/b/e/a;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/o/r/e$c;->a:Le/a/a/o/r/e;

    invoke-virtual {p1}, Le/a/a/o/r/e;->RA()Le/a/a/o/r/g;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/o/r/g;->z()V

    .line 2
    iget-object p1, p0, Le/a/a/o/r/e$c;->a:Le/a/a/o/r/e;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le/a/a/o/r/e;->i:Ln3/b/e/a;

    return-void
.end method
