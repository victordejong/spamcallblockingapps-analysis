.class public final Le/k/a/c/l0/s/d;
.super Le/k/a/c/l0/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final u:Le/k/a/c/l0/c;

.field public final v:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/l0/c;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/c;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/c;-><init>(Le/k/a/c/l0/c;Le/k/a/b/w/i;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/s/d;->v:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public h(Le/k/a/c/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/c;->h(Le/k/a/c/n;)V

    return-void
.end method

.method public i(Le/k/a/c/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {v0, p1}, Le/k/a/c/l0/c;->i(Le/k/a/c/n;)V

    return-void
.end method

.method public j(Le/k/a/c/n0/s;)Le/k/a/c/l0/c;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/s/d;

    iget-object v1, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {v1, p1}, Le/k/a/c/l0/c;->j(Le/k/a/c/n0/s;)Le/k/a/c/l0/c;

    move-result-object p1

    iget-object v1, p0, Le/k/a/c/l0/s/d;->v:[Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Le/k/a/c/l0/s/d;-><init>(Le/k/a/c/l0/c;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public k(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/c/l0/s/d;->o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/l0/c;->k(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {p1, p2, p3}, Le/k/a/c/l0/c;->n(Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public l(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/c/l0/s/d;->o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/l0/c;->l(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/c/l0/s/d;->u:Le/k/a/c/l0/c;

    invoke-virtual {p1, p2}, Le/k/a/c/l0/c;->m(Le/k/a/b/g;)V

    return-void
.end method

.method public final o(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/s/d;->v:[Ljava/lang/Class;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2
    iget-object v4, p0, Le/k/a/c/l0/s/d;->v:[Ljava/lang/Class;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
