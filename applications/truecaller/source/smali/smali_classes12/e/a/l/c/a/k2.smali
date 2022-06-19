.class public final Le/a/l/c/a/k2;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/o1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/p1;",
        ">;",
        "Le/a/l/c/a/o1;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/n1;

.field public final e:Le/a/l/c/a/j2;

.field public final f:Lcom/truecaller/clevertap/CleverTapManager;


# direct methods
.method public constructor <init>(Le/a/l/c/a/n1;Le/a/l/c/a/j2;Lcom/truecaller/clevertap/CleverTapManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "router"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/k2;->d:Le/a/l/c/a/n1;

    iput-object p2, p0, Le/a/l/c/a/k2;->e:Le/a/l/c/a/j2;

    iput-object p3, p0, Le/a/l/c/a/k2;->f:Lcom/truecaller/clevertap/CleverTapManager;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Le/a/l/c/a/p1;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/l/c/a/f;->G(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/c/a/p;

    .line 5
    iget-object p2, p2, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 6
    instance-of v0, p2, Le/a/l/c/a/t$i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Le/a/l/c/a/t$i;

    if-eqz p2, :cond_8

    .line 7
    iget-boolean v0, p2, Le/a/l/c/a/t$i;->d:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1}, Le/a/l/c/a/p1;->L()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p2, Le/a/l/c/a/t$i;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/l/c/a/p1;->r3(I)V

    .line 11
    :cond_2
    iget-object v0, p2, Le/a/l/c/a/t$i;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p1, v0}, Le/a/l/c/a/p1;->o3(Ljava/lang/String;)V

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p2, Le/a/l/c/a/t$i;->k:Le/a/l/c/a/y;

    if-eqz v0, :cond_4

    .line 14
    iget-object v2, v0, Le/a/l/c/a/y;->b:Le/a/l/c/a/x2;

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 15
    :goto_1
    invoke-interface {p1, v2}, Le/a/l/c/a/p1;->F2(Le/a/l/c/a/x2;)V

    if-eqz v0, :cond_5

    .line 16
    iget-object v2, v0, Le/a/l/c/a/y;->a:Le/a/l/c/a/x;

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_6

    .line 17
    iget-wide v0, v0, Le/a/l/c/a/y;->c:J

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_6
    invoke-interface {p1, v2, v1}, Le/a/l/c/a/p1;->i0(Le/a/l/c/a/x;Ljava/lang/Long;)V

    .line 19
    iget-object v0, p2, Le/a/l/c/a/t$i;->e:Le/a/l/c/a/x2;

    .line 20
    invoke-interface {p1, v0}, Le/a/l/c/a/p1;->U(Le/a/l/c/a/x2;)V

    .line 21
    iget-object v0, p2, Le/a/l/c/a/t$i;->f:Le/a/l/c/a/x2;

    .line 22
    invoke-interface {p1, v0}, Le/a/l/c/a/p1;->A4(Le/a/l/c/a/x2;)V

    .line 23
    iget-object v0, p2, Le/a/l/c/a/t$i;->g:Le/a/l/c/a/x2;

    .line 24
    invoke-interface {p1, v0}, Le/a/l/c/a/p1;->I(Le/a/l/c/a/x2;)V

    .line 25
    iget-object v0, p2, Le/a/l/c/a/t$i;->h:Le/a/l/n2/f;

    .line 26
    iget-object v1, p2, Le/a/l/c/a/t$i;->i:Le/a/l/v2/i/a/a;

    .line 27
    invoke-interface {p1, v0, v1}, Le/a/l/c/a/p1;->J4(Le/a/l/n2/f;Le/a/l/v2/i/a/a;)V

    .line 28
    iget-object v0, p2, Le/a/l/c/a/t$i;->j:Le/a/l/c/a/a0;

    .line 29
    invoke-interface {p1, v0}, Le/a/l/c/a/p1;->B2(Le/a/l/c/a/a0;)V

    .line 30
    iget-object p1, p2, Le/a/l/c/a/t$i;->l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-nez p1, :cond_7

    .line 32
    iget-object p1, p0, Le/a/l/c/a/k2;->f:Lcom/truecaller/clevertap/CleverTapManager;

    .line 33
    sget-object p2, Lcom/truecaller/analytics/AppEvents$PremiumPromotionSeen$PromoType;->BottomBarWinback:Lcom/truecaller/analytics/AppEvents$PremiumPromotionSeen$PromoType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 34
    new-instance v0, Ls1/k;

    const-string v1, "PromoType"

    invoke-direct {v0, v1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "PremiumPromoSeen"

    .line 36
    invoke-interface {p1, v0, p2}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/p;

    .line 2
    iget-object p1, p1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 3
    instance-of p1, p1, Le/a/l/c/a/t$i;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Le/a/l/n2/f;

    if-eqz v1, :cond_0

    iget-object p1, p0, Le/a/l/c/a/k2;->d:Le/a/l/c/a/n1;

    const-string v1, "null cannot be cast to non-null type com.truecaller.premium.billing.Subscription"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/l/n2/f;

    const-string v1, "CARD_PURCHASE_BUTTON_SOURCE"

    invoke-interface {p1, v0, v1}, Le/a/l/c/a/l1;->Je(Le/a/l/n2/f;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Le/a/l/c/a/z;

    if-eqz v1, :cond_1

    iget-object p1, p0, Le/a/l/c/a/k2;->e:Le/a/l/c/a/j2;

    const-string v1, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CtaAction"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/l/c/a/z;

    invoke-interface {p1, v0}, Le/a/l/c/a/j2;->Hd(Le/a/l/c/a/z;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, v0, Le/a/l/v2/f/b$b;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    .line 5
    iget p1, p1, Le/a/o2/h;->b:I

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/p;

    .line 7
    iget-object p1, p1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v0, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.Promo"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/t$i;

    .line 9
    iget-object v0, p0, Le/a/l/c/a/k2;->d:Le/a/l/c/a/n1;

    .line 10
    iget-object p1, p1, Le/a/l/c/a/t$i;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v0, p1}, Le/a/l/c/a/n1;->Fg(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
