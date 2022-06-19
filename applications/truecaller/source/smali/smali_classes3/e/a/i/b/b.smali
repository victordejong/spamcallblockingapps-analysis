.class public final Le/a/i/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;


# direct methods
.method public constructor <init>(Le/a/i/f0/m/c;)V
    .locals 2

    const-string v0, "adHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    iput-object v1, p0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 4
    iget-object p1, p1, Le/a/i/f0/m/c;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    .line 5
    sget-object v1, Lcom/truecaller/ads/provider/holders/AdHolderType;->CUSTOM_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    if-ne p1, v1, :cond_0

    .line 6
    sget-object p1, Le/a/i/b/c;->a:Ljava/util/Set;

    .line 7
    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getCustomFormatId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AdHolder contains unsupported ad"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->performClick(Ljava/lang/String;)V

    return-void
.end method
