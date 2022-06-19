.class public final synthetic Le/j/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Lcom/facebook/GraphRequest$b;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/q;->a:Lcom/facebook/GraphRequest$b;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 10

    iget-object v0, p0, Le/j/q;->a:Lcom/facebook/GraphRequest$b;

    const-string v1, "response"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Le/j/l0;->c:Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v3, "__debug__"

    .line 3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    const-string v3, "messages"

    .line 4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_9

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_9

    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v6, v2

    goto :goto_3

    :cond_2
    const-string v6, "message"

    .line 7
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    if-nez v3, :cond_3

    move-object v7, v2

    goto :goto_4

    :cond_3
    const-string v7, "type"

    .line 8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    if-nez v3, :cond_4

    move-object v3, v2

    goto :goto_5

    :cond_4
    const-string v8, "link"

    .line 9
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 10
    sget-object v8, Le/j/n0;->h:Le/j/n0;

    const-string v9, "warning"

    .line 11
    invoke-static {v7, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 12
    sget-object v8, Le/j/n0;->g:Le/j/n0;

    .line 13
    :cond_5
    invoke-static {v3}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Link: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_6
    sget-object v3, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v7, Lcom/facebook/GraphRequest;->l:Ljava/lang/String;

    invoke-virtual {v3, v8, v7, v6}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-lt v5, v4, :cond_8

    goto :goto_6

    :cond_8
    move v3, v5

    goto :goto_2

    :cond_9
    :goto_6
    if-nez v0, :cond_a

    goto :goto_7

    .line 16
    :cond_a
    invoke-interface {v0, p1}, Lcom/facebook/GraphRequest$b;->a(Le/j/l0;)V

    :goto_7
    return-void
.end method
