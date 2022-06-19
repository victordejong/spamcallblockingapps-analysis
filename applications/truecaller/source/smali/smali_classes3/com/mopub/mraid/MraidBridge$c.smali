.class public Lcom/mopub/mraid/MraidBridge$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$c;->a:Lcom/mopub/mraid/MraidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$c;->a:Lcom/mopub/mraid/MraidBridge;

    .line 2
    iget-object v0, v0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
