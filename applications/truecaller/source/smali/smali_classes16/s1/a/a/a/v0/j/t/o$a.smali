.class public final Ls1/a/a/a/v0/j/t/o$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/j/t/o;-><init>(JLs1/a/a/a/v0/b/a0;Ljava/util/Set;)V
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
        "Ls1/a/a/a/v0/m/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/j/t/o;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/t/o;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/t/o$a;->b:Ls1/a/a/a/v0/j/t/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ls1/a/a/a/v0/m/l0;

    .line 1
    iget-object v2, p0, Ls1/a/a/a/v0/j/t/o$a;->b:Ls1/a/a/a/v0/j/t/o;

    invoke-virtual {v2}, Ls1/a/a/a/v0/j/t/o;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v2

    const-string v3, "Comparable"

    .line 2
    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/a/g;->j(Ljava/lang/String;)Ls1/a/a/a/v0/b/e;

    move-result-object v2

    const-string v3, "builtIns.comparable"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    const-string v3, "builtIns.comparable.defaultType"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ls1/a/a/a/v0/m/a1;

    sget-object v4, Ls1/a/a/a/v0/m/j1;->d:Ls1/a/a/a/v0/m/j1;

    iget-object v5, p0, Ls1/a/a/a/v0/j/t/o$a;->b:Ls1/a/a/a/v0/j/t/o;

    .line 4
    iget-object v5, v5, Ls1/a/a/a/v0/j/t/o;->d:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-direct {v3, v4, v5}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/m/e0;)V

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Ls1/a/a/a/v0/f/d;->U2(Ls1/a/a/a/v0/m/l0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Ls1/a/a/a/v0/j/t/o$a;->b:Ls1/a/a/a/v0/j/t/o;

    .line 7
    iget-object v6, v2, Ls1/a/a/a/v0/j/t/o;->b:Ls1/a/a/a/v0/b/a0;

    const-string v7, "$this$allSignedLiteralTypes"

    .line 8
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Ls1/a/a/a/v0/m/l0;

    .line 9
    invoke-interface {v6}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v8

    invoke-virtual {v8}, Ls1/a/a/a/v0/a/g;->m()Ls1/a/a/a/v0/m/l0;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v6}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v8

    .line 10
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v9, Ls1/a/a/a/v0/a/i;->k:Ls1/a/a/a/v0/a/i;

    invoke-virtual {v8, v9}, Ls1/a/a/a/v0/a/g;->s(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object v8

    if-eqz v8, :cond_7

    aput-object v8, v7, v0

    .line 12
    invoke-interface {v6}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v8

    .line 13
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v9, Ls1/a/a/a/v0/a/i;->g:Ls1/a/a/a/v0/a/i;

    invoke-virtual {v8, v9}, Ls1/a/a/a/v0/a/g;->s(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object v8

    if-eqz v8, :cond_6

    aput-object v8, v7, v4

    const/4 v4, 0x3

    .line 15
    invoke-interface {v6}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v6

    .line 16
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v8, Ls1/a/a/a/v0/a/i;->h:Ls1/a/a/a/v0/a/i;

    invoke-virtual {v6, v8}, Ls1/a/a/a/v0/a/g;->s(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object v6

    if-eqz v6, :cond_5

    aput-object v6, v7, v4

    .line 18
    invoke-static {v7}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 19
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/m/e0;

    .line 21
    iget-object v7, v2, Ls1/a/a/a/v0/j/t/o;->c:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v0

    if-nez v6, :cond_1

    move v0, v3

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 22
    iget-object v0, p0, Ls1/a/a/a/v0/j/t/o$a;->b:Ls1/a/a/a/v0/j/t/o;

    invoke-virtual {v0}, Ls1/a/a/a/v0/j/t/o;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    const-string v2, "Number"

    .line 23
    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/a/g;->j(Ljava/lang/String;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 v0, 0x36

    .line 26
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v5

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    const/16 v0, 0x38

    .line 27
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v5

    :cond_6
    const/16 v0, 0x37

    .line 28
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v5

    :cond_7
    const/16 v0, 0x3a

    .line 29
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v5
.end method
