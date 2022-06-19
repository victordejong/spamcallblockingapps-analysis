.class public Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/facebook/FacebookInitializer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/facebook/FacebookRewardedAd;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookRewardedAd;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->this$0:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->val$placementID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Failed to load ad from Facebook: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x68

    .line 2
    invoke-static {v0, p1}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->createAdapterError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->this$0:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;->access$100(Lcom/google/ads/mediation/facebook/FacebookRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->this$0:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;->access$100(Lcom/google/ads/mediation/facebook/FacebookRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onInitializeSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->this$0:Lcom/google/ads/mediation/facebook/FacebookRewardedAd;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookRewardedAd$1;->val$placementID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/ads/mediation/facebook/FacebookRewardedAd;->access$000(Lcom/google/ads/mediation/facebook/FacebookRewardedAd;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
