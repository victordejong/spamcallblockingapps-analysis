.class public final Le/a/d/w/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/j/c;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Le/a/d/c0/z1/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:I

.field public final c:Le/a/d/c0/z1/i;

.field public final synthetic d:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/c0/z1/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/w/j/f;->d:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/w/j/f;->c:Le/a/d/c0/z1/i;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/d/w/j/f;->a:Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {p2}, Le/a/d/c0/z1/d;->a()Lq3/a/x2/i1;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, p2, v0}, Le/a/p5/s0/g;->l(Lq3/a/x2/f;Ljava/util/Set;I)Lq3/a/x2/f;

    move-result-object p1

    .line 6
    new-instance v0, Le/a/d/w/j/d;

    invoke-direct {v0, p1}, Le/a/d/w/j/d;-><init>(Lq3/a/x2/f;)V

    .line 7
    new-instance p1, Le/a/d/w/j/e;

    invoke-direct {p1, p0, p2}, Le/a/d/w/j/e;-><init>(Le/a/d/w/j/f;Ls1/w/d;)V

    .line 8
    new-instance p2, Lq3/a/x2/u0;

    invoke-direct {p2, v0, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 9
    invoke-static {p2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public f(Le/a/d/b0/a;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/b0/a;",
            ")",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/w/j/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "peerIdCallMap.values"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ls1/k;

    .line 6
    iget-object v5, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 8
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v3, Le/a/d/c0/z1/e;

    .line 10
    iget-object v6, p0, Le/a/d/w/j/f;->c:Le/a/d/c0/z1/i;

    .line 11
    iget v3, v3, Le/a/d/c0/z1/e;->a:I

    .line 12
    invoke-interface {v6, v3}, Le/a/d/c0/z1/i;->s(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v6, Le/a/d/c0/x0;

    invoke-direct {v6, v3, v4, v5}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    .line 14
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "History is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/x0;

    .line 18
    iget-object v5, v5, Le/a/d/c0/x0;->a:Ljava/lang/String;

    .line 19
    iget-object v6, p1, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 20
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v4

    :goto_2
    if-nez v0, :cond_5

    .line 21
    iget-object p1, p1, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 22
    new-instance v0, Le/a/d/c0/x0;

    invoke-direct {v0, p1, v4, v4}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    .line 23
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 26
    check-cast v2, Le/a/d/c0/x0;

    .line 27
    iget v4, v2, Le/a/d/c0/x0;->c:I

    add-int/2addr v4, v3

    .line 28
    iget-object v5, v2, Le/a/d/c0/x0;->a:Ljava/lang/String;

    iget v2, v2, Le/a/d/c0/x0;->b:I

    .line 29
    new-instance v6, Le/a/d/c0/x0;

    invoke-direct {v6, v5, v2, v4}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    .line 30
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {p1, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/w/j/f;->d:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
