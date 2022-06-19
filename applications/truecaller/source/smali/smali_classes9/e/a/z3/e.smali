.class public Le/a/z3/e;
.super Le/f/a/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/f/a/c;Le/f/a/o/h;Le/f/a/o/m;Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v4, Le/f/a/o/n;

    invoke-direct {v4}, Le/f/a/o/n;-><init>()V

    .line 2
    iget-object v5, p1, Le/f/a/c;->h:Le/f/a/o/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Le/f/a/i;-><init>(Le/f/a/c;Le/f/a/o/h;Le/f/a/o/m;Le/f/a/o/n;Le/f/a/o/d;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Integer;)Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/z3/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->T(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public B(Ljava/lang/String;)Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/z3/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 2
    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Le/f/a/h;
    .locals 3

    .line 1
    new-instance v0, Le/a/z3/d;

    iget-object v1, p0, Le/f/a/i;->a:Le/f/a/c;

    iget-object v2, p0, Le/f/a/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Le/a/z3/d;-><init>(Le/f/a/c;Le/f/a/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic f()Le/f/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public k()Le/f/a/h;
    .locals 1

    .line 1
    invoke-super {p0}, Le/f/a/i;->k()Le/f/a/h;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public l()Le/f/a/h;
    .locals 1

    .line 1
    invoke-super {p0}, Le/f/a/i;->l()Le/f/a/h;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public o(Landroid/graphics/drawable/Drawable;)Le/f/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->R(Landroid/graphics/drawable/Drawable;)Le/f/a/h;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public p(Landroid/net/Uri;)Le/f/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    .line 2
    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public q(Ljava/lang/Integer;)Le/f/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->T(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public r(Ljava/lang/String;)Le/f/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 2
    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public u(Le/f/a/r/h;)V
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/z3/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Le/f/a/i;->u(Le/f/a/r/h;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/a/z3/c;

    invoke-direct {v0}, Le/a/z3/c;-><init>()V

    invoke-virtual {v0, p1}, Le/a/z3/c;->K(Le/f/a/r/a;)Le/a/z3/c;

    move-result-object p1

    invoke-super {p0, p1}, Le/f/a/i;->u(Le/f/a/r/h;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized w(Le/f/a/r/h;)Le/a/z3/e;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    iget-object v0, p0, Le/f/a/i;->k:Le/f/a/r/h;

    invoke-virtual {v0, p1}, Le/f/a/r/a;->a(Le/f/a/r/a;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/r/h;

    iput-object p1, p0, Le/f/a/i;->k:Le/f/a/r/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 7
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public x()Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/z3/d<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le/f/a/i;->f()Le/f/a/h;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public y(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Le/a/z3/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->R(Landroid/graphics/drawable/Drawable;)Le/f/a/h;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public z(Landroid/net/Uri;)Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/z3/d<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    .line 2
    check-cast v0, Le/a/z3/d;

    return-object v0
.end method
