.class public final Le/a/i/f0/m/h;
.super Le/a/i/f0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/f0/m/b<",
        "Lcom/google/android/gms/ads/nativead/NativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Z

.field public e:Z

.field public final f:Lcom/truecaller/ads/provider/holders/AdHolderType;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/ads/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/i/f0/m/b;-><init>(Ljava/lang/Object;Le/a/i/f0/l/c;)V

    .line 2
    iget-boolean p2, p2, Le/a/i/f0/l/c;->f:Z

    .line 3
    iput-boolean p2, p0, Le/a/i/f0/m/h;->d:Z

    .line 4
    sget-object p2, Lcom/truecaller/ads/provider/holders/AdHolderType;->NATIVE_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    iput-object p2, p0, Le/a/i/f0/m/h;->f:Lcom/truecaller/ads/provider/holders/AdHolderType;

    const-string p2, "native"

    .line 5
    iput-object p2, p0, Le/a/i/f0/m/h;->g:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Le/a/i/f0/m/h;->h:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "unified"

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/i/f0/m/h;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/i/f0/m/h;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/i/f0/m/h;->e()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/i/f0/m/h;->e:Z

    return-void
.end method

.method public e()Lcom/google/android/gms/ads/nativead/NativeAd;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/i/f0/m/h;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/f0/m/h;->h:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t unwrap destroyed ad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lcom/truecaller/ads/provider/holders/AdHolderType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/h;->f:Lcom/truecaller/ads/provider/holders/AdHolderType;

    return-object v0
.end method
