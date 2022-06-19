.class public final Le/a/a/m/j3/b;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/t1;",
        ">;",
        "Le/a/a/m/p0;"
    }
.end annotation


# instance fields
.field public c:Z

.field public d:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/a/m/t1$a;

.field public final g:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

.field public final h:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/t1$a;Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumHomeTabPromo"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/j3/b;->e:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/m/j3/b;->f:Le/a/a/m/t1$a;

    iput-object p4, p0, Le/a/a/m/j3/b;->g:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

    iput-object p5, p0, Le/a/a/m/j3/b;->h:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/a/a/m/d1$r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/a/a/m/d1$r;

    .line 3
    iget-object p1, p1, Le/a/a/m/d1$r;->b:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    .line 4
    iget-object v0, p0, Le/a/a/m/j3/b;->d:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Le/a/a/m/j3/b;->d:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    .line 6
    iput-boolean v2, p0, Le/a/a/m/j3/b;->c:Z

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final B(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/m/j3/b;->h:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Context"

    const-string v3, "HomeTab"

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Type"

    .line 5
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Action"

    .line 6
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Le/a/q2/g$b$a;

    const/4 p2, 0x0

    const-string v2, "PromoView"

    invoke-direct {p1, v2, p2, v1, p2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p2, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 8
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/m/t1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/j3/b;->d:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/m/j3/b;->e:Le/a/p5/c0;

    const v3, 0x7f1204c1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026omeTabPromoCampaignTitle)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/a/m/t1;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/a/m/j3/b;->e:Le/a/p5/c0;

    const v3, 0x7f1204c0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026TabPromoCampaignSubTitle)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/a/m/t1;->k(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0805c0

    invoke-interface {p1, v0, v2}, Le/a/a/m/t1;->I3(Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/m/j3/b;->e:Le/a/p5/c0;

    const v3, 0x7f1204c3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026HomeTabPromoGenericTitle)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/a/m/t1;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/a/a/m/j3/b;->e:Le/a/p5/c0;

    const v3, 0x7f1204c2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026eTabPromoGenericSubTitle)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/a/m/t1;->k(Ljava/lang/String;)V

    const v0, 0x7f0805c1

    .line 10
    invoke-interface {p1, v0}, Le/a/a/m/t1;->H3(I)V

    .line 11
    :goto_0
    iget-boolean p1, p0, Le/a/a/m/j3/b;->c:Z

    if-nez p1, :cond_2

    const-string p1, "Shown"

    .line 12
    invoke-virtual {p0, p2, p1}, Le/a/a/m/j3/b;->B(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;Ljava/lang/String;)V

    .line 13
    iput-boolean v1, p0, Le/a/a/m/j3/b;->c:Z

    :cond_2
    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/m/j3/b;->d:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Le/a/a/m/j3/b;->g:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promo"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "DateTime.now()"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->e:Le/a/l/c2;

    .line 6
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 7
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-interface {v2, v5, v6}, Le/a/l/c2;->c2(J)V

    .line 10
    iget-object v1, v1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->e:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->I1()I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v1, v2}, Le/a/l/c2;->a0(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->e:Le/a/l/c2;

    .line 12
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 13
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 15
    invoke-interface {v2, v5, v6}, Le/a/l/c2;->L2(J)V

    .line 16
    iget-object v1, v1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;->e:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->t0()I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v1, v2}, Le/a/l/c2;->b0(I)V

    .line 17
    :goto_0
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6dd6849c

    if-eq v1, v2, :cond_3

    const v2, -0x1d315c00

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "ItemEvent.ACTION_DISMISS_PREMIUM"

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Dismissed"

    .line 20
    invoke-virtual {p0, v0, p1}, Le/a/a/m/j3/b;->B(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Le/a/a/m/j3/b;->f:Le/a/a/m/t1$a;

    invoke-interface {p1}, Le/a/a/m/t1$a;->Nd()V

    return v4

    :cond_3
    const-string v1, "ItemEvent.ACTION_OPEN_PREMIUM"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Clicked"

    .line 23
    invoke-virtual {p0, v0, p1}, Le/a/a/m/j3/b;->B(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Le/a/a/m/j3/b;->f:Le/a/a/m/t1$a;

    invoke-virtual {v0}, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/m/t1$a;->n8(Ljava/lang/String;)V

    return v4

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
