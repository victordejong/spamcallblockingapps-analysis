.class public final synthetic Le/c/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/c/a/a/c/b;

.field public final synthetic b:Le/c/a/a/b/a;


# direct methods
.method public synthetic constructor <init>(Le/c/a/a/c/b;Le/c/a/a/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/a/a/c/a;->a:Le/c/a/a/c/b;

    iput-object p2, p0, Le/c/a/a/c/a;->b:Le/c/a/a/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le/c/a/a/c/a;->a:Le/c/a/a/c/b;

    iget-object v1, p0, Le/c/a/a/c/a;->b:Le/c/a/a/b/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 3
    sget-object v4, Le/c/a/a/a;->d:Ljava/lang/String;

    .line 4
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    invoke-virtual {v0, v3}, Le/c/a/a/c/b;->b(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    invoke-virtual {v1}, Le/c/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 12
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 13
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 14
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :try_start_3
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    invoke-virtual {v0, v6, v5, v3}, Le/c/a/a/c/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v6

    goto :goto_0

    :catch_0
    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v5, v2

    goto :goto_0

    :catch_1
    :cond_0
    move-object v5, v2

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v5, v3

    :goto_0
    invoke-virtual {v0, v2, v5, v3}, Le/c/a/a/c/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/net/ssl/HttpsURLConnection;)V

    .line 18
    throw v1

    :catch_2
    move-object v3, v2

    move-object v5, v3

    .line 19
    :catch_3
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v5, v3}, Le/c/a/a/c/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/net/ssl/HttpsURLConnection;)V

    :goto_2
    return-void
.end method
