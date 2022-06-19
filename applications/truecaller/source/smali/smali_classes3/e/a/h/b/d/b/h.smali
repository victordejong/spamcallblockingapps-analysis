.class public final Le/a/h/b/d/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/h/b/d/b/g<",
        "Le/a/h/b/d/b/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Slim"

    return-object v0
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/h/b/d/b/m;",
            ">;"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    move-object v2, v1

    check-cast v2, Lcom/truecaller/data/entity/HistoryEvent;

    .line 5
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    const/4 v7, 0x0

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_4

    .line 7
    sget-object v4, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    const/4 v8, 0x2

    invoke-static {v4, v2, v7, v8}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->c(Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;I)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v4

    .line 8
    sget-object v7, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v4, v7, :cond_2

    .line 9
    iget-wide v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 10
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 11
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v3, v2

    .line 13
    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 14
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Voip group calls can not be merged"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    move v5, v8

    goto :goto_3

    :pswitch_2
    move v5, v6

    .line 15
    :goto_3
    :pswitch_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 16
    :cond_4
    iget-wide v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 17
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 18
    :goto_4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 19
    invoke-static {v0, v2}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_5
    check-cast v3, Ljava/util/List;

    .line 20
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    new-instance v2, Le/a/h/b/d/b/m;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Le/a/h/b/d/b/m;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 24
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
