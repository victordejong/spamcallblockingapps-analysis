.class public final Lcom/appnext/core/crashes/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aM:Landroid/content/Context;

.field private eB:Ljava/lang/String;

.field private eC:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/appnext/core/crashes/a;->eB:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/crashes/a;->eC:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/appnext/core/crashes/a;->aM:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/appnext/core/crashes/a;->eB:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/appnext/core/crashes/a;->eC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final aE()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/crashes/a;->eB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appnext/core/crashes/a;->eC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/appnext/core/crashes/a;->aM:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "did"

    .line 4
    invoke-static {v1, v2}, Lcom/appnext/core/g;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "api_Call"

    .line 5
    iget-object v3, p0, Lcom/appnext/core/crashes/a;->eB:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ex"

    .line 6
    iget-object v3, p0, Lcom/appnext/core/crashes/a;->eC:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ver"

    const-string v3, "2.6.5.473"

    .line 7
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "data"

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/appnext/core/crashes/a;->aM:Landroid/content/Context;

    const-string v3, "https://global.appnext.com/AdminService.asmx/ex?data="

    const/16 v4, 0x2710

    invoke-static {v0, v3, v1, v2, v4}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ZI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
