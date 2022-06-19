.class public final synthetic Le/n/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/FullscreenAdController;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/t;->a:Lcom/mopub/mobileads/FullscreenAdController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/n/b/t;->a:Lcom/mopub/mobileads/FullscreenAdController;

    .line 1
    iget-object v0, p1, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/FullscreenAdController;->b(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method
