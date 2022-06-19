.class public final Le/a/h/b/d/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/h/b/d/b/g<",
        "Le/a/h/b/d/b/b;",
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

    const-string v0, "Default"

    return-object v0
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/h/b/d/b/b;",
            ">;"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/HistoryEvent;

    .line 4
    invoke-static {v0}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/b/b;

    if-eqz v3, :cond_2

    .line 5
    iget-object v4, v3, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 6
    iget v5, v4, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    iget v6, v2, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 7
    sget-object v5, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v4, v6, v8}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->c(Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;I)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->getNameRes()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v2, v6, v8}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->c(Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;I)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->getNameRes()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    iget v5, v4, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    iget v6, v2, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    if-ne v5, v6, :cond_0

    .line 9
    iget v5, v4, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    iget v6, v2, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne v5, v6, :cond_0

    .line 10
    iget-object v5, v4, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    iget-object v5, v4, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    iget-object v6, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 13
    invoke-static {v5, v6, v7}, Le/a/b0/q/c0;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14
    new-instance v5, Lw3/b/a/b;

    .line 15
    iget-wide v8, v4, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 16
    invoke-direct {v5, v8, v9}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v5}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v4

    new-instance v5, Lw3/b/a/b;

    .line 17
    iget-wide v8, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 18
    invoke-direct {v5, v8, v9}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v5}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_1

    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v3, v2}, Le/a/h/b/d/b/i;->a(Lcom/truecaller/data/entity/HistoryEvent;)V

    goto :goto_0

    .line 20
    :cond_2
    :goto_2
    new-instance v3, Le/a/h/b/d/b/b;

    invoke-direct {v3, v2}, Le/a/h/b/d/b/b;-><init>(Lcom/truecaller/data/entity/HistoryEvent;)V

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object v0
.end method
