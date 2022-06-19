.class public final Lcom/appsflyer/internal/av$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/av;

.field private synthetic AFKeystoreWrapper:Le/d/a/a/k;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/av;Le/d/a/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/av$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/av;

    iput-object p2, p0, Lcom/appsflyer/internal/av$5;->AFKeystoreWrapper:Le/d/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/av$5;->AFKeystoreWrapper:Le/d/a/a/k;

    .line 2
    iget v0, v0, Le/d/a/a/k;->a:I

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/av$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/av;

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/av;->valueOf:Lcom/appsflyer/internal/ba;

    const-string v1, "ars_history_sent"

    .line 5
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/ba;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/av$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/av;

    .line 7
    iget-object v0, v0, Lcom/appsflyer/internal/av;->AFInAppEventType:Le/d/a/a/d;

    const-string v1, "subs"

    .line 8
    invoke-virtual {v0, v1}, Le/d/a/a/d;->g(Ljava/lang/String;)Le/d/a/a/n$a;

    move-result-object v0

    .line 9
    iget-object v1, v0, Le/d/a/a/n$a;->a:Ljava/util/List;

    .line 10
    iget-object v0, v0, Le/d/a/a/n$a;->b:Le/d/a/a/k;

    .line 11
    iget v0, v0, Le/d/a/a/k;->a:I

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/av$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/av;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/av;->AFKeystoreWrapper(Lcom/appsflyer/internal/av;ZLjava/util/List;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "Failed to query purchases history"

    .line 14
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 15
    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 16
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    :cond_5
    const-string v1, "Failed to log purchases history"

    .line 17
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
