.class public final synthetic Le/n/b/m;
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

    iput-object p1, p0, Le/n/b/m;->a:Lcom/mopub/mobileads/AdAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/n/b/m;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 1
    iget-object v1, v0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v2, v1, Lcom/mopub/mobileads/BaseAd;->a:Z

    if-nez v2, :cond_1

    .line 3
    iget-object v0, v0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseAd;->e()V

    :cond_1
    return-void
.end method
