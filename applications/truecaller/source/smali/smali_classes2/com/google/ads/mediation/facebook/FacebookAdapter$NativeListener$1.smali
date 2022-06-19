.class public Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

.field public final synthetic val$mapper:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->val$mapper:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMappingFailed(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x6c

    .line 1
    invoke-static {v0, p1}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

    iget-object p1, p1, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

    iget-object v1, v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public onMappingSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

    iget-object v0, v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->this$1:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

    iget-object v1, v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener$1;->val$mapper:Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-void
.end method
