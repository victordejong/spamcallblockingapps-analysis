.class public final Le/a/i/d0/d0/k$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d0/k$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.ads.mediation.google.MediationNativeEventListener$onAdLoaded$1$1"
    f = "MediationNativeEventListener.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/i/d0/d0/k$a;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/k$a;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/k$a$a;->e:Le/a/i/d0/d0/k$a;

    iput-object p2, p0, Le/a/i/d0/d0/k$a$a;->f:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/i/d0/d0/k$a$a;->g:Ls1/z/c/c0;

    iput-object p4, p0, Le/a/i/d0/d0/k$a$a;->h:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/i/d0/d0/k$a$a;

    iget-object v1, p0, Le/a/i/d0/d0/k$a$a;->e:Le/a/i/d0/d0/k$a;

    iget-object v2, p0, Le/a/i/d0/d0/k$a$a;->f:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/i/d0/d0/k$a$a;->g:Ls1/z/c/c0;

    iget-object v4, p0, Le/a/i/d0/d0/k$a$a;->h:Ls1/z/c/c0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/i/d0/d0/k$a$a;-><init>(Le/a/i/d0/d0/k$a;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/i/d0/d0/k$a$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/i/d0/d0/k$a$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/d0/d0/k$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Le/a/i/d0/d0/j;

    iget-object v0, p0, Le/a/i/d0/d0/k$a$a;->e:Le/a/i/d0/d0/k$a;

    iget-object v0, v0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    .line 3
    iget-object v0, v0, Le/a/i/d0/d0/k;->a:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Le/a/i/d0/d0/k$a$a;->f:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    new-instance v2, Lcom/truecaller/ads/mediation/google/MediationImageAssets;

    iget-object v3, p0, Le/a/i/d0/d0/k$a$a;->g:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Le/a/i/d0/d0/m;

    iget-object v4, p0, Le/a/i/d0/d0/k$a$a;->h:Ls1/z/c/c0;

    iget-object v4, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Le/a/i/d0/d0/m;

    invoke-direct {v2, v3, v4}, Lcom/truecaller/ads/mediation/google/MediationImageAssets;-><init>(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)V

    new-instance v3, Le/a/i/d0/d0/k$a$a$a;

    invoke-direct {v3, p0}, Le/a/i/d0/d0/k$a$a$a;-><init>(Le/a/i/d0/d0/k$a$a;)V

    invoke-direct {p1, v0, v1, v2, v3}, Le/a/i/d0/d0/j;-><init>(Landroid/content/Context;Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;Lcom/truecaller/ads/mediation/google/MediationImageAssets;Ls1/z/b/a;)V

    .line 5
    iget-object v0, p0, Le/a/i/d0/d0/k$a$a;->e:Le/a/i/d0/d0/k$a;

    iget-object v0, v0, Le/a/i/d0/d0/k$a;->j:Le/a/i/d0/d0/k;

    .line 6
    iget-object v0, v0, Le/a/i/d0/d0/k;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
