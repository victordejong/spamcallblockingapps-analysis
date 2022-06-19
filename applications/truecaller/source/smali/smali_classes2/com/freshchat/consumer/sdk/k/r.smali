.class public Lcom/freshchat/consumer/sdk/k/r;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

.field private final rt:Lcom/freshchat/consumer/sdk/l/c;

.field private ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

.field private rv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/l/c;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/l/c;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/r;->rt:Lcom/freshchat/consumer/sdk/l/c;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;)Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/r;->ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/k/r;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/k/r;->jq()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/k/r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/r;->rv:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/service/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/r;->b(Lcom/freshchat/consumer/sdk/service/c;)V

    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/service/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/r;->c(Lcom/freshchat/consumer/sdk/service/c;)V

    return-void
.end method

.method private b(Lcom/freshchat/consumer/sdk/service/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/service/c<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/service/b;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/r;->rv:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/b;-><init>(Lcom/freshchat/consumer/sdk/service/Status;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/freshchat/consumer/sdk/service/c;->b(Lcom/freshchat/consumer/sdk/service/b;)V

    return-void
.end method

.method private c(Lcom/freshchat/consumer/sdk/service/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/service/c<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/service/b;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/service/b;-><init>(Lcom/freshchat/consumer/sdk/service/Status;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/freshchat/consumer/sdk/service/c;->b(Lcom/freshchat/consumer/sdk/service/b;)V

    return-void
.end method

.method private jq()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/r;->ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getProcessedCalendarDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/CalendarDay;

    new-instance v2, Lcom/freshchat/consumer/sdk/a/l$a;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->getDay()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/a/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->getTimeSlotsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/16 v5, 0x8

    if-lt v3, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/2addr v7, v3

    if-le v7, v5, :cond_3

    rsub-int/lit8 v5, v3, 0x8

    invoke-interface {v6, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    :cond_4
    new-instance v5, Lcom/freshchat/consumer/sdk/a/l$c;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    invoke-direct {v5, v4, v6}, Lcom/freshchat/consumer/sdk/a/l$c;-><init>(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/service/c<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/r;->rv:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/r;->b(Lcom/freshchat/consumer/sdk/service/c;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/r;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/r;->c(Lcom/freshchat/consumer/sdk/service/c;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->getCalendarAgentAlias()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/r;->rt:Lcom/freshchat/consumer/sdk/l/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/freshchat/consumer/sdk/k/s;

    invoke-direct {v3, p0, p1}, Lcom/freshchat/consumer/sdk/k/s;-><init>(Lcom/freshchat/consumer/sdk/k/r;Lcom/freshchat/consumer/sdk/service/c;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/freshchat/consumer/sdk/l/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/freshchat/consumer/sdk/l/c$a;)V

    return-void
.end method

.method public getCalendarType()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/r;->ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getCalendarType()I

    move-result v0

    return v0
.end method

.method public ia()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/r;->ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getMeetingLength()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_duration_place_holder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_duration:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/k/r;->ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getMeetingLength()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public jp()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/r;->ru:Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/reqres/AgentAvailabilityResponse;->getProcessedCalendarDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/CalendarDay;

    new-instance v3, Lcom/freshchat/consumer/sdk/a/l$a;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/a/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->getTimeSlotsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Lcom/freshchat/consumer/sdk/a/l$c;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v4, v5, v3}, Lcom/freshchat/consumer/sdk/a/l$c;-><init>(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public jr()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/r;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;->getCalendarInviteId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/bg;->L(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCalendarMessageMeta(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/r;->calendarMessageMeta:Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    return-void
.end method
