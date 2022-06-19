.class public final Lcom/razorpay/p$_5$;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/razorpay/ResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/razorpay/Callback;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/razorpay/Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/razorpay/p$_5$;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/razorpay/p$_5$;->c:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lcom/razorpay/p$_5$;->d:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/razorpay/p$_5$;->a:Lcom/razorpay/Callback;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 2

    .line 1
    new-instance v0, Lcom/razorpay/p$_5$;

    invoke-direct {v0, p1}, Lcom/razorpay/p$_5$;-><init>(Lcom/razorpay/Callback;)V

    const-string p1, "GET"

    .line 2
    iput-object p1, v0, Lcom/razorpay/p$_5$;->b:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/razorpay/Callback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/razorpay/p$_5$;

    invoke-direct {v0, p3}, Lcom/razorpay/p$_5$;-><init>(Lcom/razorpay/Callback;)V

    const-string p3, "POST"

    .line 9
    iput-object p3, v0, Lcom/razorpay/p$_5$;->b:Ljava/lang/String;

    .line 10
    iput-object p1, v0, Lcom/razorpay/p$_5$;->d:Ljava/lang/String;

    .line 11
    iput-object p2, v0, Lcom/razorpay/p$_5$;->c:Ljava/util/Map;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/razorpay/Callback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/razorpay/p$_5$;

    invoke-direct {v0, p2}, Lcom/razorpay/p$_5$;-><init>(Lcom/razorpay/Callback;)V

    const-string p2, "GET"

    .line 5
    iput-object p2, v0, Lcom/razorpay/p$_5$;->b:Ljava/lang/String;

    .line 6
    iput-object p1, v0, Lcom/razorpay/p$_5$;->c:Ljava/util/Map;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private varargs a([Ljava/lang/String;)Lcom/razorpay/ResponseObject;
    .locals 6

    const-string v0, "error"

    .line 13
    new-instance v1, Lcom/razorpay/ResponseObject;

    invoke-direct {v1}, Lcom/razorpay/ResponseObject;-><init>()V

    const/4 v2, 0x0

    .line 14
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 16
    iget-object v3, p0, Lcom/razorpay/p$_5$;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/razorpay/p$_5$;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/razorpay/p$_5$;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 22
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 23
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/razorpay/p$_5$;->d:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    const/16 v3, 0x3a98

    .line 24
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    .line 25
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 26
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 27
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 28
    invoke-virtual {v1, v3}, Lcom/razorpay/ResponseObject;->setResponseCode(I)V

    const/16 v4, 0x190

    if-lt v3, v4, :cond_2

    .line 29
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 31
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/razorpay/ResponseObject;->setHeaders(Ljava/util/Map;)V

    .line 32
    invoke-static {v2}, Lcom/razorpay/p$_5$;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/razorpay/ResponseObject;->setResponseResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 33
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 36
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v1

    :goto_3
    if-eqz v2, :cond_4

    .line 38
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_4
    :goto_4
    throw p1
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/razorpay/p$_5$;->a([Ljava/lang/String;)Lcom/razorpay/ResponseObject;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/razorpay/ResponseObject;

    .line 2
    iget-object v0, p0, Lcom/razorpay/p$_5$;->a:Lcom/razorpay/Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/razorpay/Callback;->run(Lcom/razorpay/ResponseObject;)V

    :cond_0
    return-void
.end method
