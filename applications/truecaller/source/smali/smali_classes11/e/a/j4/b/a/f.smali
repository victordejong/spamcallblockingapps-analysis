.class public Le/a/j4/b/a/f;
.super Le/a/j4/b/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/j4/b/a/i<",
        "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/j4/b/a/i;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Notifications"

    return-object v0
.end method

.method public j(Ljava/util/Collection;Ljava/lang/Boolean;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;",
            "Ljava/lang/Boolean;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 4
    iget-object v2, v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v2, v2, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-object v2, v2, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v4, v4, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-wide v4, v4, Le/a/f4/f/c$a$a;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 6
    :cond_1
    iget-object v1, v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object v1, v1, Le/a/f4/f/c$a;->a:Le/a/f4/f/c$a$a;

    iget-object v2, v1, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    iget-wide v3, v1, Le/a/f4/f/c$a$a;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/network/notification/NotificationScope;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Le/a/j4/b/a/f;->q(Lcom/truecaller/network/notification/NotificationScope;Ljava/lang/Long;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Le/a/j4/b/a/i;->c(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public k()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/truecaller/network/notification/NotificationScope;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/truecaller/network/notification/NotificationScope;->values()[Lcom/truecaller/network/notification/NotificationScope;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    const-string v4, "LAST_ID_"

    .line 3
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/truecaller/network/notification/NotificationScope;->value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v5

    check-cast v5, Le/a/m0/c1/b0;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Le/a/m0/c1/b0;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public l()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/f;->n()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 2
    iget-object v2, v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    sget-object v3, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public m()Lcom/truecaller/notifications/internal/InternalTruecallerNotification;
    .locals 7

    .line 1
    sget-object v0, Lcom/truecaller/network/notification/NotificationType;->SOFTWARE_UPDATE:Lcom/truecaller/network/notification/NotificationType;

    .line 2
    invoke-virtual {p0}, Le/a/j4/b/a/i;->e()Ljava/util/List;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 4
    invoke-virtual {v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v6

    if-ne v6, v0, :cond_0

    if-nez v4, :cond_1

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 8
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    return-object v0

    :cond_3
    return-object v3
.end method

.method public n()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/j4/b/a/f;->o(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v2

    sget-object v3, Lcom/truecaller/network/notification/NotificationType;->PROMO_DOWNLOAD_URL:Lcom/truecaller/network/notification/NotificationType;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v2

    sget-object v3, Lcom/truecaller/network/notification/NotificationType;->PROMO_OPEN_URL:Lcom/truecaller/network/notification/NotificationType;

    if-eq v2, v3, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v2

    sget-object v3, Lcom/truecaller/network/notification/NotificationType;->UNSUPPORTED:Lcom/truecaller/network/notification/NotificationType;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final p(Ljava/util/Collection;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 2
    iput-object p2, v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/j4/b/a/i;->g(Ljava/util/Collection;)V

    return-void
.end method

.method public final q(Lcom/truecaller/network/notification/NotificationScope;Ljava/lang/Long;)V
    .locals 2

    const-string v0, "LAST_ID_"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Lcom/truecaller/network/notification/NotificationScope;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object p2

    check-cast p2, Le/a/m0/c1/b0;

    invoke-virtual {p2}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 4
    check-cast p2, Le/a/m0/c1/b0$e;

    invoke-virtual {p2, p1, v0, v1}, Le/a/m0/c1/b0$e;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-virtual {p2}, Le/a/m0/c1/b0$e;->apply()V

    return-void
.end method

.method public r(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/a/f4/f/c$a;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/f/c$a;

    .line 3
    new-instance v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {v2, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/a/f4/f/c$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Le/a/j4/b/a/i;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
