.class public final Ls1/a/a/a/v0/k/b/g0/d$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$f;->b:Ls1/a/a/a/v0/k/b/g0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$f;->b:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/e/c;->m:Ljava/util/List;

    const-string v2, "classProto.constructorList"

    .line 4
    invoke-static {v1, v2}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ls1/a/a/a/v0/e/d;

    .line 6
    sget-object v6, Ls1/a/a/a/v0/e/z/b;->l:Ls1/a/a/a/v0/e/z/b$b;

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v4, v5, Ls1/a/a/a/v0/e/d;->d:I

    const-string v5, "Flags.IS_SECONDARY.get(it.flags)"

    .line 8
    invoke-static {v6, v4, v5}, Le/d/c/a/a;->b1(Ls1/a/a/a/v0/e/z/b$b;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ls1/a/a/a/v0/e/d;

    .line 12
    iget-object v5, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 13
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 14
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ls1/a/a/a/v0/k/b/v;->h(Ls1/a/a/a/v0/e/d;Z)Ls1/a/a/a/v0/b/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/d;->z()Ls1/a/a/a/v0/b/d;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 16
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 17
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 18
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->o:Ls1/a/a/a/v0/b/g1/a;

    .line 19
    invoke-interface {v2, v0}, Ls1/a/a/a/v0/b/g1/a;->b(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;

    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
