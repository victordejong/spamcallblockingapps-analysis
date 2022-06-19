.class public Ln3/y/e/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/a0$d;,
        Ln3/y/e/a0$c;,
        Ln3/y/e/a0$e;
    }
.end annotation


# instance fields
.field public a:Ln3/y/e/u;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/e/a0$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/e/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ln3/y/e/b0;

.field public g:Landroid/view/accessibility/CaptioningManager;

.field public h:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field public i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler$Callback;

.field public k:Z

.field public l:Z

.field public m:Ln3/y/e/a0$c;

.field public n:Ln3/y/e/a0$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/e/u;Ln3/y/e/a0$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln3/y/e/a0;->d:Ljava/lang/Object;

    .line 3
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln3/y/e/a0;->e:Ljava/lang/Object;

    .line 4
    new-instance p2, Ln3/y/e/a0$a;

    invoke-direct {p2, p0}, Ln3/y/e/a0$a;-><init>(Ln3/y/e/a0;)V

    iput-object p2, p0, Ln3/y/e/a0;->j:Landroid/os/Handler$Callback;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Ln3/y/e/a0;->k:Z

    .line 6
    iput-boolean p2, p0, Ln3/y/e/a0;->l:Z

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Ln3/y/e/a0;->a:Ln3/y/e/u;

    .line 8
    iput-object p3, p0, Ln3/y/e/a0;->n:Ln3/y/e/a0$d;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ln3/y/e/a0;->b:Ljava/util/ArrayList;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ln3/y/e/a0;->c:Ljava/util/ArrayList;

    const-string p2, "captioning"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Ln3/y/e/a0;->g:Landroid/view/accessibility/CaptioningManager;

    .line 12
    new-instance p1, Ln3/y/e/a0$b;

    invoke-direct {p1, p0}, Ln3/y/e/a0$b;-><init>(Ln3/y/e/a0;)V

    iput-object p1, p0, Ln3/y/e/a0;->h:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ln3/y/e/a0;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/e/a0;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/y/e/a0;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public b(Ln3/y/e/a0$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/a0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/y/e/a0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/y/e/a0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ln3/y/e/b0;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln3/y/e/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/a0;->i:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/y/e/a0;->a(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/e/a0;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Ln3/y/e/a0;->h:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
