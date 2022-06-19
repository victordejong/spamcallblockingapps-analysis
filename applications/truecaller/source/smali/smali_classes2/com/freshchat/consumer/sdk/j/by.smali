.class public Lcom/freshchat/consumer/sdk/j/by;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/by$a;,
        Lcom/freshchat/consumer/sdk/j/by$b;
    }
.end annotation


# static fields
.field private static mH:Lcom/freshchat/consumer/sdk/j/by;


# instance fields
.field private final mI:Lcom/freshchat/consumer/sdk/j/by$a;

.field private mJ:Landroid/os/Handler;

.field private mK:Lcom/freshchat/consumer/sdk/j/by$b;

.field private final mL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mL:Ljava/util/Set;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/by$a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/j/by$a;-><init>(Lcom/freshchat/consumer/sdk/j/by;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mI:Lcom/freshchat/consumer/sdk/j/by$a;

    return-void
.end method

.method private E(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/InvalidEventException;
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventName()I

    move-result p1

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/av;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/exception/InvalidEventException;

    invoke-direct {v0, p2, p1}, Lcom/freshchat/consumer/sdk/exception/InvalidEventException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/by;)Lcom/freshchat/consumer/sdk/j/by$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/by;->mI:Lcom/freshchat/consumer/sdk/j/by$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/by;->bO(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/by;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/b/c;Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{{user_event_key_placeholder}}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "{{user_event_property_limit_placeholder}}"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FRESHCHAT"

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/InvalidEventException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/by;->E(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/by;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/by;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_9

    invoke-static/range {p2 .. p2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEventsConfig()Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxAllowedPropertiesPerEvent()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, ""

    move v9, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-ltz v11, :cond_1

    sget-object v5, Lcom/freshchat/consumer/sdk/b/c;->mF:Lcom/freshchat/consumer/sdk/b/c;

    invoke-direct {v0, v5, v10, v3, v4}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/b/c;Ljava/lang/String;J)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v11

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventPropertyName()I

    move-result v12

    invoke-static {v10, v12}, Lcom/freshchat/consumer/sdk/j/av;->d(Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v5, Lcom/freshchat/consumer/sdk/b/c;->mA:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {v10}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v5, Lcom/freshchat/consumer/sdk/b/c;->mB:Lcom/freshchat/consumer/sdk/b/c;

    :cond_2
    invoke-static {v10}, Lcom/freshchat/consumer/sdk/j/as;->b(Ljava/lang/CharSequence;)J

    move-result-wide v12

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventPropertyName()I

    move-result v8

    int-to-long v14, v8

    cmp-long v8, v12, v14

    if-lez v8, :cond_3

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventPropertyName()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v10

    :goto_1
    invoke-direct {v0, v5, v8, v3, v4}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/b/c;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/freshchat/consumer/sdk/j/av;->e(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    sget-object v5, Lcom/freshchat/consumer/sdk/b/c;->mE:Lcom/freshchat/consumer/sdk/b/c;

    :cond_5
    :goto_2
    invoke-direct {v0, v5, v10, v3, v4}, Lcom/freshchat/consumer/sdk/j/by;->a(Lcom/freshchat/consumer/sdk/b/c;Ljava/lang/String;J)V

    move-object v8, v10

    goto :goto_0

    :cond_6
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventPropertyValue()I

    move-result v11

    invoke-static {v13, v11}, Lcom/freshchat/consumer/sdk/j/av;->d(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v5, Lcom/freshchat/consumer/sdk/b/c;->mC:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v5, Lcom/freshchat/consumer/sdk/b/c;->mD:Lcom/freshchat/consumer/sdk/b/c;

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    :goto_3
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/b/c;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "{{user_event_key_placeholder}}"

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{{user_event_property_limit_placeholder}}"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "fc_error"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    return-object v2
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/j/by;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/by;->gO()V

    return-void
.end method

.method private bO(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/by;->mI:Lcom/freshchat/consumer/sdk/j/by$a;

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bS(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/by;->mL:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private bP(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->gH()V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UserEvent;",
            ">;)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mL:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mI:Lcom/freshchat/consumer/sdk/j/by$a;

    invoke-virtual {v0, p1, p3}, Lcom/freshchat/consumer/sdk/j/by$a;->c(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxEventsPerBatch()J

    move-result-wide v0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    invoke-static {p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v6, v5

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :cond_3
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    int-to-long v7, v4

    rem-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    if-ne v4, v2, :cond_2

    :cond_5
    invoke-static {p1, p2, v6}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-static {v7}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private e(Landroid/content/Context;Z)V
    .locals 7

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEventsConfig()Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    move-result-object v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/by;->mI:Lcom/freshchat/consumer/sdk/j/by$a;

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/by$a;->bR(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->f(Ljava/util/Map;)I

    move-result v3

    if-lez v3, :cond_2

    if-nez p2, :cond_1

    int-to-long v3, v3

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getTriggerUploadOnEventsCount()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-ltz p2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/by;->gO()V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2}, Lcom/freshchat/consumer/sdk/j/by;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/by;->bP(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static gN()Lcom/freshchat/consumer/sdk/j/by;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/by;->mH:Lcom/freshchat/consumer/sdk/j/by;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/j/by;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/by;->mH:Lcom/freshchat/consumer/sdk/j/by;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/by;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/by;-><init>()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/by;->mH:Lcom/freshchat/consumer/sdk/j/by;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/by;->mH:Lcom/freshchat/consumer/sdk/j/by;

    return-object v0
.end method

.method private gO()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mJ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/by;->mK:Lcom/freshchat/consumer/sdk/j/by$b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mJ:Landroid/os/Handler;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mK:Lcom/freshchat/consumer/sdk/j/by$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Set;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/by;->mL:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/freshchat/consumer/sdk/j/by;->mI:Lcom/freshchat/consumer/sdk/j/by$a;

    invoke-virtual {p3, p1, p2}, Lcom/freshchat/consumer/sdk/j/by$a;->a(Landroid/content/Context;Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gx()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/bz;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/bz;-><init>(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bQ(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mJ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mK:Lcom/freshchat/consumer/sdk/j/by$b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mJ:Landroid/os/Handler;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/by$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/freshchat/consumer/sdk/j/by$b;-><init>(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bz;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/by;->mK:Lcom/freshchat/consumer/sdk/j/by$b;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->getMaxDelayInMillisUntilUpload()J

    move-result-wide v0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/by;->mJ:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/by;->mK:Lcom/freshchat/consumer/sdk/j/by$b;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gx()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ca;

    invoke-direct {v1, p0, p2, p1}, Lcom/freshchat/consumer/sdk/j/ca;-><init>(Lcom/freshchat/consumer/sdk/j/by;ZLandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
