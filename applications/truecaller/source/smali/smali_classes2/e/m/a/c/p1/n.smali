.class public final Le/m/a/c/p1/n;
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

    .line 3
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

    .line 4
    :goto_0
    invoke-static {v10}, Ln3/g0/y;->r(Z)V

    cmp-long v10, v4, v8

    if-ltz v10, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    move v10, v12

    .line 5
    :goto_1
    invoke-static {v10}, Ln3/g0/y;->r(Z)V

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v11, v12

    .line 6
    :cond_3
    :goto_2
    invoke-static {v11}, Ln3/g0/y;->r(Z)V

    move-object v8, p1

    .line 7
    iput-object v8, v0, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    move v8, p2

    .line 8
    iput v8, v0, Le/m/a/c/p1/n;->b:I

    if-eqz v1, :cond_4

    .line 9
    array-length v8, v1

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Le/m/a/c/p1/n;->c:[B

    .line 10
    iput-wide v2, v0, Le/m/a/c/p1/n;->e:J

    .line 11
    iput-wide v4, v0, Le/m/a/c/p1/n;->f:J

    .line 12
    iput-wide v6, v0, Le/m/a/c/p1/n;->g:J

    move-object/from16 v1, p10

    .line 13
    iput-object v1, v0, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    move/from16 v1, p11

    .line 14
    iput v1, v0, Le/m/a/c/p1/n;->i:I

    .line 15
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Le/m/a/c/p1/n;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 13

    const/4 v2, 0x1

    .line 1
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

    .line 2
    invoke-direct/range {v0 .. v12}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

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
.method public b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/p1/n;->i:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(JJ)Le/m/a/c/p1/n;
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 1
    iget-wide v1, v0, Le/m/a/c/p1/n;->g:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Le/m/a/c/p1/n;

    iget-object v4, v0, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    iget v5, v0, Le/m/a/c/p1/n;->b:I

    iget-object v6, v0, Le/m/a/c/p1/n;->c:[B

    iget-wide v2, v0, Le/m/a/c/p1/n;->e:J

    add-long v7, v2, p1

    iget-wide v2, v0, Le/m/a/c/p1/n;->f:J

    add-long v9, v2, p1

    iget-object v13, v0, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    iget v14, v0, Le/m/a/c/p1/n;->i:I

    iget-object v15, v0, Le/m/a/c/p1/n;->d:Ljava/util/Map;

    move-object v3, v1

    move-wide/from16 v11, p3

    invoke-direct/range {v3 .. v15}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DataSpec["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Le/m/a/c/p1/n;->b:I

    invoke-static {v1}, Le/m/a/c/p1/n;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/m/a/c/p1/n;->c:[B

    .line 4
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Le/m/a/c/p1/n;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Le/m/a/c/p1/n;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Le/m/a/c/p1/n;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/m/a/c/p1/n;->i:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
