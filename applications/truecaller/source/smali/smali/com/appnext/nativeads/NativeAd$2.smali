.class public final Lcom/appnext/nativeads/NativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fP:Lcom/appnext/nativeads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd$2;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/appnext/core/Ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$2;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$700(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/appnext/core/AppnextAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$2;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/appnext/core/SettingsManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v0

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
