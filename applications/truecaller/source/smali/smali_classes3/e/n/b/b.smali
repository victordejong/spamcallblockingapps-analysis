.class public final synthetic Le/n/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/AdAdapter;

.field public final synthetic b:Lcom/mopub/common/MoPubReward;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/b;->a:Lcom/mopub/mobileads/AdAdapter;

    iput-object p2, p0, Le/n/b/b;->b:Lcom/mopub/common/MoPubReward;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/n/b/b;->a:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, p0, Le/n/b/b;->b:Lcom/mopub/common/MoPubReward;

    .line 1
    iget-object v0, v0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method
