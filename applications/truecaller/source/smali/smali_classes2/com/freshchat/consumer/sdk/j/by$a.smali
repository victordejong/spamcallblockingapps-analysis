.class public Lcom/freshchat/consumer/sdk/j/by$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private cS:Lcom/freshchat/consumer/sdk/j/ab;

.field public final synthetic mO:Lcom/freshchat/consumer/sdk/j/by;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/by;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/by$a;->mO:Lcom/freshchat/consumer/sdk/j/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/by$a;->cS:Lcom/freshchat/consumer/sdk/j/ab;

    return-void
.end method

.method private bT(Landroid/content/Context;)Z
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/e;->gL()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->c(JJ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/e;->gK()V

    return v1

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/e;->gJ()I

    move-result v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEventsConfig()Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxAllowedEventsPerDay()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    return v1

    :cond_2
    const-string v0, "FRESHCHAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User events have reached the daily limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxAllowedEventsPerDay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private bk(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/cb;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/j/cb;-><init>(Lcom/freshchat/consumer/sdk/j/by$a;)V

    invoke-virtual {v0}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/by$a;->cS:Lcom/freshchat/consumer/sdk/j/ab;

    invoke-virtual {v1, p1, v0}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1
.end method

.method private d(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by$a;->cS:Lcom/freshchat/consumer/sdk/j/ab;

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/b/e;->aa(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private e(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by$a;->cS:Lcom/freshchat/consumer/sdk/j/ab;

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/b/e;->Z(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/UserEvent;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bT(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gJ()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->E(I)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEventsConfig()Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bR(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxAllowedEventsPerDay()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/freshchat/consumer/sdk/j/by$a;->e(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/UserEvent;->getOccTime()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/b/e;->w(J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bS(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/by$a;->d(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public bR(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->gG()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bk(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bS(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->gI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bk(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bS(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/by$a;->d(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
