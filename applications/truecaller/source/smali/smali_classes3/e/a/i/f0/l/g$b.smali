.class public final Le/a/i/f0/l/g$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/g;->b(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.ads.provider.fetch.AdsConsentRefreshManagerImpl$setTargetingAndPromotionState$2"
    f = "AdsConsentRefreshManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/i/f0/l/g;

.field public final synthetic f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

.field public final synthetic g:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/g;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/g$b;->e:Le/a/i/f0/l/g;

    iput-object p2, p0, Le/a/i/f0/l/g$b;->f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    iput-object p3, p0, Le/a/i/f0/l/g$b;->g:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/i/f0/l/g$b;

    iget-object v0, p0, Le/a/i/f0/l/g$b;->e:Le/a/i/f0/l/g;

    iget-object v1, p0, Le/a/i/f0/l/g$b;->f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    iget-object v2, p0, Le/a/i/f0/l/g$b;->g:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/l/g$b;-><init>(Le/a/i/f0/l/g;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/i/f0/l/g$b;->e:Le/a/i/f0/l/g;

    iget-object v1, p0, Le/a/i/f0/l/g$b;->f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    iget-object v2, p0, Le/a/i/f0/l/g$b;->g:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/i/f0/l/g;->b:Lo3/a;

    .line 5
    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {p2, v1, v2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->e(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/i/f0/l/g$b;->e:Le/a/i/f0/l/g;

    .line 3
    iget-object p1, p1, Le/a/i/f0/l/g;->b:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    .line 5
    iget-object v0, p0, Le/a/i/f0/l/g$b;->f:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;

    .line 6
    iget-object v1, p0, Le/a/i/f0/l/g$b;->g:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->e(Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$TargetingState;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager$PromotionState;)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
