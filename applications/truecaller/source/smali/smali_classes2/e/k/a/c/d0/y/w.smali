.class public Le/k/a/c/d0/y/w;
.super Le/k/a/c/d0/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/y/w$a;
    }
.end annotation


# instance fields
.field public final o:Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/u;Le/k/a/c/g0/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/w;Le/k/a/c/j;Le/k/a/c/d0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/y/w;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    .line 5
    iget-object p2, p1, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    iput-object p2, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    .line 6
    iget-object p1, p1, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

    iput-object p1, p0, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/y/w;Le/k/a/c/v;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/v;)V

    .line 8
    iget-object p2, p1, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    iput-object p2, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    .line 9
    iget-object p1, p1, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

    iput-object p1, p0, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

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
    iget-object v0, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(Le/k/a/c/v;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/y/w;

    invoke-direct {v0, p0, p1}, Le/k/a/c/d0/y/w;-><init>(Le/k/a/c/d0/y/w;Le/k/a/c/v;)V

    return-object v0
.end method

.method public E(Le/k/a/c/d0/r;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/y/w;

    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/d0/y/w;-><init>(Le/k/a/c/d0/y/w;Le/k/a/c/j;Le/k/a/c/d0/r;)V

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
    new-instance v0, Le/k/a/c/d0/y/w;

    invoke-direct {v0, p0, p1, v1}, Le/k/a/c/d0/y/w;-><init>(Le/k/a/c/d0/y/w;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0}, Le/k/a/c/d0/u;->c()Le/k/a/c/g0/i;

    move-result-object v0

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
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/y/w;->j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

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
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p3, p2}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Le/k/a/c/d0/v; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->l()Le/k/a/c/d0/y/v;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p2, Le/k/a/c/d0/v;->d:Le/k/a/c/d0/y/c0;

    .line 5
    new-instance v0, Le/k/a/c/d0/y/w$a;

    iget-object v1, p0, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    .line 6
    iget-object v1, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 7
    invoke-direct {v0, p0, p2, v1, p3}, Le/k/a/c/d0/y/w$a;-><init>(Le/k/a/c/d0/y/w;Le/k/a/c/d0/v;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Le/k/a/c/d0/y/c0;->a(Le/k/a/c/d0/y/c0$a;)V

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    new-instance p3, Le/k/a/c/k;

    const-string v0, "Unresolved forward reference but no identity info"

    invoke-direct {p3, p1, v0, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    throw p3
.end method

.method public l(Le/k/a/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/d0/u;->l(Le/k/a/c/f;)V

    :cond_0
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0}, Le/k/a/c/d0/u;->m()I

    move-result v0

    return v0
.end method

.method public z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/w;->o:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
