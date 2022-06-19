.class public Lcom/mopub/mobileads/AdViewController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$b;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$b;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController$b;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iput-object v0, v1, Lcom/mopub/mobileads/AdViewController;->t:Landroid/graphics/Point;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$b;->a:Lcom/mopub/mobileads/AdViewController;

    .line 5
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->c()V

    return-void
.end method
