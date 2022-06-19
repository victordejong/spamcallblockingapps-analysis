.class public final Le/a/l/o2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/n2/e;

.field public final b:Le/a/p5/c;

.field public final c:Le/a/z4/d;

.field public final d:Le/a/l/o2/c;

.field public final e:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/l/n2/e;Le/a/p5/c;Le/a/z4/d;Le/a/l/o2/c;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billing"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumablePurchaseLostNotifier"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/o2/d;->a:Le/a/l/n2/e;

    iput-object p2, p0, Le/a/l/o2/d;->b:Le/a/p5/c;

    iput-object p3, p0, Le/a/l/o2/d;->c:Le/a/z4/d;

    iput-object p4, p0, Le/a/l/o2/d;->d:Le/a/l/o2/c;

    iput-object p5, p0, Le/a/l/o2/d;->e:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/o2/d$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/o2/d$a;

    iget v1, v0, Le/a/l/o2/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/o2/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/o2/d$a;

    invoke-direct {v0, p0, p1}, Le/a/l/o2/d$a;-><init>(Le/a/l/o2/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/o2/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/o2/d$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Le/a/l/o2/d$a;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Le/a/l/o2/d$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/l/o2/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/l/o2/d$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/o2/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/o2/d;->a:Le/a/l/n2/e;

    iput-object p0, v0, Le/a/l/o2/d$a;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/l/o2/d$a;->e:I

    invoke-interface {p1, v0}, Le/a/l/n2/e;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/truecaller/premium/billing/Receipt;

    .line 8
    iget-object v8, v8, Lcom/truecaller/premium/billing/Receipt;->g:Lcom/truecaller/premium/billing/Receipt$State;

    .line 9
    sget-object v9, Lcom/truecaller/premium/billing/Receipt$State;->PURCHASED:Lcom/truecaller/premium/billing/Receipt$State;

    if-ne v8, v9, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v3

    .line 10
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_7
    invoke-virtual {v2, v6}, Le/a/l/o2/d;->c(Ljava/util/List;)V

    .line 13
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, v2

    move-object v2, p1

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    const-string v6, "Consuming the product: "

    .line 14
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 15
    iget-object v7, p1, Lcom/truecaller/premium/billing/Receipt;->a:Ljava/util/List;

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    iget-object v6, v5, Le/a/l/o2/d;->a:Le/a/l/n2/e;

    iput-object v5, v0, Le/a/l/o2/d$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/l/o2/d$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/l/o2/d$a;->e:I

    invoke-interface {v6, p1, v0}, Le/a/l/n2/e;->d(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 18
    :cond_9
    iget-object p1, v5, Le/a/l/o2/d;->c:Le/a/z4/d;

    const-string v0, "premiumHasConsumable"

    invoke-interface {p1, v0, v3}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final b(Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/o2/d$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/o2/d$b;

    iget v1, v0, Le/a/l/o2/d$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/o2/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/o2/d$b;

    invoke-direct {v0, p0, p1}, Le/a/l/o2/d$b;-><init>(Le/a/l/o2/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/o2/d$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/o2/d$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Le/a/l/o2/d$b;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/l/o2/d$b;->i:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/a0;

    iget-object v7, v0, Le/a/l/o2/d$b;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v0, Le/a/l/o2/d$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/l/o2/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/l/o2/d$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/o2/d;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/o2/d;->a:Le/a/l/n2/e;

    iput-object p0, v0, Le/a/l/o2/d$b;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/l/o2/d$b;->e:I

    invoke-interface {p1, v0}, Le/a/l/n2/e;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/truecaller/premium/billing/Receipt;

    .line 8
    iget-object v8, v8, Lcom/truecaller/premium/billing/Receipt;->g:Lcom/truecaller/premium/billing/Receipt$State;

    .line 9
    sget-object v9, Lcom/truecaller/premium/billing/Receipt$State;->PURCHASED:Lcom/truecaller/premium/billing/Receipt$State;

    if-ne v8, v9, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v3

    .line 10
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_7
    new-instance p1, Ls1/z/c/a0;

    invoke-direct {p1}, Ls1/z/c/a0;-><init>()V

    iput v3, p1, Ls1/z/c/a0;->a:I

    .line 13
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v2

    move-object v2, v7

    move-object v7, v6

    move-object v6, p1

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    const/16 v9, 0xc

    .line 14
    new-instance v10, Ljava/util/Date;

    .line 15
    iget-wide v11, p1, Lcom/truecaller/premium/billing/Receipt;->d:J

    .line 16
    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 18
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 19
    invoke-virtual {v11, v4, v9}, Ljava/util/Calendar;->add(II)V

    .line 20
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    const-string v10, "DateUtils.addMonths(Date\u2026aseTime), periodInMonths)"

    .line 21
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 22
    iget-object v11, v8, Le/a/l/o2/d;->b:Le/a/p5/c;

    invoke-interface {v11}, Le/a/p5/c;->c()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    move v9, v5

    goto :goto_5

    :cond_9
    move v9, v3

    :goto_5
    if-eqz v9, :cond_8

    .line 23
    iget-object v9, v8, Le/a/l/o2/d;->a:Le/a/l/n2/e;

    iput-object v8, v0, Le/a/l/o2/d$b;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/l/o2/d$b;->h:Ljava/lang/Object;

    iput-object v6, v0, Le/a/l/o2/d$b;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/l/o2/d$b;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/l/o2/d$b;->e:I

    invoke-interface {v9, p1, v0}, Le/a/l/n2/e;->d(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 24
    :cond_a
    :goto_6
    iget p1, v6, Ls1/z/c/a0;->a:I

    add-int/2addr p1, v5

    iput p1, v6, Ls1/z/c/a0;->a:I

    goto :goto_4

    .line 25
    :cond_b
    invoke-virtual {v8, v7}, Le/a/l/o2/d;->c(Ljava/util/List;)V

    .line 26
    iget-object p1, v8, Le/a/l/o2/d;->c:Le/a/z4/d;

    iget v0, v6, Ls1/z/c/a0;->a:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    move v3, v5

    :cond_c
    const-string v0, "premiumHasConsumable"

    invoke-interface {p1, v0, v3}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/premium/billing/Receipt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Le/a/l/o2/d;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "gold"

    goto :goto_0

    :cond_1
    const-string p1, "premium"

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Le/a/l/o2/d;->d:Le/a/l/o2/c;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v2, "premiumLostConsumableType"

    invoke-interface {v1, v2, p1}, Le/a/z4/d;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "premiumLostConsumableNotificationCount"

    invoke-interface {p1, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 7
    iget-object p1, v0, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v1, "showLostPremiumConsumableNotification"

    invoke-interface {p1, v1}, Le/a/z4/d;->remove(Ljava/lang/String;)V

    .line 8
    iget-object p1, v0, Le/a/l/o2/c;->b:Le/a/z4/d;

    iget-object v0, v0, Le/a/l/o2/c;->c:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    const-string v2, "premiumLostConsumableNotificationTimestamp"

    invoke-interface {p1, v2, v0, v1}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method
