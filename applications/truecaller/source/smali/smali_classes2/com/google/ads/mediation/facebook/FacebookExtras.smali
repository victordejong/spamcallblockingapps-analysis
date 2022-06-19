.class public Lcom/google/ads/mediation/facebook/FacebookExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NATIVE_BANNER:Ljava/lang/String; = "native_banner"

.field private static _nativeBanner:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/google/ads/mediation/facebook/FacebookExtras;->NATIVE_BANNER:Ljava/lang/String;

    sget-boolean v2, Lcom/google/ads/mediation/facebook/FacebookExtras;->_nativeBanner:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setNativeBanner(Z)Lcom/google/ads/mediation/facebook/FacebookExtras;
    .locals 0

    .line 1
    sput-boolean p1, Lcom/google/ads/mediation/facebook/FacebookExtras;->_nativeBanner:Z

    return-object p0
.end method
