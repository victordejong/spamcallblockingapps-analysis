.class public final Le/a/i/f0/m/c;
.super Le/a/i/f0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/f0/m/b<",
        "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/truecaller/ads/provider/holders/AdHolderType;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Le/a/i/f0/l/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/i/f0/m/b;-><init>(Ljava/lang/Object;Le/a/i/f0/l/c;)V

    .line 2
    sget-object p2, Lcom/truecaller/ads/provider/holders/AdHolderType;->CUSTOM_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    iput-object p2, p0, Le/a/i/f0/m/c;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    const-string p2, "custom"

    .line 3
    iput-object p2, p0, Le/a/i/f0/m/c;->e:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getCustomFormatId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Le/a/i/f0/m/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->destroy()V

    return-void
.end method

.method public getType()Lcom/truecaller/ads/provider/holders/AdHolderType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/c;->d:Lcom/truecaller/ads/provider/holders/AdHolderType;

    return-object v0
.end method
