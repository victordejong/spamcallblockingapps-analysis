.class public final Le/k/a/c/d0/y/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/y/y$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Le/k/a/c/d0/w;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[Le/k/a/c/d0/u;


# direct methods
.method public constructor <init>(Le/k/a/c/g;Le/k/a/c/d0/w;[Le/k/a/c/d0/u;ZZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/k/a/c/d0/y/y;->b:Le/k/a/c/d0/w;

    if-eqz p4, :cond_0

    .line 3
    iget-object p2, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 4
    iget-object p2, p2, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object p2, p2, Le/k/a/c/c0/a;->i:Ljava/util/Locale;

    .line 6
    new-instance p4, Le/k/a/c/d0/y/y$a;

    invoke-direct {p4, p2}, Le/k/a/c/d0/y/y$a;-><init>(Ljava/util/Locale;)V

    .line 7
    iput-object p4, p0, Le/k/a/c/d0/y/y;->c:Ljava/util/HashMap;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Le/k/a/c/d0/y/y;->c:Ljava/util/HashMap;

    .line 9
    :goto_0
    array-length p2, p3

    .line 10
    iput p2, p0, Le/k/a/c/d0/y/y;->a:I

    .line 11
    new-array p4, p2, [Le/k/a/c/d0/u;

    iput-object p4, p0, Le/k/a/c/d0/y/y;->d:[Le/k/a/c/d0/u;

    const/4 p4, 0x0

    if-eqz p5, :cond_5

    .line 12
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 13
    array-length p5, p3

    move v0, p4

    :goto_1
    if-ge v0, p5, :cond_5

    aget-object v1, p3, v0

    .line 14
    invoke-virtual {v1}, Le/k/a/c/d0/u;->w()Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    iget-object v2, v1, Le/k/a/c/g0/v;->b:Ljava/util/List;

    if-nez v2, :cond_3

    .line 16
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 17
    invoke-interface {v1}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v3, v4}, Le/k/a/c/b;->D(Le/k/a/c/g0/b;)Ljava/util/List;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 20
    :cond_2
    iput-object v2, v1, Le/k/a/c/g0/v;->b:Ljava/util/List;

    .line 21
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/v;

    .line 23
    iget-object v4, p0, Le/k/a/c/d0/y/y;->c:Ljava/util/HashMap;

    .line 24
    iget-object v3, v3, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-ge p4, p2, :cond_7

    .line 26
    aget-object p1, p3, p4

    .line 27
    iget-object p5, p0, Le/k/a/c/d0/y/y;->d:[Le/k/a/c/d0/u;

    aput-object p1, p5, p4

    .line 28
    invoke-virtual {p1}, Le/k/a/c/d0/u;->w()Z

    move-result p5

    if-nez p5, :cond_6

    .line 29
    iget-object p5, p0, Le/k/a/c/d0/y/y;->c:Ljava/util/HashMap;

    .line 30
    iget-object v0, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 31
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static b(Le/k/a/c/g;Le/k/a/c/d0/w;[Le/k/a/c/d0/u;Z)Le/k/a/c/d0/y/y;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    new-array v4, v0, [Le/k/a/c/d0/u;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    aget-object v2, p2, v1

    .line 4
    invoke-virtual {v2}, Le/k/a/c/d0/u;->t()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, v2, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    .line 6
    invoke-virtual {p0, v3, v2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/k/a/c/d0/u;->G(Le/k/a/c/j;)Le/k/a/c/d0/u;

    move-result-object v2

    .line 7
    :cond_0
    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Le/k/a/c/d0/y/y;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/k/a/c/d0/y/y;-><init>(Le/k/a/c/g;Le/k/a/c/d0/w;[Le/k/a/c/d0/u;ZZ)V

    return-object p2
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d0/y/b0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/y;->b:Le/k/a/c/d0/w;

    iget-object v1, p0, Le/k/a/c/d0/y/y;->d:[Le/k/a/c/d0/u;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v2, p2, Le/k/a/c/d0/y/b0;->e:I

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 4
    iget-object v2, p2, Le/k/a/c/d0/y/b0;->g:Ljava/util/BitSet;

    if-nez v2, :cond_1

    .line 5
    iget v2, p2, Le/k/a/c/d0/y/b0;->f:I

    .line 6
    iget-object v4, p2, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    array-length v4, v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_0

    .line 7
    iget-object v6, p2, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    aget-object v7, v1, v5

    invoke-virtual {p2, v7}, Le/k/a/c/d0/y/b0;->a(Le/k/a/c/d0/u;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p2, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    array-length v2, v2

    move v4, v3

    .line 9
    :goto_1
    iget-object v5, p2, Le/k/a/c/d0/y/b0;->g:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 10
    iget-object v5, p2, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    aget-object v6, v1, v4

    invoke-virtual {p2, v6}, Le/k/a/c/d0/y/b0;->a(Le/k/a/c/d0/u;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, p2, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    sget-object v4, Le/k/a/c/h;->o:Le/k/a/c/h;

    invoke-virtual {v2, v4}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    move v2, v3

    .line 12
    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_4

    .line 13
    iget-object v7, p2, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    aget-object v7, v7, v2

    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 14
    :cond_3
    aget-object p1, v1, v2

    .line 15
    iget-object p2, p2, Le/k/a/c/d0/y/b0;->b:Le/k/a/c/g;

    new-array v0, v5, [Ljava/lang/Object;

    .line 16
    iget-object v5, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 17
    iget-object v5, v5, Le/k/a/c/v;->a:Ljava/lang/String;

    aput-object v5, v0, v3

    .line 18
    aget-object v1, v1, v2

    invoke-virtual {v1}, Le/k/a/c/d0/u;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled"

    .line 19
    invoke-virtual {p2, p1, v1, v0}, Le/k/a/c/g;->Y(Le/k/a/c/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    .line 20
    :cond_4
    iget-object v1, p2, Le/k/a/c/d0/y/b0;->d:[Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, p1, v1}, Le/k/a/c/d0/w;->s(Le/k/a/c/g;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 22
    iget-object v1, p2, Le/k/a/c/d0/y/b0;->c:Le/k/a/c/d0/y/v;

    if-eqz v1, :cond_6

    .line 23
    iget-object v2, p2, Le/k/a/c/d0/y/b0;->i:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 24
    iget-object v3, v1, Le/k/a/c/d0/y/v;->c:Le/k/a/a/k0;

    iget-object v1, v1, Le/k/a/c/d0/y/v;->d:Le/k/a/a/n0;

    invoke-virtual {p1, v2, v3, v1}, Le/k/a/c/g;->w(Ljava/lang/Object;Le/k/a/a/k0;Le/k/a/a/n0;)Le/k/a/c/d0/y/c0;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Le/k/a/c/d0/y/c0;->b(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p2, Le/k/a/c/d0/y/b0;->c:Le/k/a/c/d0/y/v;

    iget-object p1, p1, Le/k/a/c/d0/y/v;->f:Le/k/a/c/d0/u;

    if-eqz p1, :cond_6

    .line 27
    iget-object v1, p2, Le/k/a/c/d0/y/b0;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_3

    .line 28
    :cond_5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, v1, Le/k/a/c/d0/y/v;->b:Le/k/a/c/v;

    aput-object v0, p2, v6

    const-string v0, "No Object Id found for an instance of %s, to assign to property \'%s\'"

    .line 30
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 31
    iget-object v0, v1, Le/k/a/c/d0/y/v;->f:Le/k/a/c/d0/u;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, v1}, Le/k/a/c/g;->Y(Le/k/a/c/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    .line 32
    :cond_6
    :goto_3
    iget-object p1, p2, Le/k/a/c/d0/y/b0;->h:Le/k/a/c/d0/y/a0;

    :goto_4
    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p1, v0}, Le/k/a/c/d0/y/a0;->a(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p1, Le/k/a/c/d0/y/a0;->a:Le/k/a/c/d0/y/a0;

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method public c(Ljava/lang/String;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/y;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/d0/u;

    return-object p1
.end method
