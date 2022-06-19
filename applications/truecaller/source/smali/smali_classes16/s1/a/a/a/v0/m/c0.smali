.class public final Ls1/a/a/a/v0/m/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/v0;
.implements Ls1/a/a/a/v0/m/n1/g;


# instance fields
.field public a:Ls1/a/a/a/v0/m/e0;

.field public final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result p1

    iput p1, p0, Ls1/a/a/a/v0/m/c0;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/c0;->g(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/c0;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/m/c0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    check-cast p1, Ls1/a/a/a/v0/m/c0;

    iget-object p1, p1, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ls1/a/a/a/v0/m/l0;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    const-string v2, "member scope for intersection type"

    invoke-static {v2, v0}, Ls1/a/a/a/v0/j/y/n$a;->a(Ljava/lang/String;Ljava/util/Collection;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v5

    .line 6
    new-instance v6, Ls1/a/a/a/v0/m/c0$a;

    invoke-direct {v6, p0}, Ls1/a/a/a/v0/m/c0$a;-><init>(Ls1/a/a/a/v0/m/c0;)V

    const/4 v4, 0x0

    move-object v2, p0

    .line 7
    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/m/f0;->i(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/c0;
    .locals 4

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 5
    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/m/e0;->Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, p1}, Ls1/a/a/a/v0/m/e0;->Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    :cond_2
    const-string p1, "typesToIntersect"

    .line 9
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->hashCode()I

    .line 13
    new-instance v1, Ls1/a/a/a/v0/m/c0;

    .line 14
    invoke-direct {v1, p1}, Ls1/a/a/a/v0/m/c0;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object v0, v1, Ls1/a/a/a/v0/m/c0;->a:Ls1/a/a/a/v0/m/e0;

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/m/c0;->c:I

    return v0
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    const-string v1, "intersectedTypes.iterato\u2026xt().constructor.builtIns"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/c0;->b:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Ls1/a/a/a/v0/m/d0;

    invoke-direct {v1}, Ls1/a/a/a/v0/m/d0;-><init>()V

    invoke-static {v0, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const-string v3, " & "

    const-string v4, "{"

    const-string v5, "}"

    .line 3
    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
