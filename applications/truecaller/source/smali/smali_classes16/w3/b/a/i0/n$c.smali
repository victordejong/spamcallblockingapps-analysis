.class public Lw3/b/a/i0/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/p;
.implements Lw3/b/a/i0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:[Lw3/b/a/i0/n$c;

.field public final g:Lw3/b/a/i0/n$f;

.field public final h:Lw3/b/a/i0/n$f;


# direct methods
.method public constructor <init>(IIIZI[Lw3/b/a/i0/n$c;Lw3/b/a/i0/n$f;Lw3/b/a/i0/n$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lw3/b/a/i0/n$c;->a:I

    .line 3
    iput p2, p0, Lw3/b/a/i0/n$c;->b:I

    .line 4
    iput p3, p0, Lw3/b/a/i0/n$c;->c:I

    .line 5
    iput-boolean p4, p0, Lw3/b/a/i0/n$c;->d:Z

    .line 6
    iput p5, p0, Lw3/b/a/i0/n$c;->e:I

    .line 7
    iput-object p6, p0, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    .line 8
    iput-object p7, p0, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/i0/n$c;Lw3/b/a/i0/n$f;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lw3/b/a/i0/n$c;->a:I

    iput v0, p0, Lw3/b/a/i0/n$c;->a:I

    .line 12
    iget v0, p1, Lw3/b/a/i0/n$c;->b:I

    iput v0, p0, Lw3/b/a/i0/n$c;->b:I

    .line 13
    iget v0, p1, Lw3/b/a/i0/n$c;->c:I

    iput v0, p0, Lw3/b/a/i0/n$c;->c:I

    .line 14
    iget-boolean v0, p1, Lw3/b/a/i0/n$c;->d:Z

    iput-boolean v0, p0, Lw3/b/a/i0/n$c;->d:Z

    .line 15
    iget v0, p1, Lw3/b/a/i0/n$c;->e:I

    iput v0, p0, Lw3/b/a/i0/n$c;->e:I

    .line 16
    iget-object v0, p1, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    iput-object v0, p0, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    .line 17
    iget-object v0, p1, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    iput-object v0, p0, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    .line 18
    iget-object p1, p1, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lw3/b/a/i0/n$b;

    invoke-direct {v0, p1, p2}, Lw3/b/a/i0/n$b;-><init>(Lw3/b/a/i0/n$f;Lw3/b/a/i0/n$f;)V

    move-object p2, v0

    .line 20
    :cond_0
    iput-object p2, p0, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    return-void
.end method


# virtual methods
.method public a(Lw3/b/a/c0;ILjava/util/Locale;)I
    .locals 2

    const/4 p3, 0x0

    if-gtz p2, :cond_0

    return p3

    .line 1
    :cond_0
    iget p2, p0, Lw3/b/a/i0/n$c;->b:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lw3/b/a/i0/n$c;->e(Lw3/b/a/c0;)J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/StringBuffer;Lw3/b/a/c0;Ljava/util/Locale;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lw3/b/a/i0/n$c;->e(Lw3/b/a/c0;)J

    move-result-wide p2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    long-to-int v0, p2

    .line 2
    iget v1, p0, Lw3/b/a/i0/n$c;->e:I

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    .line 3
    div-long v0, p2, v2

    long-to-int v0, v0

    .line 4
    :cond_1
    iget-object v1, p0, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1, p1, v0}, Lw3/b/a/i0/n$f;->c(Ljava/lang/StringBuffer;I)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 7
    iget v5, p0, Lw3/b/a/i0/n$c;->a:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    .line 8
    sget v5, Lw3/b/a/i0/h;->b:I

    .line 9
    :try_start_0
    invoke-static {p1, v0}, Lw3/b/a/i0/h;->b(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :cond_3
    sget v6, Lw3/b/a/i0/h;->b:I

    .line 11
    :try_start_1
    invoke-static {p1, v0, v5}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    :catch_0
    :goto_0
    iget v5, p0, Lw3/b/a/i0/n$c;->e:I

    if-lt v5, v4, :cond_6

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    rem-long/2addr v5, v2

    long-to-int v2, v5

    .line 14
    iget v3, p0, Lw3/b/a/i0/n$c;->e:I

    if-eq v3, v4, :cond_4

    if-lez v2, :cond_6

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_5

    const-wide/16 v3, -0x3e8

    cmp-long p2, p2, v3

    if-lez p2, :cond_5

    const/16 p2, 0x2d

    .line 15
    invoke-virtual {p1, v1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_5
    const/16 p2, 0x2e

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p2, 0x3

    .line 17
    sget p3, Lw3/b/a/i0/h;->b:I

    .line 18
    :try_start_2
    invoke-static {p1, v2, p2}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 19
    :catch_1
    :cond_6
    iget-object p2, p0, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    if-eqz p2, :cond_7

    .line 20
    invoke-interface {p2, p1, v0}, Lw3/b/a/i0/n$f;->c(Ljava/lang/StringBuffer;I)V

    :cond_7
    return-void
.end method

.method public c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget v4, v0, Lw3/b/a/i0/n$c;->b:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_2

    if-eqz v4, :cond_1

    not-int v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1

    .line 3
    :cond_2
    iget-object v7, v0, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    if-eqz v7, :cond_5

    .line 4
    invoke-interface {v7, v2, v3}, Lw3/b/a/i0/n$f;->b(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    not-int v1, v3

    return v1

    :cond_4
    return v3

    .line 5
    :cond_5
    :goto_2
    iget-object v7, v0, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    const/4 v8, -0x1

    if-eqz v7, :cond_8

    if-nez v4, :cond_8

    .line 6
    invoke-interface {v7, v2, v3}, Lw3/b/a/i0/n$f;->a(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    not-int v1, v7

    return v1

    :cond_7
    return v7

    :cond_8
    move v7, v8

    :goto_3
    if-nez v4, :cond_9

    .line 7
    invoke-interface/range {p1 .. p1}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object v4

    iget v9, v0, Lw3/b/a/i0/n$c;->e:I

    invoke-virtual {v0, v4, v9}, Lw3/b/a/i0/n$c;->f(Lw3/b/a/v;I)Z

    move-result v4

    if-nez v4, :cond_9

    return v3

    :cond_9
    if-lez v7, :cond_a

    .line 8
    iget v4, v0, Lw3/b/a/i0/n$c;->c:I

    sub-int v9, v7, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    .line 9
    :cond_a
    iget v4, v0, Lw3/b/a/i0/n$c;->c:I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v9, v4, :cond_14

    add-int v14, v3, v9

    .line 10
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v6, 0x39

    const/16 v5, 0x30

    if-nez v9, :cond_f

    const/16 v12, 0x2d

    if-eq v15, v12, :cond_b

    const/16 v13, 0x2b

    if-ne v15, v13, :cond_f

    .line 11
    :cond_b
    iget-boolean v13, v0, Lw3/b/a/i0/n$c;->d:Z

    if-nez v13, :cond_f

    if-ne v15, v12, :cond_c

    const/4 v11, 0x1

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    :goto_6
    add-int/lit8 v12, v9, 0x1

    if-ge v12, v4, :cond_14

    add-int/lit8 v14, v14, 0x1

    .line 12
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_14

    if-le v13, v6, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v11, :cond_e

    move v9, v12

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_5

    :cond_f
    if-lt v15, v5, :cond_10

    if-gt v15, v6, :cond_10

    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    const/16 v5, 0x2e

    if-eq v15, v5, :cond_11

    const/16 v5, 0x2c

    if-ne v15, v5, :cond_14

    .line 14
    :cond_11
    iget v5, v0, Lw3/b/a/i0/n$c;->e:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_12

    const/16 v6, 0x9

    if-ne v5, v6, :cond_14

    :cond_12
    if-ltz v8, :cond_13

    goto :goto_9

    :cond_13
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v8, v14

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_14
    :goto_9
    if-nez v10, :cond_15

    not-int v1, v3

    return v1

    :cond_15
    if-ltz v7, :cond_16

    add-int v4, v3, v9

    if-eq v4, v7, :cond_16

    return v3

    .line 16
    :cond_16
    iget v4, v0, Lw3/b/a/i0/n$c;->e:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_17

    const/16 v5, 0x9

    if-eq v4, v5, :cond_17

    .line 17
    invoke-virtual {v0, v2, v3, v9}, Lw3/b/a/i0/n$c;->h(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lw3/b/a/i0/n$c;->i(Lw3/b/a/w;II)V

    goto :goto_d

    :cond_17
    const/4 v4, 0x7

    const/4 v5, 0x6

    if-gez v8, :cond_18

    .line 18
    invoke-virtual {v0, v2, v3, v9}, Lw3/b/a/i0/n$c;->h(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lw3/b/a/i0/n$c;->i(Lw3/b/a/w;II)V

    const/4 v6, 0x0

    .line 19
    invoke-virtual {v0, v1, v4, v6}, Lw3/b/a/i0/n$c;->i(Lw3/b/a/w;II)V

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    sub-int v7, v8, v3

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    .line 20
    invoke-virtual {v0, v2, v3, v7}, Lw3/b/a/i0/n$c;->h(Ljava/lang/String;II)I

    move-result v7

    .line 21
    invoke-virtual {v0, v1, v5, v7}, Lw3/b/a/i0/n$c;->i(Lw3/b/a/w;II)V

    add-int v5, v3, v9

    sub-int/2addr v5, v8

    if-gtz v5, :cond_19

    move v5, v6

    goto :goto_c

    :cond_19
    const/4 v6, 0x3

    if-lt v5, v6, :cond_1a

    .line 22
    invoke-virtual {v0, v2, v8, v6}, Lw3/b/a/i0/n$c;->h(Ljava/lang/String;II)I

    move-result v5

    goto :goto_b

    .line 23
    :cond_1a
    invoke-virtual {v0, v2, v8, v5}, Lw3/b/a/i0/n$c;->h(Ljava/lang/String;II)I

    move-result v6

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1b

    mul-int/lit8 v6, v6, 0x64

    goto :goto_a

    :cond_1b
    mul-int/lit8 v6, v6, 0xa

    :goto_a
    move v5, v6

    :goto_b
    if-nez v11, :cond_1c

    if-gez v7, :cond_1d

    :cond_1c
    neg-int v5, v5

    .line 24
    :cond_1d
    :goto_c
    invoke-virtual {v0, v1, v4, v5}, Lw3/b/a/i0/n$c;->i(Lw3/b/a/w;II)V

    :goto_d
    add-int/2addr v3, v9

    if-ltz v3, :cond_1e

    .line 25
    iget-object v1, v0, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    if-eqz v1, :cond_1e

    .line 26
    invoke-interface {v1, v2, v3}, Lw3/b/a/i0/n$f;->b(Ljava/lang/String;I)I

    move-result v3

    :cond_1e
    return v3
.end method

.method public d(Lw3/b/a/c0;Ljava/util/Locale;)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lw3/b/a/i0/n$c;->e(Lw3/b/a/c0;)J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lw3/b/a/i0/h;->c(J)I

    move-result v0

    iget v1, p0, Lw3/b/a/i0/n$c;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    iget v1, p0, Lw3/b/a/i0/n$c;->e:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 4
    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 5
    iget v3, p0, Lw3/b/a/i0/n$c;->e:I

    const/16 v4, 0x9

    const-wide/16 v5, 0x3e8

    if-ne v3, v4, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    rem-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, -0x4

    .line 6
    :cond_2
    div-long/2addr p1, v5

    :cond_3
    long-to-int p1, p1

    .line 7
    iget-object p2, p0, Lw3/b/a/i0/n$c;->g:Lw3/b/a/i0/n$f;

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2, p1}, Lw3/b/a/i0/n$f;->d(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 9
    :cond_4
    iget-object p2, p0, Lw3/b/a/i0/n$c;->h:Lw3/b/a/i0/n$f;

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p2, p1}, Lw3/b/a/i0/n$f;->d(I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public e(Lw3/b/a/c0;)J
    .locals 9

    .line 1
    sget-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    sget-object v1, Lw3/b/a/k;->l:Lw3/b/a/k;

    iget v2, p0, Lw3/b/a/i0/n$c;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object v2

    :goto_0
    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1

    .line 3
    iget v5, p0, Lw3/b/a/i0/n$c;->e:I

    invoke-virtual {p0, v2, v5}, Lw3/b/a/i0/n$c;->f(Lw3/b/a/v;I)Z

    move-result v5

    if-nez v5, :cond_1

    return-wide v3

    .line 4
    :cond_1
    iget v5, p0, Lw3/b/a/i0/n$c;->e:I

    packed-switch v5, :pswitch_data_0

    return-wide v3

    .line 5
    :pswitch_0
    invoke-interface {p1, v1}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v1

    .line 6
    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    int-to-long v0, v0

    add-long/2addr v5, v0

    goto :goto_2

    .line 7
    :pswitch_1
    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-interface {p1, v1}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 9
    :pswitch_3
    sget-object v0, Lw3/b/a/k;->k:Lw3/b/a/k;

    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 10
    :pswitch_4
    sget-object v0, Lw3/b/a/k;->j:Lw3/b/a/k;

    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 11
    :pswitch_5
    sget-object v0, Lw3/b/a/k;->h:Lw3/b/a/k;

    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 12
    :pswitch_6
    sget-object v0, Lw3/b/a/k;->g:Lw3/b/a/k;

    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 13
    :pswitch_7
    sget-object v0, Lw3/b/a/k;->f:Lw3/b/a/k;

    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    goto :goto_1

    .line 14
    :pswitch_8
    sget-object v0, Lw3/b/a/k;->e:Lw3/b/a/k;

    invoke-interface {p1, v0}, Lw3/b/a/c0;->p(Lw3/b/a/k;)I

    move-result v0

    :goto_1
    int-to-long v5, v0

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_9

    .line 15
    iget v0, p0, Lw3/b/a/i0/n$c;->b:I

    const/16 v1, 0x9

    const/4 v7, 0x1

    if-eq v0, v7, :cond_6

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto :goto_4

    :cond_2
    return-wide v3

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Lw3/b/a/i0/n$c;->g(Lw3/b/a/c0;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    iget v0, p0, Lw3/b/a/i0/n$c;->e:I

    aget-object p1, p1, v0

    if-ne p1, p0, :cond_5

    add-int/2addr v0, v7

    :goto_3
    if-gt v0, v1, :cond_9

    .line 17
    invoke-virtual {p0, v2, v0}, Lw3/b/a/i0/n$c;->f(Lw3/b/a/v;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    aget-object p1, p1, v0

    if-eqz p1, :cond_4

    return-wide v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-wide v3

    .line 18
    :cond_6
    invoke-virtual {p0, p1}, Lw3/b/a/i0/n$c;->g(Lw3/b/a/c0;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    iget v0, p0, Lw3/b/a/i0/n$c;->e:I

    aget-object p1, p1, v0

    if-ne p1, p0, :cond_8

    const/16 p1, 0x8

    .line 19
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_7
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_9

    if-gt p1, v1, :cond_9

    .line 20
    invoke-virtual {p0, v2, p1}, Lw3/b/a/i0/n$c;->f(Lw3/b/a/v;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lw3/b/a/i0/n$c;->f:[Lw3/b/a/i0/n$c;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    :cond_8
    return-wide v3

    :cond_9
    :goto_4
    return-wide v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lw3/b/a/v;I)Z
    .locals 4

    .line 1
    sget-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    sget-object v1, Lw3/b/a/k;->l:Lw3/b/a/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    invoke-virtual {p1, v1}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p2

    if-ltz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2

    .line 3
    :pswitch_1
    invoke-virtual {p1, v0}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    return v2

    .line 4
    :pswitch_2
    invoke-virtual {p1, v1}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2

    .line 5
    :pswitch_3
    sget-object p2, Lw3/b/a/k;->k:Lw3/b/a/k;

    .line 6
    invoke-virtual {p1, p2}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    return v2

    .line 7
    :pswitch_4
    sget-object p2, Lw3/b/a/k;->j:Lw3/b/a/k;

    .line 8
    invoke-virtual {p1, p2}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    return v2

    .line 9
    :pswitch_5
    sget-object p2, Lw3/b/a/k;->h:Lw3/b/a/k;

    .line 10
    invoke-virtual {p1, p2}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    :goto_7
    return v2

    .line 11
    :pswitch_6
    sget-object p2, Lw3/b/a/k;->g:Lw3/b/a/k;

    .line 12
    invoke-virtual {p1, p2}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    return v2

    .line 13
    :pswitch_7
    sget-object p2, Lw3/b/a/k;->f:Lw3/b/a/k;

    .line 14
    invoke-virtual {p1, p2}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_a

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    return v2

    .line 15
    :pswitch_8
    sget-object p2, Lw3/b/a/k;->e:Lw3/b/a/k;

    .line 16
    invoke-virtual {p1, p2}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result p1

    if-ltz p1, :cond_b

    goto :goto_a

    :cond_b
    move v2, v3

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lw3/b/a/c0;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lw3/b/a/c0;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Lw3/b/a/c0;->getValue(I)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Ljava/lang/String;II)I
    .locals 4

    const/16 v0, 0xa

    if-lt p3, v0, :cond_0

    add-int/2addr p3, p2

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-gtz p3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p3, p3, -0x1

    const/16 v2, 0x2d

    if-ne p2, v2, :cond_3

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_2

    return v0

    :cond_2
    add-int/lit8 p2, v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    move v3, v1

    move v1, p2

    move p2, v0

    move v0, v3

    :cond_3
    add-int/lit8 p2, p2, -0x30

    :goto_0
    add-int/lit8 v2, p3, -0x1

    if-lez p3, :cond_4

    shl-int/lit8 p3, p2, 0x3

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr p3, p2

    add-int/lit8 p2, v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v1, p3

    add-int/lit8 p3, v1, -0x30

    move v1, p2

    move p2, p3

    move p3, v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    neg-int p2, p2

    :cond_5
    return p2
.end method

.method public i(Lw3/b/a/w;II)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-interface {p1, p3}, Lw3/b/a/w;->j(I)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-interface {p1, p3}, Lw3/b/a/w;->o(I)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-interface {p1, p3}, Lw3/b/a/w;->f(I)V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-interface {p1, p3}, Lw3/b/a/w;->e(I)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-interface {p1, p3}, Lw3/b/a/w;->n(I)V

    goto :goto_0

    .line 6
    :pswitch_5
    invoke-interface {p1, p3}, Lw3/b/a/w;->m(I)V

    goto :goto_0

    .line 7
    :pswitch_6
    invoke-interface {p1, p3}, Lw3/b/a/w;->h(I)V

    goto :goto_0

    .line 8
    :pswitch_7
    invoke-interface {p1, p3}, Lw3/b/a/w;->i(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
