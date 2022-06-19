.class public final Le/a/i/f0/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/l/f;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/b0/e/f;

.field public final e:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Lo3/a;Le/a/b0/e/f;Le/a/u3/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Le/a/b0/e/f;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/l/g;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/i/f0/l/g;->b:Lo3/a;

    iput-object p3, p0, Le/a/i/f0/l/g;->c:Lo3/a;

    iput-object p4, p0, Le/a/i/f0/l/g;->d:Le/a/b0/e/f;

    iput-object p5, p0, Le/a/i/f0/l/g;->e:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/f0/l/g$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/f0/l/g$a;

    iget v1, v0, Le/a/i/f0/l/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/l/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/l/g$a;

    invoke-direct {v0, p0, p1}, Le/a/i/f0/l/g$a;-><init>(Le/a/i/f0/l/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/f0/l/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/l/g$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/f0/l/g;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 5
    iget-object p1, p0, Le/a/i/f0/l/g;->e:Le/a/u3/g;

    .line 6
    iget-object v2, p1, Le/a/u3/g;->Q3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0xfd

    aget-object v3, v3, v6

    invoke-virtual {v2, p1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Le/a/i/f0/l/g;->d:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object p1

    sget-object v2, Lcom/truecaller/common/account/Region;->REGION_2:Lcom/truecaller/common/account/Region;

    if-eq p1, v2, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, p0, Le/a/i/f0/l/g;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {p1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->f()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    move-result-object p1

    .line 9
    iget-object v2, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 10
    iget-object p1, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 11
    iput v4, v0, Le/a/i/f0/l/g$a;->e:I

    invoke-virtual {p0, v2, p1, v0}, Le/a/i/f0/l/g;->b(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 12
    :cond_6
    :goto_1
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_4

    .line 13
    :cond_7
    :goto_2
    iget-object p1, p0, Le/a/i/f0/l/g;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {p1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->g()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 14
    iget-object v2, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->a:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 15
    iget-object p1, p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$a;->b:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 16
    iput v5, v0, Le/a/i/f0/l/g$a;->e:I

    invoke-virtual {p0, v2, p1, v0}, Le/a/i/f0/l/g;->b(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 17
    :cond_8
    :goto_3
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_4

    .line 18
    :cond_9
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    :goto_4
    const-string v0, "if (featuresRegistry.fea\u2026t.success()\n            }"

    .line 19
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 20
    :cond_a
    sget-object p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    sget-object v2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;->UNKNOWN:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    iput v3, v0, Le/a/i/f0/l/g$a;->e:I

    invoke-virtual {p0, p1, v2, v0}, Le/a/i/f0/l/g;->b(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 21
    :cond_b
    :goto_5
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v0, "Result.success()"

    .line 22
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-object p1
.end method

.method public final b(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/g;->a:Ls1/w/f;

    new-instance v1, Le/a/i/f0/l/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/i/f0/l/g$b;-><init>(Le/a/i/f0/l/g;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
