.class public abstract Lcom/mopub/mobileads/MoPubRewardedAdManager$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# instance fields
.field public final a:Lcom/mopub/mobileads/AdAdapter;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$l;->a:Lcom/mopub/mobileads/AdAdapter;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 3
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$l;->a:Lcom/mopub/mobileads/AdAdapter;

    .line 4
    invoke-virtual {v0, v1}, Le/n/b/p0;->b(Lcom/mopub/mobileads/AdAdapter;)Ljava/util/Set;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
