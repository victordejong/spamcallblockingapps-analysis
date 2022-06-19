.class public final Ln3/y/b/a/w0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:[B

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I[BJJJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ltz v10, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v12

    .line 5
    :goto_0
    invoke-static {v10}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    cmp-long v10, v4, v8

    if-ltz v10, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    move v10, v12

    .line 6
    :goto_1
    invoke-static {v10}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v11, v12

    .line 7
    :cond_3
    :goto_2
    invoke-static {v11}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    move-object v8, p1

    .line 8
    iput-object v8, v0, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    move v8, p2

    .line 9
    iput v8, v0, Ln3/y/b/a/w0/k;->b:I

    if-eqz v1, :cond_4

    .line 10
    array-length v8, v1

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Ln3/y/b/a/w0/k;->c:[B

    .line 11
    iput-wide v2, v0, Ln3/y/b/a/w0/k;->e:J

    .line 12
    iput-wide v4, v0, Ln3/y/b/a/w0/k;->f:J

    .line 13
    iput-wide v6, v0, Ln3/y/b/a/w0/k;->g:J

    move-object/from16 v1, p10

    .line 14
    iput-object v1, v0, Ln3/y/b/a/w0/k;->h:Ljava/lang/String;

    move/from16 v1, p11

    .line 15
    iput v1, v0, Ln3/y/b/a/w0/k;->i:I

    .line 16
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Ln3/y/b/a/w0/k;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 13

    const/4 v2, 0x1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 3
    invoke-direct/range {v0 .. v12}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget v0, p0, Ln3/y/b/a/w0/k;->b:I

    invoke-static {v0}, Ln3/y/b/a/w0/k;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y/b/a/w0/k;->c:[B

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Ln3/y/b/a/w0/k;->e:J

    iget-wide v5, p0, Ln3/y/b/a/w0/k;->f:J

    iget-wide v7, p0, Ln3/y/b/a/w0/k;->g:J

    iget-object v9, p0, Ln3/y/b/a/w0/k;->h:Ljava/lang/String;

    iget v10, p0, Ln3/y/b/a/w0/k;->i:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x5e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v2, v12}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v9, v11}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "DataSpec["

    const-string v13, " "

    invoke-static {v11, v12, v0, v13, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v0, v1, v2, v1}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v5, v6, v1}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
