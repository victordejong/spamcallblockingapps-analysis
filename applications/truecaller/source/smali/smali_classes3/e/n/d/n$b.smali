.class public Le/n/d/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/d/n;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/volley/Response$Listener<",
        "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/n/d/n;


# direct methods
.method public constructor <init>(Le/n/d/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/n$b;->a:Le/n/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2

    .line 2
    iget-object v0, p0, Le/n/d/n$b;->a:Le/n/d/n;

    .line 3
    iget-object v1, v0, Le/n/d/n;->f:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lcom/mopub/nativeads/PositioningSource$PositioningListener;->onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, v0, Le/n/d/n;->f:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Le/n/d/n;->g:I

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-virtual {p0, p1}, Le/n/d/n$b;->onResponse(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method
