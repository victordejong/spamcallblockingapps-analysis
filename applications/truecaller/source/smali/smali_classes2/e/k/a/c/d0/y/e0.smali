.class public final Le/k/a/c/d0/y/e0;
.super Le/k/a/c/j;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/j<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/j0/e;

.field public final b:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/j0/e;Le/k/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/e;",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/e0;->a:Le/k/a/c/j0/e;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    return-void
.end method


# virtual methods
.method public c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0, p1}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    iget-object v1, p0, Le/k/a/c/d0/y/e0;->a:Le/k/a/c/j0/e;

    invoke-virtual {v0, p1, p2, v1}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0, p1}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->k()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->m()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object v0

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e0;->b:Le/k/a/c/j;

    invoke-virtual {v0, p1}, Le/k/a/c/j;->p(Le/k/a/c/f;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
