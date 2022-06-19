.class public Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/MediaViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mapUnifiedNativeAd(Landroid/content/Context;Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;

    iget-object p1, p1, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;

    iget-object p1, p1, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;

    iget-object v0, v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onVideoEnd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    :cond_0
    return-void
.end method

.method public onEnterFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public onExitFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public onFullscreenBackground(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public onFullscreenForeground(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public onPause(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public onPlay(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public onVolumeChange(Lcom/facebook/ads/MediaView;F)V
    .locals 0

    return-void
.end method
