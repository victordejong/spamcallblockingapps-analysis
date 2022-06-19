.class public Le/i/b/i2/a;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final c:Le/i/b/q2/h;

.field public final d:Landroid/content/Context;

.field public final e:Le/i/b/p1/a;

.field public final f:Le/i/b/s2/b;

.field public final g:Le/i/b/i2/g;

.field public final h:Le/i/b/u2/y;

.field public final i:Le/i/b/l2/b;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/i/b/p1/a;Le/i/b/s2/b;Le/i/b/i2/g;Le/i/b/u2/y;Le/i/b/l2/b;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    .line 2
    const-class v0, Le/i/b/i2/a;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/i2/a;->c:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/i2/a;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/i/b/i2/a;->e:Le/i/b/p1/a;

    .line 5
    iput-object p3, p0, Le/i/b/i2/a;->f:Le/i/b/s2/b;

    .line 6
    iput-object p4, p0, Le/i/b/i2/a;->g:Le/i/b/i2/g;

    .line 7
    iput-object p5, p0, Le/i/b/i2/a;->h:Le/i/b/u2/y;

    .line 8
    iput-object p6, p0, Le/i/b/i2/a;->i:Le/i/b/l2/b;

    .line 9
    iput-object p7, p0, Le/i/b/i2/a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/i2/a;->f:Le/i/b/s2/b;

    .line 2
    invoke-virtual {v0}, Le/i/b/s2/b;->c()Le/i/b/s2/b$b;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Le/i/b/s2/b$b;->b:Z

    .line 4
    iget-object v1, p0, Le/i/b/i2/a;->f:Le/i/b/s2/b;

    invoke-virtual {v1}, Le/i/b/s2/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/i/b/i2/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Le/i/b/i2/a;->h:Le/i/b/u2/y;

    invoke-virtual {v3}, Le/i/b/u2/y;->a()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Le/i/b/i2/a;->g:Le/i/b/i2/g;

    iget-object v5, p0, Le/i/b/i2/a;->j:Ljava/lang/String;

    iget-object v6, p0, Le/i/b/i2/a;->i:Le/i/b/l2/b;

    .line 8
    iget-object v6, v6, Le/i/b/l2/b;->d:Le/i/b/l2/c/d;

    invoke-virtual {v6}, Le/i/b/l2/c/d;->a()Le/i/b/l2/c/c;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v6, v7

    goto :goto_0

    .line 9
    :cond_0
    check-cast v6, Le/i/b/l2/c/a;

    .line 10
    iget-object v6, v6, Le/i/b/l2/c/a;->a:Ljava/lang/String;

    :goto_0
    const/16 v8, 0x94b

    .line 11
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "appId"

    .line 13
    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "gaid"

    .line 14
    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "eventType"

    .line 15
    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "limitedAdTracking"

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    const-string v0, "gdpr_consent"

    .line 17
    invoke-virtual {v9, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "/appevent/v1/"

    const-string v1, "?"

    .line 18
    invoke-static {v0, v8, v1}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    :try_start_0
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    .line 22
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    .line 24
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 25
    iget-object v5, v4, Le/i/b/i2/g;->a:Le/i/b/q2/h;

    .line 26
    new-instance v6, Le/i/b/q2/f;

    const/4 v8, 0x3

    const-string v9, "Impossible to encode params string"

    invoke-direct {v6, v8, v9, v1, v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 27
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v5, 0x0

    if-lez v1, :cond_4

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Le/i/b/i2/g;->b:Le/i/b/s2/f;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "https://gum.criteo.com"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v0, "GET"

    .line 32
    invoke-virtual {v4, v1, v3, v0}, Le/i/b/i2/g;->c(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 33
    invoke-static {v0}, Le/i/b/i2/g;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 34
    :try_start_1
    invoke-static {v0}, Ln3/g0/y;->g(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    .line 37
    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 39
    :cond_6
    iget-object v0, p0, Le/i/b/i2/a;->c:Le/i/b/q2/h;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v3, "App event response: %s"

    invoke-virtual {v0, v3, v2}, Le/i/b/q2/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "throttleSec"

    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 41
    iget-object v2, p0, Le/i/b/i2/a;->e:Le/i/b/p1/a;

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    iget-object v1, v2, Le/i/b/p1/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, v2, Le/i/b/p1/a;->c:Le/i/b/e2;

    invoke-interface {v2}, Le/i/b/e2;->a()J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_4

    .line 43
    :cond_7
    iget-object v0, p0, Le/i/b/i2/a;->e:Le/i/b/p1/a;

    .line 44
    iget-object v1, v0, Le/i/b/p1/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, v0, Le/i/b/p1/a;->c:Le/i/b/e2;

    invoke-interface {v0}, Le/i/b/e2;->a()J

    move-result-wide v2

    int-to-long v4, v5

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_4
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    .line 45
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v1
.end method
