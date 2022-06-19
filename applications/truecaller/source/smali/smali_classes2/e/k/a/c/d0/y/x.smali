.class public final Le/k/a/c/d0/y/x;
.super Le/k/a/c/d0/u;
.source "SourceFile"


# instance fields
.field public final o:Le/k/a/c/d0/y/v;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/v;Le/k/a/c/u;)V
    .locals 3

    .line 1
    iget-object v0, p1, Le/k/a/c/d0/y/v;->b:Le/k/a/c/v;

    .line 2
    iget-object v1, p1, Le/k/a/c/d0/y/v;->a:Le/k/a/c/i;

    .line 3
    iget-object v2, p1, Le/k/a/c/d0/y/v;->e:Le/k/a/c/j;

    .line 4
    invoke-direct {p0, v0, v1, p2, v2}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/u;Le/k/a/c/j;)V

    .line 5
    iput-object p1, p0, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/x;Le/k/a/c/j;Le/k/a/c/d0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/y/x;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    .line 7
    iget-object p1, p1, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    iput-object p1, p0, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/x;Le/k/a/c/v;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/v;)V

    .line 9
    iget-object p1, p1, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    iput-object p1, p0, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    iget-object v0, v0, Le/k/a/c/d0/y/v;->f:Le/k/a/c/d0/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not call set() on ObjectIdProperty that has no SettableBeanProperty"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Le/k/a/c/v;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/y/x;

    invoke-direct {v0, p0, p1}, Le/k/a/c/d0/y/x;-><init>(Le/k/a/c/d0/y/x;Le/k/a/c/v;)V

    return-object v0
.end method

.method public E(Le/k/a/c/d0/r;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/x;

    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/d0/y/x;-><init>(Le/k/a/c/d0/y/x;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public G(Le/k/a/c/j;)Le/k/a/c/d0/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j<",
            "*>;)",
            "Le/k/a/c/d0/u;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    .line 3
    :cond_1
    new-instance v0, Le/k/a/c/d0/y/x;

    invoke-direct {v0, p0, p1, v1}, Le/k/a/c/d0/y/x;-><init>(Le/k/a/c/d0/y/x;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/y/x;->j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    iget-object v1, v0, Le/k/a/c/d0/y/v;->c:Le/k/a/a/k0;

    iget-object v0, v0, Le/k/a/c/d0/y/v;->d:Le/k/a/a/n0;

    invoke-virtual {p2, p1, v1, v0}, Le/k/a/c/g;->w(Ljava/lang/Object;Le/k/a/a/k0;Le/k/a/a/n0;)Le/k/a/c/d0/y/c0;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p3}, Le/k/a/c/d0/y/c0;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Le/k/a/c/d0/y/x;->o:Le/k/a/c/d0/y/v;

    iget-object p2, p2, Le/k/a/c/d0/y/v;->f:Le/k/a/c/d0/u;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, p3, p1}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method public z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/y/x;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
