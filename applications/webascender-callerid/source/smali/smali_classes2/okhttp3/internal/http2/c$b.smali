.class public final Lokhttp3/internal/http2/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field public c:I

.field public d:[Lokhttp3/internal/http2/b;

.field private e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Z

.field private final j:Ln/f;


# direct methods
.method public constructor <init>(IZLn/f;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokhttp3/internal/http2/c$b;->h:I

    iput-boolean p2, p0, Lokhttp3/internal/http2/c$b;->i:Z

    iput-object p3, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    const p2, 0x7fffffff

    .line 2
    iput p2, p0, Lokhttp3/internal/http2/c$b;->a:I

    .line 3
    iput p1, p0, Lokhttp3/internal/http2/c$b;->c:I

    const/16 p1, 0x8

    new-array p1, p1, [Lokhttp3/internal/http2/b;

    .line 4
    iput-object p1, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    .line 5
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lokhttp3/internal/http2/c$b;->e:I

    return-void
.end method

.method public synthetic constructor <init>(IZLn/f;ILkotlin/w/c/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/c$b;-><init>(IZLn/f;)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/c$b;->c:I

    iget v1, p0, Lokhttp3/internal/http2/c$b;->g:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lokhttp3/internal/http2/c$b;->b()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 3
    invoke-direct {p0, v1}, Lokhttp3/internal/http2/c$b;->c(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/s/e;->i([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/c$b;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lokhttp3/internal/http2/c$b;->f:I

    .line 4
    iput v0, p0, Lokhttp3/internal/http2/c$b;->g:I

    return-void
.end method

.method private final c(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 1
    iget-object v1, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/c$b;->e:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    if-lez p1, :cond_2

    .line 3
    iget-object v2, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    iget v4, v4, Lokhttp3/internal/http2/b;->a:I

    sub-int/2addr p1, v4

    .line 4
    iget v4, p0, Lokhttp3/internal/http2/c$b;->g:I

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget v2, v2, Lokhttp3/internal/http2/b;->a:I

    sub-int/2addr v4, v2

    iput v4, p0, Lokhttp3/internal/http2/c$b;->g:I

    .line 5
    iget v2, p0, Lokhttp3/internal/http2/c$b;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/c$b;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 8
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 9
    iget v4, p0, Lokhttp3/internal/http2/c$b;->f:I

    .line 10
    invoke-static {p1, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    iget v1, p0, Lokhttp3/internal/http2/c$b;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 12
    iget p1, p0, Lokhttp3/internal/http2/c$b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/http2/c$b;->e:I

    :cond_3
    return v0
.end method

.method private final d(Lokhttp3/internal/http2/b;)V
    .locals 6

    .line 1
    iget v0, p1, Lokhttp3/internal/http2/b;->a:I

    .line 2
    iget v1, p0, Lokhttp3/internal/http2/c$b;->c:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lokhttp3/internal/http2/c$b;->b()V

    return-void

    .line 4
    :cond_0
    iget v2, p0, Lokhttp3/internal/http2/c$b;->g:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 5
    invoke-direct {p0, v2}, Lokhttp3/internal/http2/c$b;->c(I)I

    .line 6
    iget v1, p0, Lokhttp3/internal/http2/c$b;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 7
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/http2/b;

    const/4 v3, 0x0

    .line 8
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/c$b;->e:I

    .line 10
    iput-object v1, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    .line 11
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/c$b;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/http2/c$b;->e:I

    .line 12
    iget-object v2, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    aput-object p1, v2, v1

    .line 13
    iget p1, p0, Lokhttp3/internal/http2/c$b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/http2/c$b;->f:I

    .line 14
    iget p1, p0, Lokhttp3/internal/http2/c$b;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/http2/c$b;->g:I

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 1

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/c$b;->h:I

    const/16 v0, 0x4000

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget v0, p0, Lokhttp3/internal/http2/c$b;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    .line 4
    iget v0, p0, Lokhttp3/internal/http2/c$b;->a:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/c$b;->a:I

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lokhttp3/internal/http2/c$b;->b:Z

    .line 6
    iput p1, p0, Lokhttp3/internal/http2/c$b;->c:I

    .line 7
    invoke-direct {p0}, Lokhttp3/internal/http2/c$b;->a()V

    return-void
.end method

.method public final f(Ln/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/c$b;->i:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/internal/http2/j;->d:Lokhttp3/internal/http2/j;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/j;->d(Ln/i;)I

    move-result v2

    invoke-virtual {p1}, Ln/i;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2
    new-instance v2, Ln/f;

    invoke-direct {v2}, Ln/f;-><init>()V

    .line 3
    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/http2/j;->c(Ln/i;Ln/g;)V

    .line 4
    invoke-virtual {v2}, Ln/f;->E0()Ln/i;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ln/i;->size()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/c$b;->h(III)V

    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    invoke-virtual {v0, p1}, Ln/f;->G0(Ln/i;)Ln/f;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ln/i;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/c$b;->h(III)V

    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    invoke-virtual {v0, p1}, Ln/f;->G0(Ln/i;)Ln/f;

    :goto_0
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/c$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lokhttp3/internal/http2/c$b;->a:I

    iget v2, p0, Lokhttp3/internal/http2/c$b;->c:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/c$b;->h(III)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/c$b;->b:Z

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lokhttp3/internal/http2/c$b;->a:I

    .line 6
    iget v0, p0, Lokhttp3/internal/http2/c$b;->c:I

    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/c$b;->h(III)V

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_e

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/http2/b;

    .line 9
    iget-object v4, v3, Lokhttp3/internal/http2/b;->b:Ln/i;

    invoke-virtual {v4}, Ln/i;->H()Ln/i;

    move-result-object v4

    .line 10
    iget-object v5, v3, Lokhttp3/internal/http2/b;->c:Ln/i;

    .line 11
    sget-object v6, Lokhttp3/internal/http2/c;->c:Lokhttp3/internal/http2/c;

    invoke-virtual {v6}, Lokhttp3/internal/http2/c;->b()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, -0x1

    if-eqz v7, :cond_5

    .line 12
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x7

    const/4 v10, 0x2

    if-le v10, v7, :cond_2

    goto :goto_1

    :cond_2
    if-lt v9, v7, :cond_4

    .line 13
    invoke-virtual {v6}, Lokhttp3/internal/http2/c;->c()[Lokhttp3/internal/http2/b;

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lokhttp3/internal/http2/b;->c:Ln/i;

    invoke-static {v9, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v7

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {v6}, Lokhttp3/internal/http2/c;->c()[Lokhttp3/internal/http2/b;

    move-result-object v6

    aget-object v6, v6, v7

    iget-object v6, v6, Lokhttp3/internal/http2/b;->c:Ln/i;

    invoke-static {v6, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v7, 0x1

    move v13, v7

    move v7, v6

    move v6, v13

    goto :goto_3

    :cond_4
    :goto_1
    move v6, v7

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-ne v7, v8, :cond_a

    .line 15
    iget v9, p0, Lokhttp3/internal/http2/c$b;->e:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    array-length v10, v10

    :goto_4
    if-ge v9, v10, :cond_a

    .line 16
    iget-object v11, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    aget-object v11, v11, v9

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    iget-object v11, v11, Lokhttp3/internal/http2/b;->b:Ln/i;

    invoke-static {v11, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 17
    iget-object v11, p0, Lokhttp3/internal/http2/c$b;->d:[Lokhttp3/internal/http2/b;

    aget-object v11, v11, v9

    if-eqz v11, :cond_7

    iget-object v11, v11, Lokhttp3/internal/http2/b;->c:Ln/i;

    invoke-static {v11, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 18
    iget v7, p0, Lokhttp3/internal/http2/c$b;->e:I

    sub-int/2addr v9, v7

    sget-object v7, Lokhttp3/internal/http2/c;->c:Lokhttp3/internal/http2/c;

    invoke-virtual {v7}, Lokhttp3/internal/http2/c;->c()[Lokhttp3/internal/http2/b;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v7, v9

    goto :goto_6

    :cond_6
    if-ne v6, v8, :cond_8

    .line 19
    iget v6, p0, Lokhttp3/internal/http2/c$b;->e:I

    sub-int v6, v9, v6

    sget-object v11, Lokhttp3/internal/http2/c;->c:Lokhttp3/internal/http2/c;

    invoke-virtual {v11}, Lokhttp3/internal/http2/c;->c()[Lokhttp3/internal/http2/b;

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    goto :goto_5

    .line 20
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v12

    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 21
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v12

    :cond_a
    :goto_6
    if-eq v7, v8, :cond_b

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 22
    invoke-virtual {p0, v7, v3, v4}, Lokhttp3/internal/http2/c$b;->h(III)V

    goto :goto_7

    :cond_b
    const/16 v7, 0x40

    if-ne v6, v8, :cond_c

    .line 23
    iget-object v6, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    invoke-virtual {v6, v7}, Ln/f;->O0(I)Ln/f;

    .line 24
    invoke-virtual {p0, v4}, Lokhttp3/internal/http2/c$b;->f(Ln/i;)V

    .line 25
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/c$b;->f(Ln/i;)V

    .line 26
    invoke-direct {p0, v3}, Lokhttp3/internal/http2/c$b;->d(Lokhttp3/internal/http2/b;)V

    goto :goto_7

    .line 27
    :cond_c
    sget-object v8, Lokhttp3/internal/http2/b;->d:Ln/i;

    invoke-virtual {v4, v8}, Ln/i;->G(Ln/i;)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Lokhttp3/internal/http2/b;->i:Ln/i;

    invoke-static {v8, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    const/16 v3, 0xf

    .line 28
    invoke-virtual {p0, v6, v3, v1}, Lokhttp3/internal/http2/c$b;->h(III)V

    .line 29
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/c$b;->f(Ln/i;)V

    goto :goto_7

    :cond_d
    const/16 v4, 0x3f

    .line 30
    invoke-virtual {p0, v6, v4, v7}, Lokhttp3/internal/http2/c$b;->h(III)V

    .line 31
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/c$b;->f(Ln/i;)V

    .line 32
    invoke-direct {p0, v3}, Lokhttp3/internal/http2/c$b;->d(Lokhttp3/internal/http2/b;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final h(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ln/f;->O0(I)Ln/f;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ln/f;->O0(I)Ln/f;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Ln/f;->O0(I)Ln/f;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lokhttp3/internal/http2/c$b;->j:Ln/f;

    invoke-virtual {p2, p1}, Ln/f;->O0(I)Ln/f;

    return-void
.end method
