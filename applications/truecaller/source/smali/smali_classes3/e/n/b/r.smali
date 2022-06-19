.class public final synthetic Le/n/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/CloseableLayout$OnCloseListener;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/FullscreenAdController;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/n/b/r;->a:Lcom/mopub/mobileads/FullscreenAdController;

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 1

    iget-object v0, p0, Le/n/b/r;->a:Lcom/mopub/mobileads/FullscreenAdController;

    .line 1
    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
