.class public final Ln3/y/b/a/q0/w/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/c0$c;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2, v0, v0}, Landroidx/media2/exoplayer/external/Format;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Ln3/y/b/a/q0/w/g;->a:I

    .line 8
    iput-object v0, p0, Ln3/y/b/a/q0/w/g;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/q0/w/g;->a:I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/q0/w/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ILn3/y/b/a/q0/w/c0$b;)Ln3/y/b/a/q0/w/c0;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_f

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_d

    const/16 v2, 0x11

    if-eq p1, v2, :cond_b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_a

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x59

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_5

    const/16 v0, 0xac

    if-eq p1, v0, :cond_4

    const/16 v0, 0x81

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_3

    return-object v3

    :cond_0
    const/16 p1, 0x10

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v3, Ln3/y/b/a/q0/w/w;

    new-instance p1, Ln3/y/b/a/q0/w/y;

    invoke-direct {p1}, Ln3/y/b/a/q0/w/y;-><init>()V

    invoke-direct {v3, p1}, Ln3/y/b/a/q0/w/w;-><init>(Ln3/y/b/a/q0/w/v;)V

    :goto_0
    return-object v3

    :cond_2
    const/16 p1, 0x40

    .line 3
    invoke-virtual {p0, p1}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result p1

    if-nez p1, :cond_5

    return-object v3

    .line 4
    :cond_3
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/b;

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Ln3/y/b/a/q0/w/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/d;

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Ln3/y/b/a/q0/w/d;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 6
    :cond_5
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/h;

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Ln3/y/b/a/q0/w/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 7
    :cond_6
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/i;

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Ln3/y/b/a/q0/w/i;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 8
    :cond_7
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/m;

    .line 9
    new-instance v1, Ln3/y/b/a/q0/w/x;

    invoke-virtual {p0, p2}, Ln3/y/b/a/q0/w/g;->b(Ln3/y/b/a/q0/w/c0$b;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ln3/y/b/a/q0/w/x;-><init>(Ljava/util/List;)V

    .line 10
    invoke-direct {v0, v1}, Ln3/y/b/a/q0/w/m;-><init>(Ln3/y/b/a/q0/w/x;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 11
    :cond_8
    invoke-virtual {p0, v1}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 12
    :cond_9
    new-instance v3, Ln3/y/b/a/q0/w/r;

    new-instance p1, Ln3/y/b/a/q0/w/l;

    .line 13
    new-instance v0, Ln3/y/b/a/q0/w/x;

    invoke-virtual {p0, p2}, Ln3/y/b/a/q0/w/g;->b(Ln3/y/b/a/q0/w/c0$b;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ln3/y/b/a/q0/w/x;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p2}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result p2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result v1

    invoke-direct {p1, v0, p2, v1}, Ln3/y/b/a/q0/w/l;-><init>(Ln3/y/b/a/q0/w/x;ZZ)V

    invoke-direct {v3, p1}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    :goto_1
    return-object v3

    .line 15
    :cond_a
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance p2, Ln3/y/b/a/q0/w/n;

    invoke-direct {p2}, Ln3/y/b/a/q0/w/n;-><init>()V

    invoke-direct {p1, p2}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 16
    :cond_b
    invoke-virtual {p0, v0}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    .line 17
    :cond_c
    new-instance v3, Ln3/y/b/a/q0/w/r;

    new-instance p1, Ln3/y/b/a/q0/w/o;

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Ln3/y/b/a/q0/w/o;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    :goto_2
    return-object v3

    .line 18
    :cond_d
    invoke-virtual {p0, v0}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_3

    .line 19
    :cond_e
    new-instance v3, Ln3/y/b/a/q0/w/r;

    new-instance p1, Ln3/y/b/a/q0/w/f;

    const/4 v0, 0x0

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ln3/y/b/a/q0/w/f;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    :goto_3
    return-object v3

    .line 20
    :cond_f
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/p;

    iget-object p2, p2, Ln3/y/b/a/q0/w/c0$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Ln3/y/b/a/q0/w/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1

    .line 21
    :cond_10
    new-instance p1, Ln3/y/b/a/q0/w/r;

    new-instance v0, Ln3/y/b/a/q0/w/k;

    .line 22
    new-instance v1, Ln3/y/b/a/q0/w/d0;

    invoke-virtual {p0, p2}, Ln3/y/b/a/q0/w/g;->b(Ln3/y/b/a/q0/w/c0$b;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ln3/y/b/a/q0/w/d0;-><init>(Ljava/util/List;)V

    .line 23
    invoke-direct {v0, v1}, Ln3/y/b/a/q0/w/k;-><init>(Ln3/y/b/a/q0/w/d0;)V

    invoke-direct {p1, v0}, Ln3/y/b/a/q0/w/r;-><init>(Ln3/y/b/a/q0/w/j;)V

    return-object p1
.end method

.method public final b(Ln3/y/b/a/q0/w/c0$b;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/q0/w/c0$b;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x20

    .line 1
    invoke-virtual {v0, v1}, Ln3/y/b/a/q0/w/g;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Ln3/y/b/a/q0/w/g;->b:Ljava/util/List;

    return-object v1

    :cond_0
    move-object/from16 v1, p1

    .line 3
    iget-object v1, v1, Ln3/y/b/a/q0/w/c0$b;->d:[B

    .line 4
    array-length v2, v1

    .line 5
    iget-object v3, v0, Ln3/y/b/a/q0/w/g;->b:Ljava/util/List;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sub-int v6, v2, v5

    if-lez v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    .line 6
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 7
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v6, v7

    const/16 v8, 0x86

    const/4 v9, 0x1

    if-ne v5, v8, :cond_6

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v5, v7, 0x1

    .line 9
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v7, v7, 0x1f

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_6

    const/4 v10, 0x3

    const-string v11, "UTF-8"

    .line 10
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    .line 11
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v1, v5, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v5, v10

    add-int/lit8 v10, v5, 0x1

    .line 12
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v11, v5, 0x80

    if-eqz v11, :cond_1

    move v11, v9

    goto :goto_2

    :cond_1
    move v11, v4

    :goto_2
    if-eqz v11, :cond_2

    and-int/lit8 v5, v5, 0x3f

    const-string v12, "application/cea-708"

    move/from16 v18, v5

    move-object v13, v12

    goto :goto_3

    :cond_2
    const-string v5, "application/cea-608"

    move-object v13, v5

    move/from16 v18, v9

    :goto_3
    add-int/lit8 v5, v10, 0x1

    .line 13
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    add-int/2addr v5, v9

    if-ltz v5, :cond_3

    if-gt v5, v2, :cond_3

    move v12, v9

    goto :goto_4

    :cond_3
    move v12, v4

    .line 14
    :goto_4
    invoke-static {v12}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_4

    move v10, v9

    goto :goto_5

    :cond_4
    move v10, v4

    :goto_5
    new-array v11, v9, [B

    int-to-byte v10, v10

    aput-byte v10, v11, v4

    .line 15
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v22, v10

    goto :goto_6

    :cond_5
    move-object/from16 v22, v12

    :goto_6
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v10, -0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    const-wide v20, 0x7fffffffffffffffL

    move-object v11, v15

    move v15, v10

    move-object/from16 v17, v11

    .line 16
    invoke-static/range {v12 .. v22}, Landroidx/media2/exoplayer/external/Format;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 17
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    if-ltz v6, :cond_7

    if-gt v6, v2, :cond_7

    goto :goto_7

    :cond_7
    move v9, v4

    .line 18
    :goto_7
    invoke-static {v9}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    move v5, v6

    goto/16 :goto_0

    :cond_8
    return-object v3
.end method

.method public final c(I)Z
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/q0/w/g;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
