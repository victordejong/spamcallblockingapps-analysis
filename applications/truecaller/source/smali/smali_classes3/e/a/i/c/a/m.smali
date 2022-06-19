.class public final Le/a/i/c/a/m;
.super Le/a/i/c/a/j;
.source "SourceFile"


# instance fields
.field public final g:Lcom/truecaller/ads/adsrouter/ui/AdType;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/c/a/j;-><init>(Le/a/i/c/a/b;)V

    .line 2
    sget-object p1, Lcom/truecaller/ads/adsrouter/ui/AdType;->NATIVE_IMAGE:Lcom/truecaller/ads/adsrouter/ui/AdType;

    iput-object p1, p0, Le/a/i/c/a/m;->g:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/truecaller/ads/adsrouter/ui/AdType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/m;->g:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-object v0
.end method
