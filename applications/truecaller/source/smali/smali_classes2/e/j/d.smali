.class public final synthetic Le/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Le/j/d;->b:Ljava/util/Set;

    iput-object p3, p0, Le/j/d;->c:Ljava/util/Set;

    iput-object p4, p0, Le/j/d;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 10

    iget-object v0, p0, Le/j/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Le/j/d;->b:Ljava/util/Set;

    iget-object v2, p0, Le/j/d;->c:Ljava/util/Set;

    iget-object v3, p0, Le/j/d;->d:Ljava/util/Set;

    const-string v4, "$permissionsCallSucceeded"

    .line 1
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$permissions"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$declinedPermissions"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$expiredPermissions"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "response"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Le/j/l0;->f:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "data"

    .line 3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x1

    .line 4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_b

    :goto_0
    add-int/lit8 v5, v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v6, "permission"

    .line 7
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "status"

    .line 8
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v6}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v0}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 10
    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "US"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x4e0958db

    if-eq v7, v8, :cond_7

    const v8, 0x10b4f6bb

    if-eq v7, v8, :cond_5

    const v8, 0x21ddfc2e

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "declined"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v7, "granted"

    .line 13
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 14
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const-string v7, "expired"

    .line 15
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :goto_1
    const-string v6, "Unexpected status: "

    .line 16
    invoke-static {v6, v0}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_8
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    if-lt v5, v4, :cond_a

    goto :goto_3

    :cond_a
    move v0, v5

    goto :goto_0

    :cond_b
    :goto_3
    return-void
.end method
