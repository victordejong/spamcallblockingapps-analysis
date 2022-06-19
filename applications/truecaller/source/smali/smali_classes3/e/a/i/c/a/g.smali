.class public final Le/a/i/c/a/g;
.super Le/a/i/c/a/h;
.source "SourceFile"


# instance fields
.field public final g:Lcom/truecaller/ads/adsrouter/ui/AdType;


# direct methods
.method public constructor <init>(Le/a/i/c/a/e;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/c/a/h;-><init>(Le/a/i/c/a/b;)V

    .line 2
    invoke-interface {p1}, Le/a/i/c/a/b;->a()Lcom/truecaller/ads/adsrouter/ui/AdType;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c/a/g;->g:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/truecaller/ads/adsrouter/ui/AdType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/g;->g:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-object v0
.end method
