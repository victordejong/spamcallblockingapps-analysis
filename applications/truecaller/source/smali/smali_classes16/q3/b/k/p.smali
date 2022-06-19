.class public Lq3/b/k/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/i/d;


# instance fields
.field public a:I

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Z

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ljava/lang/String;

.field public final i:Lq3/b/k/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/b/k/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq3/b/k/f;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq3/b/k/f<",
            "*>;I)V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/k/p;->h:Ljava/lang/String;

    iput-object p2, p0, Lq3/b/k/p;->i:Lq3/b/k/f;

    iput p3, p0, Lq3/b/k/p;->j:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lq3/b/k/p;->a:I

    .line 3
    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lq3/b/k/p;->b:[Ljava/lang/String;

    .line 4
    iget p1, p0, Lq3/b/k/p;->j:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lq3/b/k/p;->c:[Ljava/util/List;

    .line 5
    new-array p1, p1, [Z

    iput-object p1, p0, Lq3/b/k/p;->d:[Z

    .line 6
    new-instance p1, Lq3/b/k/p$b;

    invoke-direct {p1, p0}, Lq3/b/k/p$b;-><init>(Lq3/b/k/p;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lq3/b/k/p;->e:Ls1/g;

    .line 7
    new-instance p1, Lq3/b/k/p$d;

    invoke-direct {p1, p0}, Lq3/b/k/p$d;-><init>(Lq3/b/k/p;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lq3/b/k/p;->f:Ls1/g;

    .line 8
    new-instance p1, Lq3/b/k/p$a;

    invoke-direct {p1, p0}, Lq3/b/k/p$a;-><init>(Lq3/b/k/p;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lq3/b/k/p;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lq3/b/k/p;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    :goto_0
    return p1
.end method

.method public c(I)Lq3/b/i/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/b/k/p;->i:Lq3/b/k/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lq3/b/k/f;->e()[Lq3/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lq3/b/b;->a()Lq3/b/i/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v2, p0, Lq3/b/k/p;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " descriptor has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lq3/b/k/p;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/b/k/p;->j:I

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/p;->b:[Ljava/lang/String;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    instance-of v2, p1, Lq3/b/k/p;

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_2

    .line 2
    :cond_1
    iget-object v2, p0, Lq3/b/k/p;->h:Ljava/lang/String;

    .line 3
    move-object v3, p1

    check-cast v3, Lq3/b/i/d;

    invoke-interface {v3}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    check-cast p1, Lq3/b/k/p;

    .line 5
    invoke-virtual {p0}, Lq3/b/k/p;->i()[Lq3/b/i/d;

    move-result-object v2

    invoke-virtual {p1}, Lq3/b/k/p;->i()[Lq3/b/i/d;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p0, Lq3/b/k/p;->j:I

    .line 7
    invoke-interface {v3}, Lq3/b/i/d;->d()I

    move-result v2

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget p1, p0, Lq3/b/k/p;->j:I

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_7

    .line 9
    invoke-virtual {p0, v2}, Lq3/b/k/p;->c(I)Lq3/b/i/d;

    move-result-object v4

    invoke-interface {v4}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object v5

    invoke-interface {v5}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, v2}, Lq3/b/k/p;->c(I)Lq3/b/i/d;

    move-result-object v4

    invoke-interface {v4}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v4

    invoke-interface {v3, v2}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object v5

    invoke-interface {v5}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/k/p;->b:[Ljava/lang/String;

    iget v1, p0, Lq3/b/k/p;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq3/b/k/p;->a:I

    aput-object p1, v0, v1

    .line 2
    iget-object p1, p0, Lq3/b/k/p;->d:[Z

    aput-boolean p2, p1, v1

    .line 3
    iget-object p1, p0, Lq3/b/k/p;->c:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    return-void
.end method

.method public getKind()Lq3/b/i/h;
    .locals 1

    .line 1
    sget-object v0, Lq3/b/i/i$a;->a:Lq3/b/i/i$a;

    return-object v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq3/b/k/p;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/p;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final i()[Lq3/b/i/d;
    .locals 1

    iget-object v0, p0, Lq3/b/k/p;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq3/b/i/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lq3/b/k/p;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v2, p0, Lq3/b/k/p;->h:Ljava/lang/String;

    const/16 v3, 0x28

    .line 3
    invoke-static {v0, v2, v3}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lq3/b/k/p$c;

    invoke-direct {v7, p0}, Lq3/b/k/p$c;-><init>(Lq3/b/k/p;)V

    const/16 v8, 0x18

    const-string v2, ", "

    const-string v4, ")"

    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
