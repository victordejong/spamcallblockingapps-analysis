.class public Le/k/a/c/d0/y/q;
.super Le/k/a/c/d0/u$a;
.source "SourceFile"


# instance fields
.field public final p:Le/k/a/c/g0/i;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/u;Le/k/a/c/g0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/u$a;-><init>(Le/k/a/c/d0/u;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/y/q;->p:Le/k/a/c/g0/i;

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

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public I(Le/k/a/c/d0/u;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/q;

    iget-object v1, p0, Le/k/a/c/d0/y/q;->p:Le/k/a/c/g0/i;

    invoke-direct {v0, p1, v1}, Le/k/a/c/d0/y/q;-><init>(Le/k/a/c/d0/u;Le/k/a/c/g0/i;)V

    return-object v0
.end method

.method public i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/q;->p:Le/k/a/c/g0/i;

    invoke-virtual {v0, p3}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v1, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/d0/u;->k(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eq p1, v0, :cond_1

    .line 4
    iget-object p2, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
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
    iget-object v0, p0, Le/k/a/c/d0/y/q;->p:Le/k/a/c/g0/i;

    invoke-virtual {v0, p3}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v1, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/d0/u;->k(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method public z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u$a;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
