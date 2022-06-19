.class public abstract Le/k/a/c/d0/z/y;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/b0<",
        "TT;>;",
        "Le/k/a/c/d0/i;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/i;

.field public final e:Le/k/a/c/d0/w;

.field public final f:Le/k/a/c/j0/e;

.field public final g:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Le/k/a/c/i;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/z/y;->e:Le/k/a/c/d0/w;

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/y;->d:Le/k/a/c/i;

    .line 4
    iput-object p4, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 5
    iput-object p3, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/y;->d:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->p()Le/k/a/c/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/z/y;->d:Le/k/a/c/i;

    invoke-virtual {v1}, Le/k/a/c/i;->p()Le/k/a/c/i;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p2}, Le/k/a/c/j0/e;->f(Le/k/a/c/d;)Le/k/a/c/j0/e;

    move-result-object v0

    .line 6
    :cond_1
    iget-object p2, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-ne v0, p2, :cond_2

    return-object p0

    .line 7
    :cond_2
    move-object p2, p0

    check-cast p2, Le/k/a/c/d0/z/e;

    .line 8
    new-instance v1, Le/k/a/c/d0/z/e;

    iget-object v2, p2, Le/k/a/c/d0/z/y;->d:Le/k/a/c/i;

    iget-object p2, p2, Le/k/a/c/d0/z/y;->e:Le/k/a/c/d0/w;

    invoke-direct {v1, v2, p2, v0, p1}, Le/k/a/c/d0/z/e;-><init>(Le/k/a/c/i;Le/k/a/c/d0/w;Le/k/a/c/j0/e;Le/k/a/c/j;)V

    return-object v1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->e:Le/k/a/c/d0/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/y;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 5
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 6
    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :goto_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 2
    iget-object v1, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/c/j;->p(Le/k/a/c/f;)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object p3, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-nez p3, :cond_1

    iget-object p3, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 8
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    :goto_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 11
    :cond_2
    iget-object v1, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-nez v0, :cond_4

    iget-object v0, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 13
    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    .line 14
    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    :goto_2
    check-cast p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p3
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p3, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, p3}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p3, p0, Le/k/a/c/d0/z/y;->f:Le/k/a/c/j0/e;

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/y;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public i()Le/k/a/c/n0/a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/n0/a;->c:Le/k/a/c/n0/a;

    return-object v0
.end method

.method public i0()Le/k/a/c/d0/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->e:Le/k/a/c/d0/w;

    return-object v0
.end method

.method public j0()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->d:Le/k/a/c/i;

    return-object v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/y;->g:Le/k/a/c/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
