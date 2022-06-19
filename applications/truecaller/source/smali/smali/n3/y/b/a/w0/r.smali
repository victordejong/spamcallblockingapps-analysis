.class public Ln3/y/b/a/w0/r;
.super Ln3/y/b/a/w0/e;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/h;


# static fields
.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ln3/y/b/a/w0/y;

.field public final j:Ln3/y/b/a/w0/y;

.field public k:Ln3/y/b/a/w0/k;

.field public l:Ljava/net/HttpURLConnection;

.field public m:Ljava/io/InputStream;

.field public n:Z

.field public o:I

.field public p:J

.field public q:J

.field public r:J

.field public s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/w0/r;->t:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ln3/y/b/a/w0/r;->u:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLn3/y/b/a/w0/y;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ln3/y/b/a/w0/e;-><init>(Z)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Ln3/y/b/a/w0/r;->h:Ljava/lang/String;

    .line 4
    new-instance p1, Ln3/y/b/a/w0/y;

    invoke-direct {p1}, Ln3/y/b/a/w0/y;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/w0/r;->j:Ln3/y/b/a/w0/y;

    .line 5
    iput p2, p0, Ln3/y/b/a/w0/r;->f:I

    .line 6
    iput p3, p0, Ln3/y/b/a/w0/r;->g:I

    .line 7
    iput-boolean p4, p0, Ln3/y/b/a/w0/r;->e:Z

    .line 8
    iput-object p5, p0, Ln3/y/b/a/w0/r;->i:Ln3/y/b/a/w0/y;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static i(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/net/HttpURLConnection;J)V
    .locals 2

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Ln3/y/b/a/w0/k;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/w0/w;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Unable to connect to "

    .line 1
    iput-object v2, v1, Ln3/y/b/a/w0/r;->k:Ln3/y/b/a/w0/k;

    const-wide/16 v4, 0x0

    .line 2
    iput-wide v4, v1, Ln3/y/b/a/w0/r;->s:J

    .line 3
    iput-wide v4, v1, Ln3/y/b/a/w0/r;->r:J

    .line 4
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/w0/e;->f(Ln3/y/b/a/w0/k;)V

    const/4 v6, 0x1

    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/w0/r;->j(Ln3/y/b/a/w0/k;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Ln3/y/b/a/w0/r;->o:I

    .line 7
    iget-object v0, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 8
    iget v3, v1, Ln3/y/b/a/w0/r;->o:I

    const/16 v7, 0xc8

    if-lt v3, v7, :cond_9

    const/16 v8, 0x12b

    if-le v3, v8, :cond_0

    goto/16 :goto_4

    .line 9
    :cond_0
    iget-object v0, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 10
    iget v0, v1, Ln3/y/b/a/w0/r;->o:I

    if-ne v0, v7, :cond_1

    iget-wide v7, v2, Ln3/y/b/a/w0/k;->f:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v4

    :goto_0
    iput-wide v7, v1, Ln3/y/b/a/w0/r;->p:J

    .line 11
    iget-object v0, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Encoding"

    .line 12
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gzip"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-wide v7, v2, Ln3/y/b/a/w0/k;->g:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-eqz v3, :cond_2

    .line 15
    iput-wide v7, v1, Ln3/y/b/a/w0/r;->q:J

    goto/16 :goto_3

    .line 16
    :cond_2
    iget-object v3, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    const-string v7, "Content-Length"

    .line 17
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 19
    :try_start_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 20
    :catch_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    :cond_3
    move-wide v11, v9

    :goto_1
    const-string v8, "Content-Range"

    .line 21
    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 23
    sget-object v8, Ln3/y/b/a/w0/r;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x2

    .line 25
    :try_start_3
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    cmp-long v4, v11, v4

    if-gez v4, :cond_4

    move-wide v11, v13

    goto :goto_2

    :cond_4
    cmp-long v4, v11, v13

    if-eqz v4, :cond_5

    .line 26
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 27
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 28
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    :cond_5
    :goto_2
    cmp-long v3, v11, v9

    if-eqz v3, :cond_6

    .line 29
    iget-wide v3, v1, Ln3/y/b/a/w0/r;->p:J

    sub-long v9, v11, v3

    .line 30
    :cond_6
    iput-wide v9, v1, Ln3/y/b/a/w0/r;->q:J

    goto :goto_3

    .line 31
    :cond_7
    iget-wide v3, v2, Ln3/y/b/a/w0/k;->g:J

    iput-wide v3, v1, Ln3/y/b/a/w0/r;->q:J

    .line 32
    :goto_3
    :try_start_4
    iget-object v3, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    .line 33
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v3, v1, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 34
    :cond_8
    iput-boolean v6, v1, Ln3/y/b/a/w0/r;->n:Z

    .line 35
    invoke-virtual/range {p0 .. p1}, Ln3/y/b/a/w0/e;->g(Ln3/y/b/a/w0/k;)V

    .line 36
    iget-wide v2, v1, Ln3/y/b/a/w0/r;->q:J

    return-wide v2

    :catch_2
    move-exception v0

    .line 37
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/w0/r;->h()V

    .line 38
    new-instance v3, Ln3/y/b/a/w0/w;

    invoke-direct {v3, v0, v2, v6}, Ln3/y/b/a/w0/w;-><init>(Ljava/io/IOException;Ln3/y/b/a/w0/k;I)V

    throw v3

    .line 39
    :cond_9
    :goto_4
    iget-object v3, v1, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 40
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/w0/r;->h()V

    .line 41
    new-instance v4, Ln3/y/b/a/w0/x;

    iget v5, v1, Ln3/y/b/a/w0/r;->o:I

    invoke-direct {v4, v5, v0, v3, v2}, Ln3/y/b/a/w0/x;-><init>(ILjava/lang/String;Ljava/util/Map;Ln3/y/b/a/w0/k;)V

    .line 42
    iget v0, v1, Ln3/y/b/a/w0/r;->o:I

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_a

    .line 43
    new-instance v0, Ln3/y/b/a/w0/i;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ln3/y/b/a/w0/i;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    :cond_a
    throw v4

    :catch_3
    move-exception v0

    .line 45
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/w0/r;->h()V

    .line 46
    new-instance v4, Ln3/y/b/a/w0/w;

    iget-object v5, v2, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_5
    invoke-direct {v4, v3, v0, v2, v6}, Ln3/y/b/a/w0/w;-><init>(Ljava/lang/String;Ljava/io/IOException;Ln3/y/b/a/w0/k;I)V

    throw v4

    :catch_4
    move-exception v0

    .line 47
    new-instance v4, Ln3/y/b/a/w0/w;

    iget-object v5, v2, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_c
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_6
    invoke-direct {v4, v3, v0, v2, v6}, Ln3/y/b/a/w0/w;-><init>(Ljava/lang/String;Ljava/io/IOException;Ln3/y/b/a/w0/k;I)V

    throw v4
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/w0/w;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, p0, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    .line 3
    iget-wide v3, p0, Ln3/y/b/a/w0/r;->q:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Ln3/y/b/a/w0/r;->s:J

    sub-long/2addr v3, v5

    .line 4
    :goto_0
    invoke-static {v2, v3, v4}, Ln3/y/b/a/w0/r;->l(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v2, p0, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    :try_start_2
    new-instance v3, Ln3/y/b/a/w0/w;

    iget-object v4, p0, Ln3/y/b/a/w0/r;->k:Ln3/y/b/a/w0/k;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Ln3/y/b/a/w0/w;-><init>(Ljava/io/IOException;Ln3/y/b/a/w0/k;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    :goto_1
    iput-object v1, p0, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    .line 8
    invoke-virtual {p0}, Ln3/y/b/a/w0/r;->h()V

    .line 9
    iget-boolean v1, p0, Ln3/y/b/a/w0/r;->n:Z

    if-eqz v1, :cond_2

    .line 10
    iput-boolean v0, p0, Ln3/y/b/a/w0/r;->n:Z

    .line 11
    invoke-virtual {p0}, Ln3/y/b/a/w0/e;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    .line 12
    iput-object v1, p0, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    .line 13
    invoke-virtual {p0}, Ln3/y/b/a/w0/r;->h()V

    .line 14
    iget-boolean v1, p0, Ln3/y/b/a/w0/r;->n:Z

    if-eqz v1, :cond_3

    .line 15
    iput-boolean v0, p0, Ln3/y/b/a/w0/r;->n:Z

    .line 16
    invoke-virtual {p0}, Ln3/y/b/a/w0/e;->e()V

    :cond_3
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/y/b/a/w0/r;->l:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final j(Ln3/y/b/a/w0/k;)Ljava/net/HttpURLConnection;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Ln3/y/b/a/w0/k;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget v2, v0, Ln3/y/b/a/w0/k;->b:I

    .line 3
    iget-object v3, v0, Ln3/y/b/a/w0/k;->c:[B

    .line 4
    iget-wide v14, v0, Ln3/y/b/a/w0/k;->f:J

    .line 5
    iget-wide v12, v0, Ln3/y/b/a/w0/k;->g:J

    .line 6
    iget v4, v0, Ln3/y/b/a/w0/k;->i:I

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    move/from16 v16, v6

    goto :goto_0

    :cond_0
    move/from16 v16, v7

    :goto_0
    const/4 v5, 0x2

    and-int/2addr v4, v5

    move-object/from16 v11, p0

    if-ne v4, v5, :cond_1

    move/from16 v17, v6

    goto :goto_1

    :cond_1
    move/from16 v17, v7

    .line 7
    :goto_1
    iget-boolean v4, v11, Ln3/y/b/a/w0/r;->e:Z

    if-nez v4, :cond_2

    const/4 v10, 0x1

    .line 8
    iget-object v9, v0, Ln3/y/b/a/w0/k;->d:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    move-object v12, v9

    move/from16 v9, v17

    move-object v11, v12

    invoke-virtual/range {v0 .. v11}, Ln3/y/b/a/w0/r;->k(Ljava/net/URL;I[BJJZZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_2
    add-int/lit8 v10, v7, 0x1

    const/16 v4, 0x14

    if-gt v7, v4, :cond_8

    const/16 v18, 0x0

    .line 9
    iget-object v11, v0, Ln3/y/b/a/w0/k;->d:Ljava/util/Map;

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move-wide v8, v14

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-wide v10, v12

    move-wide/from16 v21, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v23, v14

    move/from16 v14, v18

    move-object/from16 v15, v20

    .line 10
    invoke-virtual/range {v4 .. v15}, Ln3/y/b/a/w0/r;->k(Ljava/net/URL;I[BJJZZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string v6, "Location"

    .line 12
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12f

    const/16 v8, 0x12e

    const/16 v9, 0x12d

    const/16 v10, 0x12c

    const/4 v11, 0x1

    if-eq v2, v11, :cond_3

    const/4 v12, 0x3

    if-ne v2, v12, :cond_4

    :cond_3
    if-eq v5, v10, :cond_7

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_7

    if-eq v5, v7, :cond_7

    const/16 v12, 0x133

    if-eq v5, v12, :cond_7

    const/16 v12, 0x134

    if-ne v5, v12, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_5

    if-ne v5, v7, :cond_6

    .line 13
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v6}, Ln3/y/b/a/w0/r;->i(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v3, v2

    move v2, v11

    goto :goto_4

    :cond_6
    return-object v4

    .line 15
    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    invoke-static {v1, v6}, Ln3/y/b/a/w0/r;->i(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    :goto_4
    move/from16 v7, v19

    move-wide/from16 v12, v21

    move-wide/from16 v14, v23

    goto :goto_2

    :cond_8
    move/from16 v19, v10

    .line 17
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    const-string v2, "Too many redirects: "

    move/from16 v7, v19

    invoke-static {v1, v2, v7}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Ljava/net/URL;I[BJJZZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2
    iget v0, p0, Ln3/y/b/a/w0/r;->f:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3
    iget v0, p0, Ln3/y/b/a/w0/r;->g:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v1, p0, Ln3/y/b/a/w0/r;->i:Ln3/y/b/a/w0/y;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ln3/y/b/a/w0/y;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/w0/r;->j:Ln3/y/b/a/w0/y;

    invoke-virtual {v1}, Ln3/y/b/a/w0/y;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-virtual {v0, p11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p11

    invoke-interface {p11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p11

    :goto_0
    invoke-interface {p11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p11, p4, v0

    const-wide/16 v0, -0x1

    if-nez p11, :cond_2

    cmp-long p11, p6, v0

    if-eqz p11, :cond_4

    :cond_2
    const/16 p11, 0x1b

    const-string v2, "bytes="

    const-string v3, "-"

    .line 11
    invoke-static {p11, v2, p4, p5, v3}, Le/d/c/a/a;->P1(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p11

    cmp-long v0, p6, v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p11

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p6

    add-int/lit8 p6, p6, 0x14

    invoke-static {p6, p11, p4, p5}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object p11

    :cond_3
    const-string p4, "Range"

    .line 13
    invoke-virtual {p1, p4, p11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object p4, p0, Ln3/y/b/a/w0/r;->h:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_5

    const-string p4, "gzip"

    goto :goto_1

    :cond_5
    const-string p4, "identity"

    :goto_1
    const-string p5, "Accept-Encoding"

    .line 15
    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p9, :cond_6

    const-string p4, "Icy-MetaData"

    const-string p5, "1"

    .line 16
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_6
    invoke-virtual {p1, p10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_7

    const/4 p4, 0x1

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    .line 18
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 19
    invoke-static {p2}, Ln3/y/b/a/w0/k;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 20
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 23
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method public final m()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/w0/r;->r:J

    iget-wide v2, p0, Ln3/y/b/a/w0/r;->p:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ln3/y/b/a/w0/r;->u:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    :cond_1
    :goto_0
    iget-wide v1, p0, Ln3/y/b/a/w0/r;->r:J

    iget-wide v3, p0, Ln3/y/b/a/w0/r;->p:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    sub-long/2addr v3, v1

    .line 4
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 5
    iget-object v2, p0, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7
    iget-wide v2, p0, Ln3/y/b/a/w0/r;->r:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ln3/y/b/a/w0/r;->r:J

    .line 8
    invoke-virtual {p0, v1}, Ln3/y/b/a/w0/e;->d(I)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 11
    :cond_4
    sget-object v1, Ln3/y/b/a/w0/r;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/w0/w;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ln3/y/b/a/w0/r;->m()V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Ln3/y/b/a/w0/r;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    .line 3
    iget-wide v6, p0, Ln3/y/b/a/w0/r;->s:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    :goto_0
    move p1, v5

    goto :goto_1

    :cond_1
    int-to-long v6, p3

    .line 4
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 5
    :cond_2
    iget-object v0, p0, Ln3/y/b/a/w0/r;->m:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_4

    .line 6
    iget-wide p1, p0, Ln3/y/b/a/w0/r;->q:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 8
    :cond_4
    iget-wide p2, p0, Ln3/y/b/a/w0/r;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ln3/y/b/a/w0/r;->s:J

    .line 9
    invoke-virtual {p0, p1}, Ln3/y/b/a/w0/e;->d(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ln3/y/b/a/w0/w;

    iget-object p3, p0, Ln3/y/b/a/w0/r;->k:Ln3/y/b/a/w0/k;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Ln3/y/b/a/w0/w;-><init>(Ljava/io/IOException;Ln3/y/b/a/w0/k;I)V

    throw p2
.end method
