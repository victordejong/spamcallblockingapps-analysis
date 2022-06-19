.class public Le/k/a/c/d0/z/e;
.super Le/k/a/c/d0/z/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/y<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/d0/w;Le/k/a/c/j0/e;Le/k/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/d0/w;",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/k/a/c/d0/z/y;-><init>(Le/k/a/c/i;Le/k/a/c/d0/w;Le/k/a/c/j0/e;Le/k/a/c/j;)V

    return-void
.end method


# virtual methods
.method public c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
