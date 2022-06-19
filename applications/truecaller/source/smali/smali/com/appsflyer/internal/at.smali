.class public final Lcom/appsflyer/internal/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/a/a/q;


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/av;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/av;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/at;->values:Lcom/appsflyer/internal/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Le/d/a/a/k;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/a/a/k;",
            "Ljava/util/List<",
            "Le/d/a/a/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/at;->values:Lcom/appsflyer/internal/av;

    .line 2
    :try_start_0
    iget v1, p1, Le/d/a/a/k;->a:I

    if-nez v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, v0, Lcom/appsflyer/internal/av;->AFInAppEventType:Le/d/a/a/d;

    if-nez p1, :cond_1

    const-string p1, "Got Ars billing callback but billing client is missing!"

    .line 4
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/d/a/a/n;

    invoke-virtual {v2}, Le/d/a/a/n;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "subs"

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance p1, Le/d/a/a/s;

    invoke-direct {p1}, Le/d/a/a/s;-><init>()V

    .line 10
    iput-object v1, p1, Le/d/a/a/s;->a:Ljava/lang/String;

    .line 11
    iput-object v2, p1, Le/d/a/a/s;->b:Ljava/util/List;

    .line 12
    iget-object v1, v0, Lcom/appsflyer/internal/av;->AFInAppEventType:Le/d/a/a/d;

    new-instance v2, Lcom/appsflyer/internal/av$4;

    invoke-direct {v2, v0, p2}, Lcom/appsflyer/internal/av$4;-><init>(Lcom/appsflyer/internal/av;Ljava/util/List;)V

    invoke-virtual {v1, p1, v2}, Le/d/a/a/d;->i(Le/d/a/a/s;Le/d/a/a/t;)V

    return-void

    .line 13
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to setup Ars Play billing service: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget v0, p1, Le/d/a/a/k;->a:I

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p1, p1, Le/d/a/a/k;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    instance-of p2, p1, Ljava/lang/NoSuchMethodError;

    if-nez p2, :cond_4

    instance-of p2, p1, Ljava/lang/NoClassDefFoundError;

    if-eqz p2, :cond_5

    :cond_4
    const-string p2, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 19
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    :cond_5
    const-string p2, "Failed to query new purchase details"

    .line 20
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
