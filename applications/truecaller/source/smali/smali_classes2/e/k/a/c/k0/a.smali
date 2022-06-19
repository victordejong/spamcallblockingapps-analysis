.class public Le/k/a/c/k0/a;
.super Le/k/a/c/k0/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/k0/f<",
        "Le/k/a/c/k0/a;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/k0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/k0/f;-><init>(Le/k/a/c/k0/l;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public N(Le/k/a/c/l;)Le/k/a/c/k0/a;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k0/f;->M()Le/k/a/c/k0/q;

    sget-object p1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    return-object v0
.end method

.method public b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    .line 2
    invoke-virtual {p3, p0, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 3
    invoke-virtual {p3, p1, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l;

    .line 5
    check-cast v2, Le/k/a/c/k0/b;

    invoke-virtual {v2, p1, p2}, Le/k/a/c/k0/b;->c(Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p3, p1, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-virtual {p1, p0, v1}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/l;

    .line 5
    check-cast v3, Le/k/a/c/k0/b;

    invoke-virtual {v3, p1, p2}, Le/k/a/c/k0/b;->c(Le/k/a/b/g;Le/k/a/c/a0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/g;->p0()V

    return-void
.end method

.method public d(Le/k/a/c/a0;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    instance-of v1, p1, Le/k/a/c/k0/a;

    if-eqz v1, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    check-cast p1, Le/k/a/c/k0/a;

    iget-object p1, p1, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/String;)Le/k/a/c/l;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public v()Le/k/a/c/k0/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/k0/m;->a:Le/k/a/c/k0/m;

    return-object v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
