.class public Le/k/a/c/l0/t/c;
.super Le/k/a/c/l0/t/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/f0<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/c;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/c;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/n0/s;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p7}, Le/k/a/c/l0/t/f0;-><init>(Le/k/a/c/l0/t/f0;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/m0/j;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/m0/j;",
            "Z",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Le/k/a/c/l0/t/f0;-><init>(Le/k/a/c/m0/j;Le/k/a/c/j0/h;Le/k/a/c/n;)V

    return-void
.end method


# virtual methods
.method public q(Ljava/lang/Object;Z)Le/k/a/c/l0/t/f0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Le/k/a/c/l0/t/f0<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Le/k/a/c/l0/t/c;

    iget-object v2, p0, Le/k/a/c/l0/t/f0;->d:Le/k/a/c/d;

    iget-object v3, p0, Le/k/a/c/l0/t/f0;->e:Le/k/a/c/j0/h;

    iget-object v4, p0, Le/k/a/c/l0/t/f0;->f:Le/k/a/c/n;

    iget-object v5, p0, Le/k/a/c/l0/t/f0;->g:Le/k/a/c/n0/s;

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Le/k/a/c/l0/t/c;-><init>(Le/k/a/c/l0/t/c;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;Ljava/lang/Object;Z)V

    return-object v8
.end method

.method public r(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;)Le/k/a/c/l0/t/f0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/n0/s;",
            ")",
            "Le/k/a/c/l0/t/f0<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Le/k/a/c/l0/t/c;

    iget-object v6, p0, Le/k/a/c/l0/t/f0;->i:Ljava/lang/Object;

    iget-boolean v7, p0, Le/k/a/c/l0/t/f0;->j:Z

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Le/k/a/c/l0/t/c;-><init>(Le/k/a/c/l0/t/c;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n0/s;Ljava/lang/Object;Z)V

    return-object v8
.end method
