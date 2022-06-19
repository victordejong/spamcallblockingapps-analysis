.class public final synthetic Lcom/facebook/appevents/n0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/m0/j$a;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/n0/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/facebook/appevents/n0/b;->a:Ljava/util/List;

    const-string v3, "$slaves"

    .line 1
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "file"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Lcom/facebook/appevents/n0/g;->m:Lcom/facebook/appevents/n0/g;

    .line 3
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v4, Lcom/facebook/appevents/n0/j;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 7
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    new-array v3, v0, [B

    .line 9
    invoke-virtual {v5, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 10
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    goto/16 :goto_5

    .line 11
    :cond_1
    invoke-static {v3, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 12
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    add-int/lit8 v8, v7, 0x4

    if-ge v0, v8, :cond_2

    goto/16 :goto_5

    .line 14
    :cond_2
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v5, v7, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 15
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v10, v9, [Ljava/lang/String;

    add-int/lit8 v11, v9, -0x1

    if-ltz v11, :cond_4

    move v12, v6

    :goto_0
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v12

    if-le v13, v11, :cond_3

    goto :goto_1

    :cond_3
    move v12, v13

    goto :goto_0

    :cond_4
    :goto_1
    const-string v7, "$this$sort"

    .line 19
    invoke-static {v10, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    if-le v9, v7, :cond_5

    .line 20
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 21
    :cond_5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v11, v8

    move v8, v6

    :goto_2
    if-ge v6, v9, :cond_a

    .line 22
    aget-object v12, v10, v6

    add-int/lit8 v6, v6, 0x1

    if-nez v12, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 24
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v15, v14, [I

    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_8

    const/16 v16, 0x1

    :goto_3
    add-int/lit8 v1, v8, 0x1

    .line 25
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    aput v17, v15, v8

    .line 26
    aget v8, v15, v8

    mul-int v16, v16, v8

    if-le v1, v14, :cond_7

    goto :goto_4

    :cond_7
    move v8, v1

    move-object/from16 v1, p0

    goto :goto_3

    :cond_8
    const/16 v16, 0x1

    :goto_4
    move/from16 v1, v16

    mul-int/lit8 v8, v1, 0x4

    add-int v13, v11, v8

    if-le v13, v0, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    invoke-static {v3, v11, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 28
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    new-instance v11, Lcom/facebook/appevents/n0/f;

    invoke-direct {v11, v15}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 30
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 31
    iget-object v14, v11, Lcom/facebook/appevents/n0/f;->c:[F

    const/4 v15, 0x0

    .line 32
    invoke-virtual {v8, v14, v15, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 33
    invoke-virtual {v7, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v11, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v0, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    :goto_5
    const/4 v7, 0x0

    :cond_a
    if-eqz v7, :cond_d

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-class v3, Lcom/facebook/appevents/n0/g;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    .line 37
    :cond_b
    :try_start_2
    sget-object v0, Lcom/facebook/appevents/n0/g;->n:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v4, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_6
    const/4 v0, 0x0

    .line 38
    :goto_7
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 40
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 41
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_c

    goto :goto_9

    .line 42
    :cond_c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    :goto_9
    const/4 v1, 0x0

    :cond_e
    if-nez v1, :cond_f

    goto :goto_a

    .line 43
    :cond_f
    :try_start_3
    new-instance v0, Lcom/facebook/appevents/n0/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x0

    :try_start_4
    invoke-direct {v0, v1, v3}, Lcom/facebook/appevents/n0/g;-><init>(Ljava/util/Map;Ls1/z/c/f;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :catch_1
    move-object v0, v3

    goto :goto_b

    :catch_2
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_12

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/n0/h$b;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    iget-object v4, v2, Lcom/facebook/appevents/n0/h$b;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget v4, v2, Lcom/facebook/appevents/n0/h$b;->d:I

    const-string v5, "_rule"

    .line 49
    invoke-static {v3, v4, v5}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    iget-object v4, v2, Lcom/facebook/appevents/n0/h$b;->c:Ljava/lang/String;

    .line 51
    new-instance v5, Lcom/facebook/appevents/n0/c;

    invoke-direct {v5, v2, v0}, Lcom/facebook/appevents/n0/c;-><init>(Lcom/facebook/appevents/n0/h$b;Lcom/facebook/appevents/n0/g;)V

    .line 52
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/facebook/appevents/n0/j;->a()Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_11

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_d

    .line 54
    :cond_10
    new-instance v3, Lcom/facebook/appevents/m0/j;

    invoke-direct {v3, v4, v2, v5}, Lcom/facebook/appevents/m0/j;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/appevents/m0/j$a;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c

    .line 55
    :cond_11
    :goto_d
    invoke-virtual {v5, v2}, Lcom/facebook/appevents/n0/c;->a(Ljava/io/File;)V

    goto :goto_c

    :cond_12
    return-void
.end method
