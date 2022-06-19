.class public Lcom/huawei/hms/framework/network/grs/g/g;
.super Lcom/huawei/hms/framework/network/grs/g/a;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/framework/network/grs/g/a;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/g/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "g"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/c;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/huawei/hms/framework/network/grs/g/a;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/c;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/g/d;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/g;->i:Ljava/lang/String;

    const-string v2, "Post call execute"

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hms/framework/network/grs/h/f/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string v6, "create HttpsURLConnection instance by url return null."

    invoke-static {v0, v6}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    :cond_0
    const-string v0, "Content-Type"

    const-string v8, "application/json; charset=UTF-8"

    invoke-virtual {v6, v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->b()Lcom/huawei/hms/framework/network/grs/g/c;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ""

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->b()Lcom/huawei/hms/framework/network/grs/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/g/c;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    move-object v0, v8

    :goto_0
    const-string v9, "If-None-Match"

    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v10, :cond_2

    const-string v0, "&"

    :cond_2
    :try_start_4
    invoke-virtual {v6, v9, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->f()Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v0

    const-string v9, "services"

    invoke-virtual {v0, v9, v8}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/huawei/hms/framework/network/grs/h/f/a;->a(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v0, 0xc8

    if-ne v9, v0, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v7}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    if-nez v7, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_2
    new-instance v6, Lcom/huawei/hms/framework/network/grs/g/d;

    sub-long v12, v11, v4

    move-object v8, v6

    move-object v11, v0

    invoke-direct/range {v8 .. v13}, Lcom/huawei/hms/framework/network/grs/g/d;-><init>(ILjava/util/Map;[BJ)V

    iput-object v6, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide/from16 v16, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide v4, v2

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v8, Lcom/huawei/hms/framework/network/grs/g/g;->i:Ljava/lang/String;

    const-string v9, "RequestCallableV2 run task catch IOException"

    invoke-static {v8, v9, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v8, Lcom/huawei/hms/framework/network/grs/g/d;

    sub-long/2addr v6, v2

    invoke-direct {v8, v0, v6, v7}, Lcom/huawei/hms/framework/network/grs/g/d;-><init>(Ljava/lang/Exception;J)V

    iput-object v8, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    move-wide v2, v4

    :goto_4
    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/hms/framework/network/grs/g/d;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/huawei/hms/framework/network/grs/g/d;->a(I)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/framework/network/grs/g/d;->b(J)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    invoke-virtual {v0, v14, v15}, Lcom/huawei/hms/framework/network/grs/g/d;->a(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->b()Lcom/huawei/hms/framework/network/grs/g/c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/a;->b()Lcom/huawei/hms/framework/network/grs/g/c;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    invoke-virtual {v0, v2}, Lcom/huawei/hms/framework/network/grs/g/c;->a(Lcom/huawei/hms/framework/network/grs/g/d;)V

    :cond_5
    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/a;->a:Lcom/huawei/hms/framework/network/grs/g/d;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/g;->call()Lcom/huawei/hms/framework/network/grs/g/d;

    move-result-object v0

    return-object v0
.end method
