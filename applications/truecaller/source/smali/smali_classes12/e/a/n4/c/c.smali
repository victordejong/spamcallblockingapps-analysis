.class public final Le/a/n4/c/c;
.super Le/a/n4/c/a;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:I

.field public final k:Le/a/l/p2/v0;

.field public final l:Le/a/o5/b0;

.field public final m:Le/a/l/a2;


# direct methods
.method public constructor <init>(Le/a/n4/a;Le/a/u3/g;Le/a/l/p2/v0;Le/a/q2/a;Le/a/o5/f0;Le/a/p5/c;Le/a/o5/b0;Le/a/l/a2;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/n4/c/a;-><init>(Le/a/n4/a;Le/a/u3/g;Le/a/q2/a;Le/a/o5/f0;Le/a/p5/c;)V

    iput-object p3, p0, Le/a/n4/c/c;->k:Le/a/l/p2/v0;

    iput-object p7, p0, Le/a/n4/c/c;->l:Le/a/o5/b0;

    iput-object p8, p0, Le/a/n4/c/c;->m:Le/a/l/a2;

    const-string p1, "buypro"

    .line 2
    iput-object p1, p0, Le/a/n4/c/c;->h:Ljava/lang/String;

    const p1, 0x7f0805c3

    .line 3
    iput p1, p0, Le/a/n4/c/c;->i:I

    const p1, 0x7f120468

    .line 4
    iput p1, p0, Le/a/n4/c/c;->j:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Clicked"

    .line 2
    invoke-virtual {p0, v0}, Le/a/n4/c/a;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/n4/c/c;->m:Le/a/l/a2;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "view.context"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->CALL_LOG_PROMO:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 6
    new-instance v2, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;

    const-string v3, "UUID.randomUUID().toString()"

    .line 7
    invoke-static {v3}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    invoke-direct {v2, v3, v4}, Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p1, v4, v1, v2}, Le/a/l/a2;->e(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/premium/PremiumLaunchContext;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;)V

    return-void
.end method

.method public d()Z
    .locals 5

    .line 1
    invoke-super {p0}, Le/a/n4/c/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/n4/c/c;->k:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/n4/c/a;->d:Le/a/u3/g;

    .line 3
    iget-object v2, v0, Le/a/u3/g;->P1:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x91

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0, v1}, Le/a/u3/i;->getInt(I)I

    move-result v0

    iget-object v2, p0, Le/a/n4/c/c;->l:Le/a/o5/b0;

    .line 5
    iget-object v3, p0, Le/a/n4/c/a;->g:Le/a/p5/c;

    .line 6
    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Le/a/o5/b0;->c(J)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/n4/c/c;->i:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n4/c/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/n4/c/c;->j:I

    return v0
.end method
