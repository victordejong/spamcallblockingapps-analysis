.class public final synthetic Le/n/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/AdAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/c;->a:Lcom/mopub/mobileads/AdAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/n/b/c;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1
    iget-object v1, v0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v2, v1, Lcom/mopub/mobileads/BaseAd;->a:Z

    if-eqz v2, :cond_3

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseAd;->e()V

    :cond_3
    return-void
.end method
