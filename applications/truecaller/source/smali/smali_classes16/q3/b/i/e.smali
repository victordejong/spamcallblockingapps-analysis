.class public final Lq3/b/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/i/d;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public final c:[Lq3/b/i/d;

.field public final d:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:[Lq3/b/i/d;

.field public final g:Ls1/g;

.field public final h:Ljava/lang/String;

.field public final i:Lq3/b/i/h;

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq3/b/i/h;ILjava/util/List;Lq3/b/i/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq3/b/i/h;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lq3/b/i/d;",
            ">;",
            "Lq3/b/i/a;",
            ")V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/i/e;->h:Ljava/lang/String;

    iput-object p2, p0, Lq3/b/i/e;->i:Lq3/b/i/h;

    iput p3, p0, Lq3/b/i/e;->j:I

    .line 2
    iget-object p1, p5, Lq3/b/i/a;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lq3/b/i/e;->a:Ljava/util/List;

    .line 4
    iget-object p1, p5, Lq3/b/i/a;->b:Ljava/util/List;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    .line 5
    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lq3/b/i/e;->b:[Ljava/lang/String;

    .line 6
    iget-object v0, p5, Lq3/b/i/a;->d:Ljava/util/List;

    .line 7
    invoke-static {v0}, Lq3/b/k/o;->a(Ljava/util/List;)[Lq3/b/i/d;

    move-result-object v0

    iput-object v0, p0, Lq3/b/i/e;->c:[Lq3/b/i/d;

    .line 8
    iget-object v0, p5, Lq3/b/i/a;->e:Ljava/util/List;

    new-array p2, p2, [Ljava/util/List;

    .line 9
    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Ljava/util/List;

    iput-object p2, p0, Lq3/b/i/e;->d:[Ljava/util/List;

    .line 10
    iget-object p2, p5, Lq3/b/i/a;->f:Ljava/util/List;

    .line 11
    invoke-static {p2}, Ls1/u/i;->O0(Ljava/util/Collection;)[Z

    .line 12
    invoke-static {p1}, Le/q/f/a/d/a;->t3([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    check-cast p1, Ls1/u/x;

    invoke-virtual {p1}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object p3, p1

    check-cast p3, Ls1/u/y;

    invoke-virtual {p3}, Ls1/u/y;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p3}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object p3

    .line 15
    check-cast p3, Ls1/u/w;

    .line 16
    iget-object p5, p3, Ls1/u/w;->b:Ljava/lang/Object;

    .line 17
    iget p3, p3, Ls1/u/w;->a:I

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 19
    new-instance v0, Ls1/k;

    invoke-direct {v0, p5, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lq3/b/i/e;->e:Ljava/util/Map;

    .line 21
    invoke-static {p4}, Lq3/b/k/o;->a(Ljava/util/List;)[Lq3/b/i/d;

    move-result-object p1

    iput-object p1, p0, Lq3/b/i/e;->f:[Lq3/b/i/d;

    .line 22
    new-instance p1, Lq3/b/i/e$a;

    invoke-direct {p1, p0}, Lq3/b/i/e$a;-><init>(Lq3/b/i/e;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lq3/b/i/e;->g:Ls1/g;

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
    iget-object v0, p0, Lq3/b/i/e;->e:Ljava/util/Map;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/i/e;->c:[Lq3/b/i/d;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/b/i/e;->j:I

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/i/e;->b:[Ljava/lang/String;

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
    instance-of v2, p1, Lq3/b/i/e;

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_2

    .line 2
    :cond_1
    iget-object v2, p0, Lq3/b/i/e;->h:Ljava/lang/String;

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
    check-cast p1, Lq3/b/i/e;

    .line 5
    iget-object v2, p0, Lq3/b/i/e;->f:[Lq3/b/i/d;

    .line 6
    iget-object p1, p1, Lq3/b/i/e;->f:[Lq3/b/i/d;

    .line 7
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget p1, p0, Lq3/b/i/e;->j:I

    .line 9
    invoke-interface {v3}, Lq3/b/i/d;->d()I

    move-result v2

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iget p1, p0, Lq3/b/i/e;->j:I

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_7

    .line 11
    iget-object v4, p0, Lq3/b/i/e;->c:[Lq3/b/i/d;

    .line 12
    aget-object v4, v4, v2

    .line 13
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

    .line 14
    :cond_5
    iget-object v4, p0, Lq3/b/i/e;->c:[Lq3/b/i/d;

    .line 15
    aget-object v4, v4, v2

    .line 16
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
    iget-object v0, p0, Lq3/b/i/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lq3/b/i/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/i/e;->i:Lq3/b/i/h;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/i/e;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lq3/b/i/e;->j:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lq3/b/i/e;->h:Ljava/lang/String;

    const/16 v3, 0x28

    .line 4
    invoke-static {v0, v1, v3}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lq3/b/i/e$b;

    invoke-direct {v8, p0}, Lq3/b/i/e$b;-><init>(Lq3/b/i/e;)V

    const/16 v9, 0x18

    const-string v3, ", "

    const-string v5, ")"

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
