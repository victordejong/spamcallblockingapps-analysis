.class public final Le/a/i/f0/l/b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# instance fields
.field public a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Lcom/google/android/gms/ads/LoadAdError;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/a/i/f0/l/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/b;->b:Le/a/i/f0/l/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/i/f0/l/a;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object v0, p0, Le/a/i/f0/l/b;->a:Ls1/z/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/i/f0/l/b;->a:Ls1/z/b/l;

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/b;->b:Le/a/i/f0/l/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/i/f0/l/a;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/i/f0/l/b;->a:Ls1/z/b/l;

    return-void
.end method
