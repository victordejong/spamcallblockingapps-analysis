.class public final synthetic Ln3/y/b/a/t0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Ln3/y/b/a/t0/j;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/i;->a:Ln3/y/b/a/t0/j;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget-object v0, p0, Ln3/y/b/a/t0/i;->a:Ln3/y/b/a/t0/j;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 5
    check-cast p1, Ljava/util/Set;

    .line 6
    invoke-virtual {v0, p1}, Ln3/y/b/a/t0/j;->A(Ljava/util/Set;)V

    goto/16 :goto_3

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {v0}, Ln3/y/b/a/t0/j;->G()V

    goto/16 :goto_3

    .line 9
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 11
    check-cast p1, Ln3/y/b/a/t0/j$f;

    .line 12
    iget-object v1, p1, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/b/a/t0/l0;

    iput-object v1, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 13
    iget-object p1, p1, Ln3/y/b/a/t0/j$f;->c:Ln3/y/b/a/t0/j$d;

    invoke-virtual {v0, p1}, Ln3/y/b/a/t0/j;->F(Ln3/y/b/a/t0/j$d;)V

    goto/16 :goto_3

    .line 14
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 16
    check-cast p1, Ln3/y/b/a/t0/j$f;

    .line 17
    iget-object v1, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    iget v3, p1, Ln3/y/b/a/t0/j$f;->a:I

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v3, v4}, Ln3/y/b/a/t0/l0;->g(II)Ln3/y/b/a/t0/l0;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 18
    iget-object v3, p1, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3, v2}, Ln3/y/b/a/t0/l0;->h(II)Ln3/y/b/a/t0/l0;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 19
    iget v1, p1, Ln3/y/b/a/t0/j$f;->a:I

    iget-object v3, p1, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 20
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 21
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 22
    iget-object v6, v0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/b/a/t0/j$e;

    iget v6, v6, Ln3/y/b/a/t0/j$e;->e:I

    .line 23
    iget-object v7, v0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/j$e;

    invoke-interface {v7, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v4, v5, :cond_4

    .line 24
    iget-object v1, v0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/j$e;

    .line 25
    iput v4, v1, Ln3/y/b/a/t0/j$e;->d:I

    .line 26
    iput v6, v1, Ln3/y/b/a/t0/j$e;->e:I

    .line 27
    iget-object v1, v1, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    .line 28
    iget-object v1, v1, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 29
    invoke-virtual {v1}, Ln3/y/b/a/t0/o;->o()I

    move-result v1

    add-int/2addr v6, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_4
    iget-object p1, p1, Ln3/y/b/a/t0/j$f;->c:Ln3/y/b/a/t0/j$d;

    invoke-virtual {v0, p1}, Ln3/y/b/a/t0/j;->F(Ln3/y/b/a/t0/j$d;)V

    goto/16 :goto_3

    .line 31
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 33
    check-cast p1, Ln3/y/b/a/t0/j$f;

    .line 34
    iget v1, p1, Ln3/y/b/a/t0/j$f;->a:I

    .line 35
    iget-object v3, p1, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v1, :cond_6

    .line 36
    iget-object v4, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    invoke-interface {v4}, Ln3/y/b/a/t0/l0;->a()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 37
    iget-object v4, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    invoke-interface {v4}, Ln3/y/b/a/t0/l0;->e()Ln3/y/b/a/t0/l0;

    move-result-object v4

    iput-object v4, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    goto :goto_1

    .line 38
    :cond_6
    iget-object v4, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    invoke-interface {v4, v1, v3}, Ln3/y/b/a/t0/l0;->g(II)Ln3/y/b/a/t0/l0;

    move-result-object v4

    iput-object v4, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    :goto_1
    sub-int/2addr v3, v2

    :goto_2
    if-lt v3, v1, :cond_7

    .line 39
    iget-object v4, v0, Ln3/y/b/a/t0/j;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/t0/j$e;

    .line 40
    iget-object v5, v0, Ln3/y/b/a/t0/j;->n:Ljava/util/Map;

    iget-object v6, v4, Ln3/y/b/a/t0/j$e;->b:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v5, v4, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;

    .line 42
    iget-object v5, v5, Ln3/y/b/a/t0/r;->m:Ln3/y/b/a/t0/r$b;

    .line 43
    invoke-virtual {v5}, Ln3/y/b/a/t0/o;->o()I

    move-result v5

    neg-int v5, v5

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6, v5}, Ln3/y/b/a/t0/j;->y(III)V

    .line 44
    iput-boolean v2, v4, Ln3/y/b/a/t0/j$e;->f:Z

    .line 45
    invoke-virtual {v0, v4}, Ln3/y/b/a/t0/j;->C(Ln3/y/b/a/t0/j$e;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 46
    :cond_7
    iget-object p1, p1, Ln3/y/b/a/t0/j$f;->c:Ln3/y/b/a/t0/j$d;

    invoke-virtual {v0, p1}, Ln3/y/b/a/t0/j;->F(Ln3/y/b/a/t0/j$d;)V

    goto :goto_3

    .line 47
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 49
    check-cast p1, Ln3/y/b/a/t0/j$f;

    .line 50
    iget-object v1, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    iget v3, p1, Ln3/y/b/a/t0/j$f;->a:I

    iget-object v4, p1, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ln3/y/b/a/t0/l0;->h(II)Ln3/y/b/a/t0/l0;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/t0/j;->r:Ln3/y/b/a/t0/l0;

    .line 51
    iget v1, p1, Ln3/y/b/a/t0/j$f;->a:I

    iget-object v3, p1, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v0, v1, v3}, Ln3/y/b/a/t0/j;->w(ILjava/util/Collection;)V

    .line 52
    iget-object p1, p1, Ln3/y/b/a/t0/j$f;->c:Ln3/y/b/a/t0/j$d;

    invoke-virtual {v0, p1}, Ln3/y/b/a/t0/j;->F(Ln3/y/b/a/t0/j$d;)V

    :goto_3
    return v2
.end method
