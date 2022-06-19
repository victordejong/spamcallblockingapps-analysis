.class public final Le/j/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \'2\u00020\u0001:\u0002\'(B+\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rB!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010BA\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010!\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\"\u001a\u0004\u0018\u00010\tJ\u0010\u0010#\u001a\u0004\u0018\u00010\u00032\u0006\u0010$\u001a\u00020%J\u0008\u0010&\u001a\u00020\u0007H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006)"
    }
    d2 = {
        "Lcom/facebook/GraphResponse;",
        "",
        "request",
        "Lcom/facebook/GraphRequest;",
        "connection",
        "Ljava/net/HttpURLConnection;",
        "rawResponse",
        "",
        "graphObject",
        "Lorg/json/JSONObject;",
        "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V",
        "graphObjects",
        "Lorg/json/JSONArray;",
        "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V",
        "error",
        "Lcom/facebook/FacebookRequestError;",
        "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V",
        "graphObjectArray",
        "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V",
        "getConnection",
        "()Ljava/net/HttpURLConnection;",
        "getError",
        "()Lcom/facebook/FacebookRequestError;",
        "jsonArray",
        "getJsonArray",
        "()Lorg/json/JSONArray;",
        "jsonObject",
        "getJsonObject",
        "()Lorg/json/JSONObject;",
        "getRawResponse",
        "()Ljava/lang/String;",
        "getRequest",
        "()Lcom/facebook/GraphRequest;",
        "getJSONArray",
        "getJSONObject",
        "getRequestForPagedResults",
        "direction",
        "Lcom/facebook/GraphResponse$PagingDirection;",
        "toString",
        "Companion",
        "PagingDirection",
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
.field public static final g:Ljava/lang/String; = "e.j.l0"


# instance fields
.field public final a:Ljava/net/HttpURLConnection;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;

.field public final d:Lorg/json/JSONArray;

.field public final e:Lcom/facebook/FacebookRequestError;

.field public final f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    .line 9
    invoke-direct/range {v1 .. v7}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawResponse"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 8
    invoke-direct/range {v1 .. v7}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/j/l0;->a:Ljava/net/HttpURLConnection;

    .line 3
    iput-object p3, p0, Le/j/l0;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/j/l0;->c:Lorg/json/JSONObject;

    .line 5
    iput-object p5, p0, Le/j/l0;->d:Lorg/json/JSONArray;

    .line 6
    iput-object p6, p0, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    .line 7
    iput-object p4, p0, Le/j/l0;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public static final a(Ljava/util/List;Ljava/net/HttpURLConnection;Le/j/c0;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Le/j/c0;",
            ")",
            "Ljava/util/List<",
            "Le/j/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/facebook/GraphRequest;

    .line 4
    new-instance v2, Le/j/l0;

    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v2, v1, p1, v3}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final b(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Le/j/l0;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v15, "body"

    const-string v14, "FACEBOOK_NON_JSON_RESULT"

    .line 1
    instance-of v3, v2, Lorg/json/JSONObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    .line 2
    move-object v13, v2

    check-cast v13, Lorg/json/JSONObject;

    const-string v2, "error_code"

    const-string v3, "error"

    const-string v5, "code"

    const-string v6, "singleResult"

    .line 3
    invoke-static {v13, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v16, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 6
    invoke-static {v13, v15, v14}, Lcom/facebook/internal/q0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_a

    .line 7
    :try_start_1
    instance-of v8, v7, Lorg/json/JSONObject;

    if-eqz v8, :cond_a

    .line 8
    move-object v8, v7

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "error_subcode"

    const/4 v10, -0x1

    if-eqz v8, :cond_7

    .line 9
    :try_start_2
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/q0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    const-string v3, "type"

    .line 10
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v2, :cond_1

    move-object v8, v4

    goto :goto_1

    :cond_1
    const-string v8, "message"

    .line 11
    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-nez v2, :cond_2

    move v5, v10

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    :goto_3
    if-nez v2, :cond_4

    move-object v9, v4

    goto :goto_4

    :cond_4
    const-string v9, "error_user_msg"

    .line 14
    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v11, "error_user_title"

    .line 15
    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    if-nez v2, :cond_6

    move v2, v12

    goto :goto_7

    :cond_6
    const-string v11, "is_transient"

    .line 16
    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 17
    :cond_7
    :try_start_3
    move-object v3, v7

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "error_msg"

    const-string v5, "error_reason"

    if-nez v3, :cond_9

    .line 18
    :try_start_4
    move-object v3, v7

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 19
    move-object v3, v7

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v9, v2

    move-object v11, v4

    move-object v8, v5

    move v4, v10

    move v5, v4

    move v2, v12

    move/from16 v17, v2

    move-object v10, v3

    goto :goto_8

    .line 20
    :cond_9
    :goto_6
    :try_start_5
    move-object v3, v7

    check-cast v3, Lorg/json/JSONObject;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    move-object v5, v7

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    move-object v5, v7

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 23
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    move-object v9, v8

    move v2, v12

    move-object v8, v4

    move-object v4, v9

    :goto_7
    move/from16 v17, v2

    move-object v11, v9

    move/from16 v2, v16

    move-object v9, v8

    move-object v8, v3

    move/from16 v21, v10

    move-object v10, v4

    move v4, v5

    move/from16 v5, v21

    :goto_8
    if-eqz v2, :cond_a

    .line 24
    new-instance v18, Lcom/facebook/FacebookRequestError;

    .line 25
    move-object/from16 v19, v7

    check-cast v19, Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v20, 0x0

    move-object/from16 v2, v18

    move v3, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v19

    move-object v11, v13

    move/from16 v19, v12

    move-object/from16 v12, p3

    move-object v0, v13

    move-object/from16 v13, p1

    move-object v1, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v1

    move-object v1, v15

    move/from16 v15, v17

    .line 26
    :try_start_6
    invoke-direct/range {v2 .. v15}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Le/j/c0;Z)V

    goto/16 :goto_c

    :catch_0
    move/from16 v19, v12

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v20, v14

    goto/16 :goto_b

    :cond_a
    move/from16 v19, v12

    move-object v0, v13

    move-object/from16 v20, v14

    move-object v1, v15

    const/16 v2, 0xc8

    const/16 v3, 0x12b

    if-gt v6, v3, :cond_b

    if-gt v2, v6, :cond_b

    move/from16 v12, v16

    goto :goto_9

    :cond_b
    move/from16 v12, v19

    :goto_9
    if-nez v12, :cond_e

    .line 27
    new-instance v18, Lcom/facebook/FacebookRequestError;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v2, :cond_c

    move-object/from16 v15, v20

    .line 29
    :try_start_7
    invoke-static {v0, v1, v15}, Lcom/facebook/internal/q0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_a

    :catch_1
    move-object/from16 v20, v15

    goto :goto_b

    :cond_c
    move-object/from16 v15, v20

    const/4 v2, 0x0

    :goto_a
    move-object v11, v2

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, v18

    move v3, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    move-object/from16 v20, v15

    move/from16 v15, v17

    .line 30
    :try_start_8
    invoke-direct/range {v2 .. v15}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Le/j/c0;Z)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_c

    :catch_2
    :cond_d
    move/from16 v19, v12

    move-object v0, v13

    move-object/from16 v20, v14

    move-object v1, v15

    :catch_3
    :cond_e
    :goto_b
    const/16 v18, 0x0

    :goto_c
    move-object/from16 v2, v18

    if-eqz v2, :cond_13

    .line 31
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    .line 32
    iget v0, v2, Lcom/facebook/FacebookRequestError;->b:I

    const/16 v1, 0xbe

    move-object/from16 v3, p0

    if-ne v0, v1, :cond_12

    .line 33
    iget-object v0, v3, Lcom/facebook/GraphRequest;->a:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_f

    .line 34
    sget-object v1, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move/from16 v12, v16

    goto :goto_d

    :cond_f
    move/from16 v12, v19

    :goto_d
    if-eqz v12, :cond_12

    .line 35
    iget v0, v2, Lcom/facebook/FacebookRequestError;->c:I

    const/16 v1, 0x1ed

    if-eq v0, v1, :cond_10

    .line 36
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/AccessToken$c;->d(Lcom/facebook/AccessToken;)V

    goto :goto_f

    :cond_10
    const/4 v0, 0x0

    .line 37
    sget-object v1, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 38
    sget-object v0, Le/j/v;->f:Le/j/v$a;

    invoke-virtual {v0}, Le/j/v$a;->a()Le/j/v;

    move-result-object v0

    .line 39
    iget-object v0, v0, Le/j/v;->c:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_12

    const-string v1, "current"

    .line 40
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/facebook/AccessToken;

    .line 42
    iget-object v5, v0, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    .line 43
    iget-object v6, v0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    .line 44
    iget-object v7, v0, Lcom/facebook/AccessToken;->i:Ljava/lang/String;

    .line 45
    iget-object v8, v0, Lcom/facebook/AccessToken;->b:Ljava/util/Set;

    .line 46
    iget-object v9, v0, Lcom/facebook/AccessToken;->c:Ljava/util/Set;

    .line 47
    iget-object v10, v0, Lcom/facebook/AccessToken;->d:Ljava/util/Set;

    .line 48
    iget-object v11, v0, Lcom/facebook/AccessToken;->f:Le/j/w;

    .line 49
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 50
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 51
    iget-object v14, v0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    const/4 v15, 0x0

    const/16 v16, 0x400

    move-object v4, v1

    .line 52
    invoke-direct/range {v4 .. v16}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Le/j/w;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;I)V

    .line 53
    invoke-static {v1}, Lcom/facebook/AccessToken$c;->d(Lcom/facebook/AccessToken;)V

    .line 54
    :cond_12
    :goto_f
    new-instance v0, Le/j/l0;

    move-object/from16 v4, p1

    invoke-direct {v0, v3, v4, v2}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    return-object v0

    :cond_13
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v2, v0

    move-object/from16 v0, v20

    const/4 v5, 0x0

    .line 55
    invoke-static {v2, v1, v0}, Lcom/facebook/internal/q0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_14

    .line 57
    new-instance v1, Le/j/l0;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2, v0}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1

    .line 58
    :cond_14
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_15

    .line 59
    new-instance v7, Le/j/l0;

    move-object v5, v0

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "request"

    .line 60
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawResponse"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphObjects"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v4

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v8

    move-object v6, v9

    .line 61
    invoke-direct/range {v0 .. v6}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-object v7

    :cond_15
    move-object v10, v4

    .line 62
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const-string v1, "NULL"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_10

    :cond_16
    move-object v10, v0

    move-object v3, v1

    move-object v0, v2

    .line 63
    :goto_10
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_17

    .line 64
    new-instance v1, Le/j/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v10, v0, v4}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1

    .line 65
    :cond_17
    new-instance v1, Le/j/c0;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Got unexpected object type in response, class: "

    invoke-static {v2, v0}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-direct {v1, v0}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final c(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Le/j/k0;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Le/j/k0;",
            ")",
            "Ljava/util/List<",
            "Le/j/l0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/j/c0;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/q0;->M(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    .line 3
    sget-object v2, Le/j/n0;->c:Le/j/n0;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const-string v6, "Response"

    const-string v7, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    .line 5
    invoke-virtual {v1, v2, v6, v7, v3}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "responseString"

    .line 6
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "resultObject"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Le/j/k0;->size()I

    move-result v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-ne v1, v4, :cond_0

    .line 12
    invoke-virtual {p2, v5}, Le/j/k0;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequest;

    .line 13
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "body"

    .line 14
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const-string v9, "code"

    .line 16
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 18
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 19
    new-instance v8, Le/j/l0;

    new-instance v9, Lcom/facebook/FacebookRequestError;

    invoke-direct {v9, p1, v7}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v8, v3, p1, v9}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v7

    .line 20
    new-instance v8, Le/j/l0;

    new-instance v9, Lcom/facebook/FacebookRequestError;

    invoke-direct {v9, p1, v7}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v8, v3, p1, v9}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    move-object v8, v0

    .line 21
    :goto_1
    instance-of v3, v8, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    move-object v3, v8

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v1, :cond_3

    .line 22
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v3, v5

    :goto_2
    add-int/lit8 v7, v3, 0x1

    .line 23
    invoke-virtual {p2, v3}, Le/j/k0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/GraphRequest;

    .line 24
    :try_start_1
    move-object v10, v8

    check-cast v10, Lorg/json/JSONArray;

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v10, "obj"

    .line 25
    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, p1, v3, v0}, Le/j/l0;->b(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Le/j/l0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Le/j/c0; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 26
    new-instance v10, Le/j/l0;

    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p1, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v10, v9, p1, v11}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_3
    move-exception v3

    .line 27
    new-instance v10, Le/j/l0;

    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p1, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v10, v9, p1, v11}, Le/j/l0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-lt v7, v1, :cond_1

    goto :goto_4

    :cond_1
    move v3, v7

    goto :goto_2

    .line 28
    :cond_2
    :goto_4
    sget-object p1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    .line 29
    sget-object v0, Le/j/n0;->a:Le/j/n0;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    iget-object p2, p2, Le/j/k0;->b:Ljava/lang/String;

    aput-object p2, v1, v5

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const/4 p0, 0x2

    aput-object v2, v1, p0

    const-string p0, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    .line 32
    invoke-virtual {p1, v0, v6, p0, v1}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 33
    :cond_3
    new-instance p0, Le/j/c0;

    const-string p1, "Unexpected number of results"

    invoke-direct {p0, p1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Le/j/l0;->a:Ljava/net/HttpURLConnection;

    if-nez v5, :cond_0

    const/16 v5, 0xc8

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    .line 2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{Response: "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " responseCode: "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", graphObject: "

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Le/j/l0;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder()\n        .append(\"{Response: \")\n        .append(\" responseCode: \")\n        .append(responseCode)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", error: \")\n        .append(error)\n        .append(\"}\")\n        .toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
