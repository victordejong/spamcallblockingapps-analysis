.class public Lcom/mopub/mobileads/FullscreenAdController$d;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/FullscreenAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final d:Lcom/mopub/mobileads/FullscreenAdController;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->e:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->c:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->e:I

    .line 2
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    .line 3
    iput v0, v1, Lcom/mopub/mobileads/FullscreenAdController;->n:I

    .line 4
    iget-boolean v2, v1, Lcom/mopub/mobileads/FullscreenAdController;->q:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v2, :cond_0

    .line 5
    iget v1, v1, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    invoke-virtual {v2, v1, v0}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController$d;->d:Lcom/mopub/mobileads/FullscreenAdController;

    .line 7
    iget-boolean v1, v0, Lcom/mopub/mobileads/FullscreenAdController;->p:Z

    if-nez v1, :cond_1

    iget v1, v0, Lcom/mopub/mobileads/FullscreenAdController;->n:I

    iget v2, v0, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController;->c()V

    :cond_2
    return-void
.end method
