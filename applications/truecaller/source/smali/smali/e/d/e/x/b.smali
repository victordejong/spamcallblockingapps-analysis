.class public Le/d/e/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/e/i;


# static fields
.field public static final c:Z


# instance fields
.field public final a:Le/d/e/x/a;

.field public final b:Le/d/e/x/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Le/d/e/w;->a:Z

    sput-boolean v0, Le/d/e/x/b;->c:Z

    return-void
.end method

.method public constructor <init>(Le/d/e/x/a;)V
    .locals 2

    .line 1
    new-instance v0, Le/d/e/x/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Le/d/e/x/c;-><init>(I)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/d/e/x/b;->a:Le/d/e/x/a;

    .line 4
    iput-object v0, p0, Le/d/e/x/b;->b:Le/d/e/x/c;

    return-void
.end method

.method public static a(Ljava/lang/String;Le/d/e/o;Le/d/e/v;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/d/e/o<",
            "*>;",
            "Le/d/e/v;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/e/v;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/d/e/o;->getRetryPolicy()Le/d/e/s;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Le/d/e/o;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    :try_start_0
    check-cast v0, Le/d/e/f;

    .line 4
    iget v5, v0, Le/d/e/f;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Le/d/e/f;->b:I

    .line 5
    iget v6, v0, Le/d/e/f;->a:I

    int-to-float v7, v6

    iget v8, v0, Le/d/e/f;->d:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v0, Le/d/e/f;->a:I

    .line 6
    iget v0, v0, Le/d/e/f;->c:I
    :try_end_0
    .catch Le/d/e/v; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v5, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v4

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :try_start_1
    throw p2
    :try_end_1
    .catch Le/d/e/v; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 11
    throw p2
.end method

.method public static b(Ljava/util/List;Le/d/e/b$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/d/e/h;",
            ">;",
            "Le/d/e/b$a;",
            ")",
            "Ljava/util/List<",
            "Le/d/e/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/d/e/h;

    .line 4
    iget-object v2, v2, Le/d/e/h;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object p0, p1, Le/d/e/b$a;->h:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 9
    iget-object p0, p1, Le/d/e/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/e/h;

    .line 10
    iget-object v2, p1, Le/d/e/h;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    iget-object p0, p1, Le/d/e/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 14
    iget-object p0, p1, Le/d/e/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    new-instance v2, Le/d/e/h;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Le/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final c(Le/d/e/b$a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/e/b$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p1, Le/d/e/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "If-None-Match"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-wide v1, p1, Le/d/e/b$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {p1, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    .line 7
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "If-Modified-Since"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final d(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/e/t;
        }
    .end annotation

    .line 1
    new-instance v0, Le/d/e/x/j;

    iget-object v1, p0, Le/d/e/x/b;->b:Le/d/e/x/c;

    invoke-direct {v0, v1, p2}, Le/d/e/x/j;-><init>(Le/d/e/x/c;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Le/d/e/x/b;->b:Le/d/e/x/c;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Le/d/e/x/c;->a(I)[B

    move-result-object v2

    .line 3
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {v0, v2, v1, v3}, Le/d/e/x/j;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p2, p1}, Le/d/e/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object p1, p0, Le/d/e/x/b;->b:Le/d/e/x/c;

    invoke-virtual {p1, v2}, Le/d/e/x/c;->b([B)V

    .line 9
    invoke-virtual {v0}, Le/d/e/x/j;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p2, p1}, Le/d/e/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_2
    iget-object p1, p0, Le/d/e/x/b;->b:Le/d/e/x/c;

    invoke-virtual {p1, v2}, Le/d/e/x/c;->b([B)V

    .line 13
    invoke-virtual {v0}, Le/d/e/x/j;->close()V

    throw v3
.end method

.method public final e(JLe/d/e/o;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/d/e/o<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Le/d/e/x/b;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_1

    .line 3
    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p3}, Le/d/e/o;->getRetryPolicy()Le/d/e/s;

    move-result-object p2

    check-cast p2, Le/d/e/f;

    .line 6
    iget p2, p2, Le/d/e/f;->b:I

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 8
    invoke-static {p1, v0}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public f(Le/d/e/o;)Le/d/e/l;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/e/o<",
            "*>;)",
            "Le/d/e/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/e/v;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Le/d/e/o;->getCacheEntry()Le/d/e/b$a;

    move-result-object v0

    invoke-virtual {v7, v0}, Le/d/e/x/b;->c(Le/d/e/b$a;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v3, v7, Le/d/e/x/b;->a:Le/d/e/x/a;

    invoke-virtual {v3, v8, v0}, Le/d/e/x/a;->a(Le/d/e/o;Ljava/util/Map;)Le/d/e/x/e;

    move-result-object v12
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 5
    :try_start_1
    iget v14, v12, Le/d/e/x/e;->a:I

    .line 6
    iget-object v0, v12, Le/d/e/x/e;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v0, 0x130

    if-ne v14, v0, :cond_1

    .line 7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Le/d/e/o;->getCacheEntry()Le/d/e/b$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Le/d/e/l;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v19, v3, v9

    move-object v15, v0

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v21}, Le/d/e/l;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    .line 10
    :cond_0
    invoke-static {v13, v0}, Le/d/e/x/b;->b(Ljava/util/List;Le/d/e/b$a;)Ljava/util/List;

    move-result-object v27

    .line 11
    new-instance v1, Le/d/e/l;

    const/16 v22, 0x130

    iget-object v0, v0, Le/d/e/b$a;->a:[B

    const/16 v24, 0x1

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v25, v3, v9

    move-object/from16 v21, v1

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Le/d/e/l;-><init>(I[BZJLjava/util/List;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 13
    :cond_1
    :try_start_3
    iget-object v0, v12, Le/d/e/x/e;->d:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_2

    .line 14
    :try_start_4
    iget v1, v12, Le/d/e/x/e;->c:I

    .line 15
    invoke-virtual {v7, v0, v1}, Le/d/e/x/b;->d(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    move-object v14, v2

    move-object v2, v12

    move-object/from16 v18, v13

    goto :goto_5

    :cond_2
    :try_start_5
    new-array v0, v11, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    move-object/from16 v20, v0

    .line 16
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v14

    .line 17
    invoke-virtual/range {v1 .. v6}, Le/d/e/x/b;->e(JLe/d/e/o;[BI)V

    const/16 v0, 0xc8

    if-lt v14, v0, :cond_3

    const/16 v0, 0x12b

    if-gt v14, v0, :cond_3

    .line 18
    new-instance v0, Le/d/e/l;

    const/16 v16, 0x0

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    sub-long v17, v1, v9

    move-object v1, v13

    move-object v13, v0

    move-object/from16 v15, v20

    move-object/from16 v19, v1

    :try_start_7
    invoke-direct/range {v13 .. v19}, Le/d/e/l;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_3
    move-object v1, v13

    .line 20
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v13

    :goto_3
    move-object/from16 v18, v1

    move-object v2, v12

    move-object/from16 v14, v20

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v13

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    move-object/from16 v18, v1

    move-object v14, v2

    move-object v2, v12

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v18, v1

    move-object v14, v2

    :goto_5
    if-eqz v2, :cond_b

    .line 21
    iget v0, v2, Le/d/e/x/e;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Le/d/e/o;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unexpected response code %d for %s"

    .line 23
    invoke-static {v2, v1}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 24
    new-instance v1, Le/d/e/l;

    const/4 v15, 0x0

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v16, v2, v9

    move-object v12, v1

    move v13, v0

    invoke-direct/range {v12 .. v18}, Le/d/e/l;-><init>(I[BZJLjava/util/List;)V

    const/16 v2, 0x191

    if-eq v0, v2, :cond_9

    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    goto :goto_7

    :cond_4
    const/16 v2, 0x190

    if-lt v0, v2, :cond_6

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_5

    goto :goto_6

    .line 26
    :cond_5
    new-instance v0, Le/d/e/e;

    invoke-direct {v0, v1}, Le/d/e/e;-><init>(Le/d/e/l;)V

    throw v0

    :cond_6
    :goto_6
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_8

    const/16 v2, 0x257

    if-gt v0, v2, :cond_8

    .line 27
    invoke-virtual/range {p1 .. p1}, Le/d/e/o;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    new-instance v0, Le/d/e/t;

    invoke-direct {v0, v1}, Le/d/e/t;-><init>(Le/d/e/l;)V

    const-string v1, "server"

    invoke-static {v1, v8, v0}, Le/d/e/x/b;->a(Ljava/lang/String;Le/d/e/o;Le/d/e/v;)V

    goto/16 :goto_0

    .line 29
    :cond_7
    new-instance v0, Le/d/e/t;

    invoke-direct {v0, v1}, Le/d/e/t;-><init>(Le/d/e/l;)V

    throw v0

    .line 30
    :cond_8
    new-instance v0, Le/d/e/t;

    invoke-direct {v0, v1}, Le/d/e/t;-><init>(Le/d/e/l;)V

    throw v0

    .line 31
    :cond_9
    :goto_7
    new-instance v0, Le/d/e/a;

    invoke-direct {v0, v1}, Le/d/e/a;-><init>(Le/d/e/l;)V

    const-string v1, "auth"

    invoke-static {v1, v8, v0}, Le/d/e/x/b;->a(Ljava/lang/String;Le/d/e/o;Le/d/e/v;)V

    goto/16 :goto_0

    .line 32
    :cond_a
    new-instance v0, Le/d/e/k;

    invoke-direct {v0}, Le/d/e/k;-><init>()V

    const-string v1, "network"

    invoke-static {v1, v8, v0}, Le/d/e/x/b;->a(Ljava/lang/String;Le/d/e/o;Le/d/e/v;)V

    goto/16 :goto_0

    .line 33
    :cond_b
    new-instance v1, Le/d/e/m;

    invoke-direct {v1, v0}, Le/d/e/m;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad URL "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Le/d/e/o;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 35
    :catch_7
    new-instance v0, Le/d/e/u;

    invoke-direct {v0}, Le/d/e/u;-><init>()V

    const-string v1, "socket"

    invoke-static {v1, v8, v0}, Le/d/e/x/b;->a(Ljava/lang/String;Le/d/e/o;Le/d/e/v;)V

    goto/16 :goto_0
.end method
