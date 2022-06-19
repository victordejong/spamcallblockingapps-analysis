.class public final Lq2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lq2;

.field public static final d:Lq2;

.field public static final e:Lq2;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq2;-><init>(I)V

    sput-object v0, Lq2;->c:Lq2;

    new-instance v0, Lq2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq2;-><init>(I)V

    sput-object v0, Lq2;->d:Lq2;

    new-instance v0, Lq2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lq2;-><init>(I)V

    sput-object v0, Lq2;->e:Lq2;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq2;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lq2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const-string v1, "LDU"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    sget-object v4, Le/j/f0;->a:Le/j/f0;

    const-string v4, "data_processing_options"

    const-class v5, Le/j/f0;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v8, Lorg/json/JSONArray;

    invoke-static {v2}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data_processing_options_country"

    .line 6
    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "data_processing_options_state"

    .line 7
    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    sget-object v2, Le/j/f0;->j:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v3, "com.facebook.sdk.DataProcessingOptions"

    .line 9
    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 11
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string v2, "applicationContext"

    .line 13
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :catchall_0
    move-exception v2

    .line 14
    invoke-static {v2, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 15
    :catch_0
    :goto_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v7}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V

    return-object v0

    .line 16
    :cond_2
    throw v3

    .line 17
    :cond_3
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->Companion:Lcom/truecaller/common/network/util/KnownEndpoints$a;

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2}, Lcom/truecaller/common/network/util/KnownEndpoints;->access$setStaging$cp(Z)V

    return-object v0

    .line 20
    :cond_4
    sput-boolean v2, Le/j/f0;->i:Z

    .line 21
    sget-object v1, Le/j/n0;->e:Le/j/n0;

    const-string v2, "behavior"

    .line 22
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v2, Le/j/f0;->b:Ljava/util/HashSet;

    monitor-enter v2

    .line 24
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Le/j/n0;->h:Le/j/n0;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    sget-object v1, Le/j/n0;->g:Le/j/n0;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :cond_5
    monitor-exit v2

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
