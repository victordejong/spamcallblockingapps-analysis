.class public Le/k/a/c/d0/z/a;
.super Le/k/a/c/d0/z/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/w;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/k/a/c/d0/z/h;-><init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/d0/w;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p7}, Le/k/a/c/d0/z/h;-><init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Le/k/a/c/d0/z/h;->o0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 4
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    return-object p1

    .line 5
    :cond_1
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p2, v0, p3, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZLjava/util/Collection;)V

    return-object p2
.end method

.method public p0(Le/k/a/c/g;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public r0(Le/k/a/c/j;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/r;Ljava/lang/Boolean;)Le/k/a/c/d0/z/h;
    .locals 9

    .line 1
    new-instance v8, Le/k/a/c/d0/z/a;

    iget-object v1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    iget-object v4, p0, Le/k/a/c/d0/z/h;->j:Le/k/a/c/d0/w;

    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Le/k/a/c/d0/z/a;-><init>(Le/k/a/c/i;Le/k/a/c/j;Le/k/a/c/j0/e;Le/k/a/c/d0/w;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    return-object v8
.end method
