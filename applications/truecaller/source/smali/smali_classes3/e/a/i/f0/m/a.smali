.class public final Le/a/i/f0/m/a;
.super Le/a/i/f0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/f0/m/b<",
        "Lcom/google/android/gms/ads/admanager/AdManagerAdView;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/truecaller/ads/provider/holders/AdHolderType;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdView;Le/a/i/f0/l/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/i/f0/m/b;-><init>(Ljava/lang/Object;Le/a/i/f0/l/c;)V

    .line 2
    sget-object p2, Lcom/truecaller/ads/provider/holders/AdHolderType;->BANNER_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    iput-object p2, p0, Le/a/i/f0/m/a;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    const-string p2, "banner"

    .line 3
    iput-object p2, p0, Le/a/i/f0/m/a;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad.adSize.toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/i/f0/m/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    return-void
.end method

.method public getType()Lcom/truecaller/ads/provider/holders/AdHolderType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/a;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    return-object v0
.end method
