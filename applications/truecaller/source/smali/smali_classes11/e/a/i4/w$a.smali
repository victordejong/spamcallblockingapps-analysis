.class public final Le/a/i4/w$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i4/w;->c(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.notifications.WhatsAppNotificationHandler$onNotificationRemoved$1"
    f = "WhatsAppNotificationHandler.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i4/w;

.field public final synthetic g:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Le/a/i4/w;Landroid/service/notification/StatusBarNotification;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    iput-object p2, p0, Le/a/i4/w$a;->g:Landroid/service/notification/StatusBarNotification;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i4/w$a;

    iget-object v0, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    iget-object v1, p0, Le/a/i4/w$a;->g:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/i4/w$a;-><init>(Le/a/i4/w;Landroid/service/notification/StatusBarNotification;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i4/w$a;

    iget-object v0, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    iget-object v1, p0, Le/a/i4/w$a;->g:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/i4/w$a;-><init>(Le/a/i4/w;Landroid/service/notification/StatusBarNotification;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i4/w$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/i4/w$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v4, 0x7d0

    .line 4
    iput v3, p0, Le/a/i4/w$a;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/i4/w$a;->g:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 6
    iget-object v1, v1, Le/a/i4/w;->c:Landroid/content/Context;

    .line 7
    invoke-static {p1, v1}, Le/a/c/p/a;->r3(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Le/a/i4/v;

    move-result-object p1

    .line 8
    iget-object v1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 9
    iget-object v1, v1, Le/a/i4/w;->a:Ljava/util/Stack;

    .line 10
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 11
    :cond_3
    iget-object v1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 12
    iget-object v1, v1, Le/a/i4/w;->a:Ljava/util/Stack;

    .line 13
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i4/v;

    .line 14
    iget-object v2, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 15
    iget-object v2, v2, Le/a/i4/w;->a:Ljava/util/Stack;

    .line 16
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i4/v;

    .line 17
    iget-object v4, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 18
    iget-object v4, v4, Le/a/i4/w;->a:Ljava/util/Stack;

    .line 19
    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 20
    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    return-object v0

    .line 21
    :cond_4
    iget-object p1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    const-string v4, "firstPostedNotification"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget p1, v1, Le/a/i4/v;->c:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt p1, v4, :cond_7

    .line 24
    iget p1, v2, Le/a/i4/v;->c:I

    if-ne p1, v3, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    move p1, v5

    :goto_1
    if-eqz p1, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    .line 25
    :cond_7
    :goto_2
    iget-object p1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 26
    iget-object v1, v1, Le/a/i4/v;->a:Ljava/lang/String;

    .line 27
    iget-object v6, p1, Le/a/i4/w;->e:Le/a/k3/j/g;

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Le/a/k3/j/g;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v6

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ls1/k;

    .line 30
    iget-object v9, v9, Ls1/k;->b:Ljava/lang/Object;

    .line 31
    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 32
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    if-le v6, v3, :cond_a

    goto :goto_4

    .line 33
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_b

    .line 34
    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    .line 35
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 36
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    goto :goto_5

    .line 37
    :cond_b
    iget-object v6, p1, Le/a/i4/w;->i:Le/a/b0/q/y;

    invoke-virtual {v6, v1}, Le/a/b0/q/y;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v6, "phoneNumbers"

    .line 38
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_c

    .line 39
    iget-object v6, p1, Le/a/i4/w;->c:Landroid/content/Context;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v6, v1}, Le/a/i4/n;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    goto :goto_5

    :cond_c
    :goto_4
    move-object v1, v8

    .line 40
    :goto_5
    iget-object p1, p1, Le/a/i4/w;->f:Le/a/k3/j/b;

    invoke-virtual {p1, v1}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 41
    iget-object v1, p0, Le/a/i4/w$a;->f:Le/a/i4/w;

    .line 42
    iget-object v1, v1, Le/a/i4/w;->g:Le/a/h/t0/a;

    .line 43
    iget-boolean v2, v2, Le/a/i4/v;->b:Z

    .line 44
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "contact"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v6, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    new-instance v7, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {v7, v8}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    .line 46
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 49
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v10

    if-eq v10, v6, :cond_f

    .line 50
    :cond_d
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v10

    const-string v11, "contact.numbers"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/data/entity/Number;

    const-string v12, "number"

    .line 52
    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v12

    if-ne v12, v6, :cond_e

    move-object v9, v11

    goto :goto_6

    :cond_f
    if-nez v9, :cond_10

    .line 53
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 54
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/truecaller/data/entity/Number;

    :cond_10
    if-eqz v9, :cond_11

    .line 55
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_11
    move-object p1, v8

    .line 56
    :goto_7
    iput-object p1, v7, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v9, :cond_12

    .line 57
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_12
    move-object p1, v8

    .line 58
    :goto_8
    iput-object p1, v7, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v9, :cond_13

    .line 59
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object p1

    goto :goto_9

    :cond_13
    move-object p1, v8

    .line 60
    :goto_9
    iput-object p1, v7, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    if-eqz v9, :cond_14

    .line 61
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 62
    :cond_14
    iput-object v8, v7, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 63
    iput v4, v7, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 65
    iput-wide v4, v7, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const-wide/16 v4, 0x0

    .line 66
    iput-wide v4, v7, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    if-eqz v2, :cond_15

    .line 67
    iput v3, v7, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    :cond_15
    const-string p1, "com.whatsapp"

    .line 68
    iput-object p1, v7, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string p1, "HistoryEvent.Builder().a\u2026T_NAME)\n        }.build()"

    .line 69
    invoke-static {v7, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, v1, Le/a/h/t0/a;->a:Le/a/l0/c;

    invoke-interface {p1, v7}, Le/a/l0/c;->n(Lcom/truecaller/data/entity/HistoryEvent;)V

    .line 71
    iget-object p1, v1, Le/a/h/t0/a;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "whatsAppCallsDetected"

    invoke-interface {p1, v1, v3}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    return-object v0
.end method
