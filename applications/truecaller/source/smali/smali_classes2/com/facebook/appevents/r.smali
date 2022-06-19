.class public final Lcom/facebook/appevents/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/r$b;,
        Lcom/facebook/appevents/r$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0002\'(BE\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eB)\u0008\u0012\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0006\u0010\u001e\u001a\u00020\nJ\u0006\u0010\u001f\u001a\u00020\u0017J;\u0010 \u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\u0003H\u0016J\u001e\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030$2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010%\u001a\u00020&H\u0002R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006)"
    }
    d2 = {
        "Lcom/facebook/appevents/AppEvent;",
        "Ljava/io/Serializable;",
        "contextName",
        "",
        "eventName",
        "valueToSum",
        "",
        "parameters",
        "Landroid/os/Bundle;",
        "isImplicitlyLogged",
        "",
        "isInBackground",
        "currentSessionId",
        "Ljava/util/UUID;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V",
        "jsonString",
        "isImplicit",
        "inBackground",
        "checksum",
        "(Ljava/lang/String;ZZLjava/lang/String;)V",
        "isChecksumValid",
        "()Z",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "getJsonObject",
        "()Lorg/json/JSONObject;",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "calculateChecksum",
        "getIsImplicit",
        "getJSONObject",
        "getJSONObjectForAppEvent",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Ljava/util/UUID;)Lorg/json/JSONObject;",
        "toString",
        "validateParameters",
        "",
        "writeReplace",
        "",
        "Companion",
        "SerializationProxyV2",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Lcom/facebook/appevents/r$a;

.field public static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/r$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/appevents/r;->f:Lcom/facebook/appevents/r$a;

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/r;->g:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Le/j/c0;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    const-string v0, "contextName"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "eventName"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v1, Lcom/facebook/appevents/r;->b:Z

    move/from16 v0, p6

    .line 3
    iput-boolean v0, v1, Lcom/facebook/appevents/r;->c:Z

    .line 4
    iput-object v3, v1, Lcom/facebook/appevents/r;->d:Ljava/lang/String;

    .line 5
    const-class v7, Lcom/facebook/appevents/p0/a;

    sget-object v8, Lcom/facebook/appevents/r;->f:Lcom/facebook/appevents/r$a;

    const-string v9, "1"

    invoke-static {v8, v3}, Lcom/facebook/appevents/r$a;->a(Lcom/facebook/appevents/r$a;Ljava/lang/String;)V

    .line 6
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 7
    sget-object v11, Lcom/facebook/appevents/p0/a;->a:Lcom/facebook/appevents/p0/a;

    .line 8
    invoke-static {v7}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-boolean v0, Lcom/facebook/appevents/p0/a;->b:Z

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v11}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/appevents/p0/a;->d:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, v11}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    move v0, v12

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "_removed_"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_2
    move-object v0, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 12
    invoke-static {v0, v7}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    const-string v3, "_eventName"

    .line 13
    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Failed to generate checksum: "

    :try_start_3
    const-string v11, "MD5"

    .line 14
    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    const-string v13, "UTF-8"

    .line 15
    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    const-string v14, "Charset.forName(charsetName)"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v13, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    array-length v13, v0

    invoke-virtual {v11, v0, v12, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 17
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v11, "digest.digest()"

    invoke-static {v0, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcom/facebook/appevents/m0/g;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 20
    invoke-static {v3, v0}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v9

    goto :goto_4

    :catch_1
    move-exception v0

    .line 21
    invoke-static {v3, v0}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "0"

    :goto_4
    const-string v3, "_eventName_md5"

    .line 22
    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/16 v0, 0x3e8

    move-object v3, v6

    move-object/from16 p5, v7

    int-to-long v6, v0

    div-long/2addr v13, v6

    const-string v0, "_logTime"

    invoke-virtual {v10, v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "_ui"

    .line 24
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_4

    const-string v0, "_session_id"

    .line 25
    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const/4 v2, 0x1

    if-eqz v4, :cond_1c

    .line 26
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "key"

    .line 28
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v6}, Lcom/facebook/appevents/r$a;->a(Lcom/facebook/appevents/r$a;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 30
    instance-of v11, v7, Ljava/lang/String;

    if-nez v11, :cond_6

    instance-of v11, v7, Ljava/lang/Number;

    if-eqz v11, :cond_5

    goto :goto_6

    .line 31
    :cond_5
    new-instance v0, Le/j/c0;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v7, v4, v12

    aput-object v6, v4, v2

    const-string v2, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const-string v5, "java.lang.String.format(format, *args)"

    .line 32
    invoke-static {v4, v3, v2, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-direct {v0, v2}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_6
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 35
    :cond_7
    const-class v4, Lcom/facebook/appevents/l0/a;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "parameters"

    if-eqz v0, :cond_8

    goto/16 :goto_9

    :cond_8
    :try_start_4
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-boolean v0, Lcom/facebook/appevents/l0/a;->b:Z

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_9

    goto :goto_9

    .line 37
    :cond_9
    :try_start_5
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 40
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_d

    check-cast v11, Ljava/lang/String;

    .line 41
    sget-object v13, Lcom/facebook/appevents/l0/a;->a:Lcom/facebook/appevents/l0/a;

    invoke-virtual {v13, v8}, Lcom/facebook/appevents/l0/a;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v13, v11}, Lcom/facebook/appevents/l0/a;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 42
    :cond_b
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-boolean v13, Lcom/facebook/appevents/l0/a;->c:Z

    if-eqz v13, :cond_c

    goto :goto_8

    :cond_c
    const-string v11, ""

    :goto_8
    invoke-virtual {v7, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_d
    const-string v0, "Required value was null."

    .line 44
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 45
    :cond_e
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "_onDeviceParams"

    .line 46
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "restrictiveParamJson.toString()"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 47
    invoke-static {v0, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 48
    :catch_2
    :cond_f
    :goto_9
    sget-object v0, Lcom/facebook/appevents/p0/a;->a:Lcom/facebook/appevents/p0/a;

    iget-object v0, v1, Lcom/facebook/appevents/r;->d:Ljava/lang/String;

    .line 49
    invoke-static/range {p5 .. p5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_c

    :cond_10
    :try_start_6
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-boolean v4, Lcom/facebook/appevents/p0/a;->b:Z

    if-nez v4, :cond_11

    goto :goto_c

    .line 51
    :cond_11
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54
    sget-object v11, Lcom/facebook/appevents/p0/a;->a:Lcom/facebook/appevents/p0/a;

    invoke-virtual {v11, v0, v8}, Lcom/facebook/appevents/p0/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 55
    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 57
    :cond_13
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    xor-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 58
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b

    :cond_14
    const-string v4, "_restrictedParams"

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v4, p5

    .line 62
    invoke-static {v0, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 63
    :catch_3
    :cond_15
    :goto_c
    sget-object v0, Lcom/facebook/appevents/j0/a;->a:Lcom/facebook/appevents/j0/a;

    iget-object v0, v1, Lcom/facebook/appevents/r;->d:Ljava/lang/String;

    .line 64
    const-class v4, Lcom/facebook/appevents/j0/a;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_f

    :cond_16
    :try_start_8
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-boolean v3, Lcom/facebook/appevents/j0/a;->b:Z

    if-nez v3, :cond_17

    goto :goto_f

    .line 66
    :cond_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/facebook/appevents/j0/a;->c:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/appevents/j0/a$a;

    .line 69
    iget-object v8, v7, Lcom/facebook/appevents/j0/a$a;->a:Ljava/lang/String;

    .line 70
    invoke-static {v8, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_d

    .line 71
    :cond_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 72
    iget-object v13, v7, Lcom/facebook/appevents/j0/a$a;->b:Ljava/util/List;

    .line 73
    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 74
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception v0

    .line 75
    invoke-static {v0, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    :cond_1b
    :goto_f
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    :cond_1c
    if-eqz p3, :cond_1d

    .line 78
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v0, "_valueToSum"

    invoke-virtual {v10, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 79
    :cond_1d
    iget-boolean v0, v1, Lcom/facebook/appevents/r;->c:Z

    if-eqz v0, :cond_1e

    const-string v0, "_inBackground"

    .line 80
    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_1e
    iget-boolean v0, v1, Lcom/facebook/appevents/r;->b:Z

    if-eqz v0, :cond_1f

    const-string v0, "_implicitlyLogged"

    .line 82
    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_11

    .line 83
    :cond_1f
    sget-object v0, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v3, Le/j/n0;->e:Le/j/n0;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eventObject.toString()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v12

    const-string v4, "AppEvents"

    const-string v5, "Created app event \'%s\'"

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :goto_11
    iput-object v10, v1, Lcom/facebook/appevents/r;->a:Lorg/json/JSONObject;

    .line 85
    invoke-virtual {p0}, Lcom/facebook/appevents/r;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/appevents/r;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Ls1/z/c/f;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p5, p0, Lcom/facebook/appevents/r;->a:Lorg/json/JSONObject;

    .line 88
    iput-boolean p2, p0, Lcom/facebook/appevents/r;->b:Z

    const-string p1, "_eventName"

    .line 89
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/appevents/r;->d:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/facebook/appevents/r;->e:Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/facebook/appevents/r;->c:Z

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/appevents/r$b;

    iget-object v1, p0, Lcom/facebook/appevents/r;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsonObject.toString()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/facebook/appevents/r;->b:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/r;->c:Z

    iget-object v4, p0, Lcom/facebook/appevents/r;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/appevents/r$b;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/r;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Failed to generate checksum: "

    :try_start_0
    const-string v2, "MD5"

    .line 2
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 3
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v4, "Charset.forName(charsetName)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4
    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "digest.digest()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/facebook/appevents/m0/g;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v1, v0}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "1"

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-static {v1, v0}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/facebook/appevents/r;->a:Lorg/json/JSONObject;

    const-string v3, "_eventName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    iget-boolean v2, p0, Lcom/facebook/appevents/r;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    iget-object v2, p0, Lcom/facebook/appevents/r;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "\"%s\", implicit: %b, json: %s"

    const-string v3, "java.lang.String.format(format, *args)"

    .line 4
    invoke-static {v1, v0, v2, v3}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
