.class public final Le/a/l/p2/e1$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/e1;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/l/p2/s1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumSubscriptionsHelperImpl$fetchSubscriptions$2"
    f = "PremiumSubscriptionsHelper.kt"
    l = {
        0x61,
        0x67,
        0x6b,
        0x6f,
        0x72,
        0x73,
        0x76,
        0x78,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/l/p2/e1;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/l/p2/e1;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    iput-object p2, p0, Le/a/l/p2/e1$a;->i:Ljava/lang/String;

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

    new-instance p1, Le/a/l/p2/e1$a;

    iget-object v0, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    iget-object v1, p0, Le/a/l/p2/e1$a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/e1$a;-><init>(Le/a/l/p2/e1;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/e1$a;

    iget-object v0, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    iget-object v1, p0, Le/a/l/p2/e1$a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/e1$a;-><init>(Le/a/l/p2/e1;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/e1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/p2/e1$a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v1, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    iget-object v0, p0, Le/a/l/p2/e1$a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/e1;

    iget-object v1, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/x;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 5
    iget-object v1, p1, Le/a/l/p2/e1;->a:Le/a/l/p2/s1;

    if-eqz v1, :cond_0

    return-object v1

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/l/p2/e1;->b:Le/a/l/p2/r0;

    .line 7
    iput v4, p0, Le/a/l/p2/e1$a;->g:I

    invoke-interface {p1, p0}, Le/a/l/p2/r0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    check-cast p1, Ls1/k;

    .line 8
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 10
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast p1, Le/a/l/p2/x;

    if-eqz v1, :cond_2

    .line 12
    iget-object p1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 13
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 14
    invoke-virtual {p1, v0, v3}, Le/a/l/p2/e1;->h(Ljava/lang/Integer;Le/a/l/p2/s1;)Le/a/l/p2/s1;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 16
    iget-object v1, v1, Le/a/l/p2/e1;->f:Le/a/l/u2/a;

    .line 17
    invoke-interface {v1}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v1

    sget-object v5, Lcom/truecaller/premium/provider/Store;->WEB:Lcom/truecaller/premium/provider/Store;

    if-ne v1, v5, :cond_4

    .line 18
    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    iget-object v2, p0, Le/a/l/p2/e1$a;->i:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, p0, Le/a/l/p2/e1$a;->g:I

    invoke-virtual {v1, p1, v2, p0}, Le/a/l/p2/e1;->i(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1

    .line 19
    :cond_4
    iget-object v1, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v5, "gold"

    .line 20
    invoke-static {v5, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    iget-boolean v1, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr v1, v4

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 23
    iget-object v2, v1, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 24
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    iput-object p1, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/l/p2/e1$a;->f:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, p0, Le/a/l/p2/e1$a;->g:I

    invoke-static {v2, v3, v5, p0, v4}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, v1

    move-object v1, p1

    move-object p1, v2

    :goto_2
    check-cast p1, Le/a/l/p2/i1$a;

    .line 26
    invoke-virtual {v0, p1, v1}, Le/a/l/p2/e1;->s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;

    move-result-object p1

    return-object p1

    .line 27
    :cond_6
    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 28
    iget-object v5, v1, Le/a/l/p2/e1;->j:Le/a/l/p2/b1;

    invoke-interface {v5}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/premium/data/SubscriptionStatusReason;->isOnHold()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v1, v1, Le/a/l/p2/e1;->j:Le/a/l/p2/b1;

    invoke-interface {v1}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v1

    sget-object v5, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    if-ne v1, v5, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v4

    :goto_4
    if-nez v1, :cond_12

    .line 29
    iget-boolean v1, p1, Le/a/l/p2/x;->l:Z

    if-nez v1, :cond_9

    goto/16 :goto_b

    .line 30
    :cond_9
    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 31
    iget-object v1, v1, Le/a/l/p2/e1;->h:Le/a/l/n2/e;

    .line 32
    iput-object p1, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, p0, Le/a/l/p2/e1$a;->g:I

    invoke-interface {v1, p0}, Le/a/l/n2/e;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    .line 33
    iget-object p1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    iput-object v3, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, p0, Le/a/l/p2/e1$a;->g:I

    invoke-virtual {p1, v1, p0}, Le/a/l/p2/e1;->p(Le/a/l/p2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    :goto_6
    return-object p1

    .line 34
    :cond_c
    iget-object p1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    .line 35
    iget-object p1, p1, Le/a/l/p2/e1;->h:Le/a/l/n2/e;

    .line 36
    iput-object v1, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    const/4 v5, 0x7

    iput v5, p0, Le/a/l/p2/e1$a;->g:I

    invoke-interface {p1, p0}, Le/a/l/n2/e;->m(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    .line 37
    :cond_d
    :goto_7
    check-cast p1, Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object p1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    iget-object v2, p0, Le/a/l/p2/e1$a;->i:Ljava/lang/String;

    iput-object v3, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    const/16 v3, 0x8

    iput v3, p0, Le/a/l/p2/e1$a;->g:I

    invoke-virtual {p1, v1, v2, p0}, Le/a/l/p2/e1;->l(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    :cond_e
    :goto_8
    check-cast p1, Le/a/l/p2/s1;

    goto :goto_a

    .line 39
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_11

    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    iput-object v3, p0, Le/a/l/p2/e1$a;->e:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, p0, Le/a/l/p2/e1$a;->g:I

    invoke-virtual {v1, p1, p0}, Le/a/l/p2/e1;->o(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    return-object v0

    :cond_10
    :goto_9
    check-cast p1, Le/a/l/p2/s1;

    goto :goto_a

    .line 40
    :cond_11
    new-instance v0, Le/a/l/p2/s1$c;

    invoke-direct {v0, p1}, Le/a/l/p2/s1$c;-><init>(Ljava/util/List;)V

    move-object p1, v0

    :goto_a
    return-object p1

    .line 41
    :cond_12
    :goto_b
    iget-object v1, p0, Le/a/l/p2/e1$a;->h:Le/a/l/p2/e1;

    const/4 v2, 0x4

    iput v2, p0, Le/a/l/p2/e1$a;->g:I

    invoke-virtual {v1, p1, p0}, Le/a/l/p2/e1;->q(Le/a/l/p2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_13

    return-object v0

    :cond_13
    :goto_c
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
