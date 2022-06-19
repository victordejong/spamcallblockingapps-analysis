.class public final synthetic Le/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Le/j/v$d;


# direct methods
.method public synthetic constructor <init>(Le/j/v$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/b;->a:Le/j/v$d;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 3

    iget-object v0, p0, Le/j/b;->a:Le/j/v$d;

    const-string v1, "$refreshResult"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Le/j/l0;->f:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "access_token"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iput-object v1, v0, Le/j/v$d;->a:Ljava/lang/String;

    const-string v1, "expires_at"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    iput v1, v0, Le/j/v$d;->b:I

    const-string v1, "expires_in"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 8
    iput v1, v0, Le/j/v$d;->c:I

    const-string v1, "data_access_expiration_time"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 10
    iput-object v1, v0, Le/j/v$d;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v2, "graph_domain"

    .line 11
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iput-object p1, v0, Le/j/v$d;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method
