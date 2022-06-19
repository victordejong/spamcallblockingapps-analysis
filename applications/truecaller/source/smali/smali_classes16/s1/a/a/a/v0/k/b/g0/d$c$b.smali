.class public final Ls1/a/a/a/v0/k/b/g0/d$c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d$c;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ls1/a/a/a/v0/f/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$c$b;->b:Ls1/a/a/a/v0/k/b/g0/d$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$c$b;->b:Ls1/a/a/a/v0/k/b/g0/d$c;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 5
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/d;->k:Ls1/a/a/a/v0/k/b/g0/d$b;

    .line 6
    invoke-virtual {v2}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/m/e0;

    .line 8
    invoke-virtual {v3}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v5, v5, v4, v5}, Ls1/a/a/a/v0/f/d;->m1(Ls1/a/a/a/v0/j/y/k;Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/k;

    .line 9
    instance-of v5, v4, Ls1/a/a/a/v0/b/q0;

    if-nez v5, :cond_2

    instance-of v5, v4, Ls1/a/a/a/v0/b/k0;

    if-eqz v5, :cond_1

    .line 10
    :cond_2
    invoke-interface {v4}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 12
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 13
    iget-object v2, v2, Ls1/a/a/a/v0/e/c;->n:Ljava/util/List;

    const-string v3, "classProto.functionList"

    .line 14
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Ls1/a/a/a/v0/e/i;

    .line 17
    iget-object v5, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 18
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 19
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 20
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v3, v3, Ls1/a/a/a/v0/e/i;->f:I

    .line 22
    invoke-static {v5, v3}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_4
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 24
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 25
    iget-object v2, v2, Ls1/a/a/a/v0/e/c;->o:Ljava/util/List;

    const-string v3, "classProto.propertyList"

    .line 26
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Ls1/a/a/a/v0/e/n;

    .line 29
    iget-object v5, v0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 30
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 31
    iget-object v5, v5, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 32
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget v3, v3, Ls1/a/a/a/v0/e/n;->f:I

    .line 34
    invoke-static {v5, v3}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_5
    invoke-static {v1, v1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
