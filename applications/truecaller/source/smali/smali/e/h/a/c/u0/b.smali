.class public Le/h/a/c/u0/b;
.super Le/h/a/c/u0/a;
.source "SourceFile"


# static fields
.field public static n:Ljavax/net/ssl/SSLSocketFactory;

.field public static o:Ljavax/net/ssl/SSLContext;


# instance fields
.field public final a:Le/h/a/c/k;

.field public b:Le/h/a/c/x0/c;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Landroid/content/Context;

.field public final e:Le/h/a/c/v;

.field public final f:Le/h/a/c/w;

.field public g:I

.field public final h:Le/h/a/c/l0/a;

.field public final i:Le/h/a/c/b0;

.field public final j:Le/h/a/c/g0;

.field public k:I

.field public final l:Le/h/a/c/a1/b;

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/w;Le/h/a/c/a1/b;Le/h/a/c/v;Le/h/a/c/l0/a;Le/h/a/c/k;Le/h/a/c/m;Le/h/a/c/a1/c;Le/h/a/c/f0;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v0, p4

    move-object/from16 v5, p6

    move-object/from16 v4, p8

    .line 1
    invoke-direct/range {p0 .. p0}, Le/h/a/c/u0/a;-><init>()V

    const/4 v3, 0x0

    .line 2
    iput v3, v6, Le/h/a/c/u0/b;->g:I

    .line 3
    iput v3, v6, Le/h/a/c/u0/b;->k:I

    .line 4
    iput v3, v6, Le/h/a/c/u0/b;->m:I

    move-object/from16 v1, p1

    .line 5
    iput-object v1, v6, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    .line 6
    iput-object v14, v6, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iput-object v15, v6, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    .line 8
    iput-object v4, v6, Le/h/a/c/u0/b;->a:Le/h/a/c/k;

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iput-object v2, v6, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    .line 10
    iput-object v0, v6, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    move-object/from16 v2, p5

    .line 11
    iput-object v2, v6, Le/h/a/c/u0/b;->l:Le/h/a/c/a1/b;

    .line 12
    iput-object v5, v6, Le/h/a/c/u0/b;->e:Le/h/a/c/v;

    move-object/from16 v2, p7

    .line 13
    iput-object v2, v6, Le/h/a/c/u0/b;->h:Le/h/a/c/l0/a;

    .line 14
    new-instance v7, Le/h/a/c/x0/e;

    invoke-direct {v7}, Le/h/a/c/x0/e;-><init>()V

    .line 15
    new-instance v8, Le/h/a/c/x0/i;

    invoke-direct {v8, v7, v14, v4}, Le/h/a/c/x0/i;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;)V

    .line 16
    new-instance v7, Le/h/a/c/x0/m;

    invoke-direct {v7, v8, v14, v0, v5}, Le/h/a/c/x0/m;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/w;Le/h/a/c/v;)V

    .line 17
    new-instance v0, Le/h/a/c/x0/h;

    invoke-direct {v0, v7, v14, v5}, Le/h/a/c/x0/h;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/v;)V

    .line 18
    new-instance v8, Le/h/a/c/x0/g;

    invoke-direct {v8, v0, v14, v4, v5}, Le/h/a/c/x0/g;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;Le/h/a/c/v;)V

    .line 19
    new-instance v16, Le/h/a/c/x0/n;

    move-object/from16 v7, v16

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Le/h/a/c/x0/n;-><init>(Le/h/a/c/x0/c;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/l0/a;Le/h/a/c/k;Le/h/a/c/v;)V

    .line 20
    new-instance v7, Le/h/a/c/x0/k;

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move v8, v3

    move-object/from16 v3, p9

    move-object v9, v5

    invoke-direct/range {v0 .. v5}, Le/h/a/c/x0/k;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/m;Le/h/a/c/k;Le/h/a/c/v;)V

    .line 21
    new-instance v1, Le/h/a/c/x0/f;

    invoke-direct {v1, v7, v14}, Le/h/a/c/x0/f;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 22
    new-instance v7, Le/h/a/c/x0/a;

    move-object v0, v7

    move-object/from16 v3, p0

    move-object/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Le/h/a/c/x0/a;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/u0/b;Le/h/a/c/a1/c;Le/h/a/c/v;)V

    .line 23
    new-instance v0, Le/h/a/c/x0/l;

    invoke-direct {v0, v7, v14, v15, v6}, Le/h/a/c/x0/l;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/u0/b;)V

    .line 24
    new-instance v1, Le/h/a/c/x0/j;

    invoke-direct {v1, v0, v14, v9, v8}, Le/h/a/c/x0/j;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/v;Z)V

    .line 25
    new-instance v0, Le/h/a/c/x0/b;

    move-object/from16 v2, p11

    invoke-direct {v0, v14, v6, v2, v1}, Le/h/a/c/x0/b;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/u0/b;Le/h/a/c/f0;Le/h/a/c/x0/c;)V

    .line 26
    iput-object v0, v6, Le/h/a/c/u0/b;->b:Le/h/a/c/x0/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/h/a/c/n0/c;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Somebody has invoked me to send the queue to CleverTap servers"

    .line 3
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_12

    .line 4
    iget-object v2, p0, Le/h/a/c/u0/b;->h:Le/h/a/c/l0/a;

    const/16 v4, 0x32

    check-cast v2, Le/h/a/c/l0/c;

    .line 5
    sget-object v5, Le/h/a/c/n0/c;->c:Le/h/a/c/n0/c;

    if-ne p2, v5, :cond_0

    .line 6
    iget-object v5, v2, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v5}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v5

    iget-object v6, v2, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-object v6, v6, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v7, "Returning Queued Notification Viewed events"

    .line 8
    invoke-virtual {v5, v6, v7}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v5, Le/h/a/c/l0/b$b;->h:Le/h/a/c/l0/b$b;

    invoke-virtual {v2, p1, v5, v4, v3}, Le/h/a/c/l0/c;->c(Landroid/content/Context;Le/h/a/c/l0/b$b;ILe/h/a/c/l0/d;)Le/h/a/c/l0/d;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 10
    :cond_0
    iget-object v5, v2, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v5}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v5

    iget-object v6, v2, Le/h/a/c/l0/c;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-object v6, v6, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v7, "Returning Queued events"

    .line 12
    invoke-virtual {v5, v6, v7}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v5, v2, Le/h/a/c/l0/c;->b:Le/h/a/c/m;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter v5

    .line 14
    :try_start_0
    sget-object v6, Le/h/a/c/l0/b$b;->b:Le/h/a/c/l0/b$b;

    invoke-virtual {v2, p1, v6, v4, v3}, Le/h/a/c/l0/c;->c(Landroid/content/Context;Le/h/a/c/l0/b$b;ILe/h/a/c/l0/d;)Le/h/a/c/l0/d;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Le/h/a/c/l0/d;->a()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 16
    iget-object v7, v3, Le/h/a/c/l0/d;->c:Le/h/a/c/l0/b$b;

    .line 17
    invoke-virtual {v7, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    sget-object v3, Le/h/a/c/l0/b$b;->c:Le/h/a/c/l0/b$b;

    invoke-virtual {v2, p1, v3, v4, v1}, Le/h/a/c/l0/c;->c(Landroid/content/Context;Le/h/a/c/l0/b$b;ILe/h/a/c/l0/d;)Le/h/a/c/l0/d;

    move-result-object v3

    .line 19
    :cond_1
    invoke-virtual {v3}, Le/h/a/c/l0/d;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v3, v1

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :goto_1
    if-eqz v3, :cond_11

    .line 20
    invoke-virtual {v3}, Le/h/a/c/l0/d;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    .line 21
    :cond_3
    iget-object v2, v3, Le/h/a/c/l0/d;->a:Lorg/json/JSONArray;

    if-eqz v2, :cond_10

    .line 22
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_4

    goto/16 :goto_6

    :cond_4
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-gtz v5, :cond_6

    :catchall_0
    :cond_5
    :goto_2
    move v2, v4

    goto/16 :goto_0

    .line 24
    :cond_6
    iget-object v5, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    invoke-virtual {v5}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 25
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 26
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v6, "CleverTap Id not finalized, unable to send queue"

    .line 27
    invoke-virtual {v2, v5, v6}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_7
    :try_start_1
    invoke-virtual {p0, v4, p2}, Le/h/a/c/u0/b;->f(ZLe/h/a/c/n0/c;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 29
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 30
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v6, "Problem configuring queue endpoint, unable to send queue"

    .line 31
    invoke-virtual {v2, v5, v6}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_8
    invoke-virtual {p0, v5}, Le/h/a/c/u0/b;->c(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    :try_start_2
    invoke-virtual {p0, p1, v2}, Le/h/a/c/u0/b;->i(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    .line 34
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v7, "Problem configuring queue request, unable to send queue"

    .line 36
    invoke-virtual {v2, v5, v7}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 37
    :try_start_3
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 38
    :goto_3
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 39
    :cond_9
    :try_start_4
    iget-object v8, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v9, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 40
    iget-object v9, v9, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send queue contains "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v8, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 43
    iget-object v8, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending queue to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 46
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 47
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_e

    const-string v2, "X-WZRK-RD"

    .line 48
    invoke-virtual {v6, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 50
    iget-object v5, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v7, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v8, "comms_dmn"

    invoke-static {v5, v7, v8, v1}, Ln3/g0/y;->B0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-eqz v5, :cond_a

    .line 52
    invoke-virtual {p0, p1, v2}, Le/h/a/c/u0/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iget-object v5, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v7, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 54
    iget-object v7, v7, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The domain has changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". The request will be retried shortly."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 56
    :try_start_5
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 57
    :cond_a
    :try_start_6
    invoke-virtual {p0, p1, v6}, Le/h/a/c/u0/b;->k(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 58
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v5, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 62
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    iget-object v5, p0, Le/h/a/c/u0/b;->b:Le/h/a/c/x0/c;

    .line 64
    iget-object v7, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    invoke-virtual {v5, v1, v2, v7}, Le/h/a/c/x0/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V

    .line 65
    :cond_c
    iget v2, p0, Le/h/a/c/u0/b;->g:I

    .line 66
    iget-object v5, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v7, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v8, "comms_last_ts"

    invoke-static {v7, v8}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 67
    iget v2, p0, Le/h/a/c/u0/b;->g:I

    .line 68
    iget-object v5, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v7, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v8, "comms_first_ts"

    invoke-static {v5, v7, v8, v4}, Ln3/g0/y;->n0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_d

    goto :goto_5

    .line 69
    :cond_d
    iget-object v5, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v7, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v7, v8}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    :goto_5
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 71
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v7, "Queue sent successfully"

    .line 72
    invoke-virtual {v2, v5, v7}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput v4, p0, Le/h/a/c/u0/b;->m:I

    .line 74
    iput v4, p0, Le/h/a/c/u0/b;->k:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 75
    :try_start_7
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 76
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move v2, v0

    goto/16 :goto_0

    .line 77
    :cond_e
    :try_start_8
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response code is not 200. It is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_2
    move-object v6, v1

    .line 78
    :catchall_3
    :try_start_9
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 79
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 80
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget v2, p0, Le/h/a/c/u0/b;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Le/h/a/c/u0/b;->m:I

    .line 82
    iget v2, p0, Le/h/a/c/u0/b;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Le/h/a/c/u0/b;->k:I

    .line 83
    iget-object v2, p0, Le/h/a/c/u0/b;->a:Le/h/a/c/k;

    check-cast v2, Le/h/a/c/o;

    .line 84
    iget-object v2, v2, Le/h/a/c/o;->c:Le/h/a/c/c0;

    .line 85
    check-cast v2, Le/h/a/c/n0/e;

    .line 86
    invoke-virtual {v2, p1}, Le/h/a/c/n0/e;->h(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v6, :cond_5

    .line 87
    :try_start_a
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :catchall_4
    move-exception p1

    if-eqz v6, :cond_f

    :try_start_b
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 88
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 89
    :catchall_5
    :cond_f
    throw p1

    .line 90
    :cond_10
    :goto_6
    iget-object p1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 91
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v0, "No events in the queue, failing"

    .line 92
    invoke-virtual {p1, p2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 93
    :cond_11
    :goto_7
    iget-object p1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 94
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v0, "No events in the queue, failing"

    .line 95
    invoke-virtual {p1, p2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_6
    move-exception p1

    .line 96
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw p1

    :cond_12
    :goto_8
    return-void
.end method

.method public b(Le/h/a/c/n0/c;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Le/h/a/c/u0/b;->e(Le/h/a/c/n0/c;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Le/h/a/c/u0/b;->m:I

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0x2710

    .line 3
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 4
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    .line 5
    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CleverTap-Account-ID"

    .line 6
    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CleverTap-Token"

    .line 9
    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 13
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    if-eqz v0, :cond_2

    .line 15
    const-class v0, Le/h/a/c/u0/b;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Le/h/a/c/u0/b;->o:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Le/h/a/c/u0/c;

    invoke-direct {v1}, Le/h/a/c/u0/c;-><init>()V

    invoke-virtual {v1}, Le/h/a/c/u0/c;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Le/h/a/c/u0/b;->o:Ljavax/net/ssl/SSLContext;

    .line 18
    :cond_0
    sget-object v1, Le/h/a/c/u0/b;->o:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_2

    .line 19
    sget-object v0, Le/h/a/c/u0/b;->n:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Le/h/a/c/u0/b;->n:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catchall_0
    :cond_1
    sget-object v0, Le/h/a/c/u0/b;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/u0/b;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v2, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/h/a/c/u0/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Le/h/a/c/u0/b;->j(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 7
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 10
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 13
    iget-object v4, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetched ARP for namespace key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " values: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v4, v5, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 18
    :catchall_0
    iget-object v1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 19
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e(Le/h/a/c/n0/c;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Le/h/a/c/n0/c;->c:Le/h/a/c/n0/c;

    :try_start_0
    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Le/h/a/c/u0/b;->m:I

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "wzrkt.com"

    const-string v4, "."

    if-eqz v2, :cond_0

    .line 6
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Le/h/a/c/n0/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 8
    :catchall_0
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v2, "comms_dmn_spiky"

    invoke-static {p1, v1, v2, v0}, Ln3/g0/y;->B0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    iget-object p1, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v2, "comms_dmn"

    invoke-static {p1, v1, v2, v0}, Ln3/g0/y;->B0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(ZLe/h/a/c/n0/c;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Le/h/a/c/u0/b;->e(Le/h/a/c/n0/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "wzrkt.com/hello"

    goto :goto_2

    :cond_3
    const-string p1, "/a1"

    .line 3
    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    .line 4
    iget-object p1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object p2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v0, "Unable to configure endpoint, domain is null"

    .line 6
    invoke-virtual {p1, p2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 7
    :cond_4
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 9
    iget-object p1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    const-string p2, "Unable to configure endpoint, accountID is null"

    invoke-virtual {p1, v0, p2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string v1, "https://"

    const-string v2, "?os=Android&t="

    .line 10
    invoke-static {v1, p1, v2}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    invoke-virtual {v1}, Le/h/a/c/b0;->n()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "&z="

    .line 11
    invoke-static {p1, v1, v0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p2}, Le/h/a/c/u0/b;->b(Le/h/a/c/n0/c;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-object p1

    .line 13
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p2, v0

    iput p2, p0, Le/h/a/c/u0/b;->g:I

    const-string p2, "&ts="

    .line 14
    invoke-static {p1, p2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 15
    iget p2, p0, Le/h/a/c/u0/b;->g:I

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old ARP Key = ARP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    const-string v2, "New ARP Key = ARP:"

    const-string v3, ":"

    invoke-static {v2, v0, v3}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    invoke-virtual {v4}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    invoke-virtual {v0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    invoke-virtual {v1}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "g"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "CRITICAL: Couldn\'t finalise on a device ID! Using error device ID instead!"

    .line 7
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "type"

    const-string v2, "meta"

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    invoke-virtual {v1}, Le/h/a/c/b0;->f()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "af"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v3, "comms_i"

    const-string v4, "IJ"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Ln3/g0/y;->r0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const-string v6, "_i"

    .line 12
    invoke-virtual {v0, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    :cond_1
    iget-object v1, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v6, "comms_j"

    const-string v7, "IJ"

    invoke-static {v1, v2, v6, v5, v7}, Ln3/g0/y;->r0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    const-string v3, "_j"

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    :cond_2
    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v2, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 17
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    if-eqz v2, :cond_f

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v3, "id"

    .line 18
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tk"

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l_ts"

    .line 20
    iget-object v2, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v4, "comms_last_ts"

    invoke-static {v2, v3, v4, v5}, Ln3/g0/y;->n0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;I)I

    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "f_ts"

    .line 22
    iget-object v2, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v4, "comms_first_ts"

    invoke-static {v2, v3, v4, v5}, Ln3/g0/y;->n0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;I)I

    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ct_pi"

    .line 24
    iget-object v2, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v4, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    iget-object v6, p0, Le/h/a/c/u0/b;->l:Le/h/a/c/a1/b;

    .line 25
    invoke-static {v2, v3, v4, v6}, Ln3/g0/y;->x0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/a1/b;)Le/h/a/c/t0/b;

    move-result-object v2

    .line 26
    invoke-interface {v2}, Le/h/a/c/t0/b;->a()Le/h/a/c/t0/c;

    move-result-object v2

    invoke-virtual {v2}, Le/h/a/c/t0/c;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ddnd"

    .line 28
    iget-object v2, p0, Le/h/a/c/u0/b;->i:Le/h/a/c/b0;

    .line 29
    invoke-virtual {v2}, Le/h/a/c/b0;->i()Le/h/a/c/b0$a;

    move-result-object v2

    .line 30
    iget-boolean v2, v2, Le/h/a/c/b0$a;->j:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 31
    iget-object v2, p0, Le/h/a/c/u0/b;->e:Le/h/a/c/v;

    .line 32
    iget-object v2, v2, Le/h/a/c/v;->m:Le/h/a/c/w0/i;

    .line 33
    invoke-virtual {v2}, Le/h/a/c/w0/i;->l()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    .line 34
    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    iget-object v1, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 36
    iget-boolean v1, v1, Le/h/a/c/w;->j:Z

    if-eqz v1, :cond_6

    const-string v1, "bk"

    .line 37
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    iget-object v1, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 39
    iput-boolean v5, v1, Le/h/a/c/w;->j:Z

    :cond_6
    const-string v1, "rtl"

    .line 40
    iget-object v2, p0, Le/h/a/c/u0/b;->h:Le/h/a/c/l0/a;

    iget-object v4, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    invoke-virtual {v2, v4}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v2

    invoke-static {v2}, Ln3/g0/y;->w0(Le/h/a/c/l0/b;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 42
    iget-boolean v2, v1, Le/h/a/c/w;->i:Z

    if-nez v2, :cond_7

    const-string v2, "rct"

    .line 43
    iget-wide v6, v1, Le/h/a/c/w;->o:J

    .line 44
    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ait"

    .line 45
    iget-object v2, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 46
    iget-wide v6, v2, Le/h/a/c/w;->a:J

    .line 47
    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_7
    const-string v1, "frs"

    .line 48
    iget-object v2, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 49
    iget-boolean v2, v2, Le/h/a/c/w;->f:Z

    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    iget-object v1, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 52
    iput-boolean v5, v1, Le/h/a/c/w;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 53
    :try_start_1
    invoke-virtual {p0}, Le/h/a/c/u0/b;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "arp"

    .line 55
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 56
    :catchall_0
    :try_start_2
    iget-object v1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 57
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_8
    :goto_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 60
    :try_start_3
    iget-object v2, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 61
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 62
    :try_start_4
    iget-object v4, v2, Le/h/a/c/w;->p:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v2

    if-eqz v4, :cond_9

    const-string v2, "us"

    .line 63
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_9
    iget-object v2, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 65
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 66
    :try_start_6
    iget-object v4, v2, Le/h/a/c/w;->q:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v2

    if-eqz v4, :cond_a

    const-string v2, "um"

    .line 67
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_a
    iget-object v2, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 69
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 70
    :try_start_8
    iget-object v4, v2, Le/h/a/c/w;->r:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v2

    if-eqz v4, :cond_b

    const-string v2, "uc"

    .line 71
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_b
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, "ref"

    .line 73
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 74
    monitor-exit v2

    throw v1

    :catchall_2
    move-exception v1

    .line 75
    monitor-exit v2

    throw v1

    :catchall_3
    move-exception v1

    .line 76
    monitor-exit v2

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 77
    :catchall_4
    :try_start_a
    iget-object v1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 78
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_c
    :goto_4
    iget-object v1, p0, Le/h/a/c/u0/b;->f:Le/h/a/c/w;

    .line 81
    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 82
    :try_start_b
    iget-object v2, v1, Le/h/a/c/w;->s:Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    monitor-exit v1

    if-eqz v2, :cond_d

    .line 83
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_d

    const-string v1, "wzrk_ref"

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_d
    iget-object v1, p0, Le/h/a/c/u0/b;->e:Le/h/a/c/v;

    .line 86
    iget-object v1, v1, Le/h/a/c/v;->a:Le/h/a/c/d0;

    if-eqz v1, :cond_e

    .line 87
    invoke-virtual {v1, p1, v0}, Le/h/a/c/d0;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_5

    .line 88
    :cond_e
    iget-object p1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 89
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "controllerManager.getInAppFCManager() is NULL, not Attaching InAppFC to Header"

    .line 90
    invoke-virtual {p1, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_5
    move-exception p1

    .line 92
    monitor-exit v1

    throw p1

    .line 93
    :cond_f
    :goto_6
    iget-object p1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    const-string v0, "Account ID/token not found, unable to configure queue request"

    .line 94
    invoke-virtual {p1, v2, v0}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const/4 p1, 0x0

    return-object p1

    .line 95
    :catchall_6
    iget-object p1, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 96
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 8

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    invoke-static {v0, p2}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 2
    iget-object v0, p0, Le/h/a/c/u0/b;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 7
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 8
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 10
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    const-string v6, "ARP update for key "

    if-eqz v5, :cond_2

    .line 11
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x64

    if-ge v5, v7, :cond_1

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v4, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 15
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rejected (string value too long)"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v4, v5, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 20
    :cond_3
    iget-object v4, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v5, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    iget-object v5, v5, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 22
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rejected (invalid data type)"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v4, v5, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :cond_4
    iget-object v2, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v3, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 26
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed ARP update for namespace key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :catchall_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method public k(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 4

    const-string v0, "X-WZRK-MUTE"

    .line 1
    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "true"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v2}, Le/h/a/c/u0/b;->m(Landroid/content/Context;Z)V

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v1}, Le/h/a/c/u0/b;->m(Landroid/content/Context;Z)V

    :cond_1
    const-string v0, "X-WZRK-RD"

    .line 6
    invoke-virtual {p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "X-WZRK-SPIKY-RD"

    .line 8
    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, v1}, Le/h/a/c/u0/b;->m(Landroid/content/Context;Z)V

    .line 10
    invoke-virtual {p0, p1, v0}, Le/h/a/c/u0/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p2, :cond_3

    .line 11
    invoke-virtual {p0, p1, v0}, Le/h/a/c/u0/b;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1, p2}, Le/h/a/c/u0/b;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting domain to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v1, "comms_dmn"

    invoke-static {v0, v1}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ln3/g0/y;->F1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m(Landroid/content/Context;Z)V
    .locals 5

    const-string v0, "comms_mtd"

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p2, v1

    .line 2
    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1, v0}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Le/h/a/c/u0/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p2

    invoke-virtual {p2}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object p2

    .line 5
    new-instance v0, Le/h/a/c/u0/b$a;

    invoke-direct {v0, p0, p1}, Le/h/a/c/u0/b$a;-><init>(Le/h/a/c/u0/b;Landroid/content/Context;)V

    .line 6
    iget-object p1, p2, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v1, Le/h/a/c/y0/j;

    const-string v2, "CommsManager#setMuted"

    invoke-direct {v1, p2, v2, v0}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 8
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p2, v0}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b;->j:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting spiky domain to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/u0/b;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v1, "comms_dmn_spiky"

    invoke-static {v0, v1}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ln3/g0/y;->F1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
