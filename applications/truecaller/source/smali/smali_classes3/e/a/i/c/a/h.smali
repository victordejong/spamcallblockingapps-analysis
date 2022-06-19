.class public abstract Le/a/i/c/a/h;
.super Le/a/i/c/a/i;
.source "SourceFile"


# instance fields
.field public final f:Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;


# direct methods
.method public constructor <init>(Le/a/i/c/a/b;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/c/a/i;-><init>(Le/a/i/c/a/b;)V

    .line 2
    sget-object p1, Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;->BANNER:Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;

    iput-object p1, p0, Le/a/i/c/a/h;->f:Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;

    return-void
.end method


# virtual methods
.method public d()Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/h;->f:Lcom/truecaller/ads/adsrouter/ui/AdRouterAdHolderType;

    return-object v0
.end method
