.class public Le/i/b/u2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field private final c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "impId"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "placementId"
    .end annotation
.end field

.field private final e:Ljava/lang/Integer;
    .annotation runtime Le/m/e/d0/b;
        value = "zoneId"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "cpm"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "currency"
    .end annotation
.end field

.field private final h:I
    .annotation runtime Le/m/e/d0/b;
        value = "width"
    .end annotation
.end field

.field private final i:I
    .annotation runtime Le/m/e/d0/b;
        value = "height"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "displayUrl"
    .end annotation
.end field

.field private final k:Le/i/b/u2/c/n;
    .annotation runtime Le/m/e/d0/b;
        value = "native"
    .end annotation
.end field

.field private l:I
    .annotation runtime Le/m/e/d0/b;
        value = "ttl"
    .end annotation
.end field

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "0.0"

    const-wide/16 v1, 0x0

    const-string v3, "cpm"

    .line 1
    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Le/i/b/u2/w;->c:Ljava/lang/String;

    iput-object v3, p0, Le/i/b/u2/w;->d:Ljava/lang/String;

    iput-object v3, p0, Le/i/b/u2/w;->e:Ljava/lang/Integer;

    iput-object v0, p0, Le/i/b/u2/w;->f:Ljava/lang/String;

    iput-object v3, p0, Le/i/b/u2/w;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Le/i/b/u2/w;->h:I

    iput v0, p0, Le/i/b/u2/w;->i:I

    iput-object v3, p0, Le/i/b/u2/w;->j:Ljava/lang/String;

    iput-object v3, p0, Le/i/b/u2/w;->k:Le/i/b/u2/c/n;

    iput v0, p0, Le/i/b/u2/w;->l:I

    iput-wide v1, p0, Le/i/b/u2/w;->m:J

    .line 3
    new-instance v0, Le/i/b/u2/u;

    invoke-direct {v0, p0}, Le/i/b/u2/u;-><init>(Le/i/b/u2/w;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/w;->a:Ls1/g;

    .line 4
    new-instance v0, Le/i/b/u2/v;

    invoke-direct {v0, p0}, Le/i/b/u2/v;-><init>(Le/i/b/u2/w;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/w;->b:Ls1/g;

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Le/i/b/u2/w;
    .locals 3

    const-string v0, "json"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->c()Le/i/b/s2/j;

    move-result-object v0

    const-string v1, "DependencyProvider.getIn\u2026).provideJsonSerializer()"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "json.toString()"

    invoke-static {p0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 5
    :try_start_0
    const-class v2, Le/i/b/u2/w;

    invoke-virtual {v0, v2, v1}, Le/i/b/s2/j;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "jsonSerializer.read(CdbR\u2026eSlot::class.java, input)"

    invoke-static {v0, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/i/b/u2/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, p0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/i/b/u2/w;->l:I

    return-void
.end method

.method public d(Le/i/b/e2;)Z
    .locals 4

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/i/b/u2/w;->l:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 2
    iget-wide v2, p0, Le/i/b/u2/w;->m:J

    add-long/2addr v0, v2

    .line 3
    invoke-interface {p1}, Le/i/b/e2;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Le/i/b/u2/w;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/i/b/u2/w;

    if-eqz v0, :cond_0

    check-cast p1, Le/i/b/u2/w;

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->c:Ljava/lang/String;

    iget-object v1, p1, Le/i/b/u2/w;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/i/b/u2/w;->d:Ljava/lang/String;

    iget-object v1, p1, Le/i/b/u2/w;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/i/b/u2/w;->e:Ljava/lang/Integer;

    iget-object v1, p1, Le/i/b/u2/w;->e:Ljava/lang/Integer;

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Le/i/b/u2/w;->f:Ljava/lang/String;

    iget-object v1, p1, Le/i/b/u2/w;->f:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Le/i/b/u2/w;->g:Ljava/lang/String;

    iget-object v1, p1, Le/i/b/u2/w;->g:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget v0, p0, Le/i/b/u2/w;->h:I

    iget v1, p1, Le/i/b/u2/w;->h:I

    if-ne v0, v1, :cond_0

    .line 12
    iget v0, p0, Le/i/b/u2/w;->i:I

    iget v1, p1, Le/i/b/u2/w;->i:I

    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Le/i/b/u2/w;->j:Ljava/lang/String;

    iget-object v1, p1, Le/i/b/u2/w;->j:Ljava/lang/String;

    .line 14
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Le/i/b/u2/w;->k:Le/i/b/u2/c/n;

    iget-object v1, p1, Le/i/b/u2/w;->k:Le/i/b/u2/c/n;

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget v0, p0, Le/i/b/u2/w;->l:I

    iget v1, p1, Le/i/b/u2/w;->l:I

    if-ne v0, v1, :cond_0

    .line 18
    iget-wide v0, p0, Le/i/b/u2/w;->m:J

    iget-wide v2, p1, Le/i/b/u2/w;->m:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Le/i/b/u2/w;->i:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/i/b/u2/w;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Le/i/b/u2/w;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Le/i/b/u2/w;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v2, p0, Le/i/b/u2/w;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v2, p0, Le/i/b/u2/w;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v2, p0, Le/i/b/u2/w;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v2, p0, Le/i/b/u2/w;->j:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v2, p0, Le/i/b/u2/w;->k:Le/i/b/u2/c/n;

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v1, p0, Le/i/b/u2/w;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-wide v1, p0, Le/i/b/u2/w;->m:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Le/i/b/u2/c/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->k:Le/i/b/u2/c/n;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Le/i/b/u2/w;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Le/i/b/u2/w;->h:I

    return v0
.end method

.method public m()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/w;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public n()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    .line 2
    :goto_1
    invoke-virtual {p0}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v5, v5, v2

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-eqz v5, :cond_3

    .line 4
    iget v5, p0, Le/i/b/u2/w;->l:I

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v4

    .line 5
    :goto_3
    invoke-virtual {p0}, Le/i/b/u2/w;->e()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 6
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v2, v6, v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    if-eqz v2, :cond_5

    .line 7
    iget v2, p0, Le/i/b/u2/w;->l:I

    if-lez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v4

    :goto_5
    if-nez v0, :cond_d

    if-eqz v5, :cond_6

    goto :goto_a

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_b

    .line 8
    :cond_7
    iget-object v0, p0, Le/i/b/u2/w;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Le/i/b/u2/w;->j:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_8

    .line 11
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    const/4 v5, 0x7

    if-le v2, v3, :cond_9

    .line 12
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v1

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_6
    if-nez v2, :cond_b

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_a

    const/16 v2, 0x8

    .line 14
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v4

    :goto_7
    if-eqz v0, :cond_c

    :cond_b
    move v0, v1

    goto :goto_9

    :cond_c
    :goto_8
    move v0, v4

    :goto_9
    if-eqz v0, :cond_d

    goto :goto_b

    :cond_d
    :goto_a
    move v1, v4

    :cond_e
    :goto_b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CdbResponseSlot(impressionId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/i/b/u2/w;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/i/b/u2/w;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/i/b/u2/w;->e:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Le/i/b/u2/w;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Le/i/b/u2/w;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Le/i/b/u2/w;->h:I

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Le/i/b/u2/w;->i:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Le/i/b/u2/w;->j:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Le/i/b/u2/w;->k:Le/i/b/u2/c/n;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ttlInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Le/i/b/u2/w;->l:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOfDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Le/i/b/u2/w;->m:J

    const-string v3, ")"

    .line 22
    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
