.class public Le/h/a/c/v0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/v0/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/v0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/v0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/v0/e$a;->a:Le/h/a/c/v0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Le/h/a/c/v0/e$a;->a:Le/h/a/c/v0/e;

    .line 2
    iget-object v1, v1, Le/h/a/c/v0/e;->d:Ljava/util/Map;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "fetch_min_interval_seconds"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/h/a/c/v0/e$a;->a:Le/h/a/c/v0/e;

    .line 6
    iget-object v2, v1, Le/h/a/c/v0/e;->c:Le/h/a/c/z0/a;

    .line 7
    invoke-virtual {v1}, Le/h/a/c/v0/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "config_settings.json"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1, v3, v4}, Le/h/a/c/z0/a;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iget-object v1, p0, Le/h/a/c/v0/e$a;->a:Le/h/a/c/v0/e;

    .line 11
    iget-object v1, v1, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/v0/e$a;->a:Le/h/a/c/v0/e;

    .line 13
    iget-object v2, v2, Le/h/a/c/v0/e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    invoke-static {v2}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateConfigToFile failed: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method
