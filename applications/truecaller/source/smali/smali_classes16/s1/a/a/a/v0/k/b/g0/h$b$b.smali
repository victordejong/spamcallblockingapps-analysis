.class public final Ls1/a/a/a/v0/k/b/g0/h$b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/h$b;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/b/k0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$b$b;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$b$b;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/h$b;->c:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/h$b;->o:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h$b$b;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    .line 4
    iget-object v3, v1, Ls1/a/a/a/v0/k/b/g0/h$b;->n:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v3}, Ls1/a/a/a/v0/k/b/g0/h;->p()Ljava/util/Set;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Ls1/a/a/a/v0/f/e;

    .line 8
    iget-object v6, v1, Ls1/a/a/a/v0/k/b/g0/h$b;->c:Ls1/a/a/a/v0/l/i;

    sget-object v7, Ls1/a/a/a/v0/k/b/g0/h$b;->o:[Ls1/a/l;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 9
    iget-object v7, v1, Ls1/a/a/a/v0/k/b/g0/h$b;->n:Ls1/a/a/a/v0/k/b/g0/h;

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ls1/a/a/a/v0/b/k;

    .line 12
    invoke-interface {v10}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v10

    invoke-static {v10, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 14
    invoke-virtual {v7, v5, v8}, Ls1/a/a/a/v0/k/b/g0/h;->k(Ls1/a/a/a/v0/f/e;Ljava/util/List;)V

    .line 15
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v8, v6, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 16
    invoke-static {v4, v5}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v0, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
