.class public Ln3/m0/c0/t/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Ln3/m0/c0/t/w/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/t/w/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Ln3/m0/c0/s/p;

.field public final d:Landroidx/work/ListenableWorker;

.field public final e:Ln3/m0/j;

.field public final f:Ln3/m0/c0/t/x/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/t/r;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/m0/c0/s/p;Landroidx/work/ListenableWorker;Ln3/m0/j;Ln3/m0/c0/t/x/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/m0/c0/t/w/c;

    invoke-direct {v0}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/m0/c0/t/r;->a:Ln3/m0/c0/t/w/c;

    .line 4
    iput-object p1, p0, Ln3/m0/c0/t/r;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Ln3/m0/c0/t/r;->c:Ln3/m0/c0/s/p;

    .line 6
    iput-object p3, p0, Ln3/m0/c0/t/r;->d:Landroidx/work/ListenableWorker;

    .line 7
    iput-object p4, p0, Ln3/m0/c0/t/r;->e:Ln3/m0/j;

    .line 8
    iput-object p5, p0, Ln3/m0/c0/t/r;->f:Ln3/m0/c0/t/x/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/r;->c:Ln3/m0/c0/s/p;

    iget-boolean v0, v0, Ln3/m0/c0/s/p;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ln3/m0/c0/t/w/c;

    invoke-direct {v0}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 3
    iget-object v1, p0, Ln3/m0/c0/t/r;->f:Ln3/m0/c0/t/x/a;

    check-cast v1, Ln3/m0/c0/t/x/b;

    .line 4
    iget-object v1, v1, Ln3/m0/c0/t/x/b;->c:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v2, Ln3/m0/c0/t/r$a;

    invoke-direct {v2, p0, v0}, Ln3/m0/c0/t/r$a;-><init>(Ln3/m0/c0/t/r;Ln3/m0/c0/t/w/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    new-instance v1, Ln3/m0/c0/t/r$b;

    invoke-direct {v1, p0, v0}, Ln3/m0/c0/t/r$b;-><init>(Ln3/m0/c0/t/r;Ln3/m0/c0/t/w/c;)V

    iget-object v2, p0, Ln3/m0/c0/t/r;->f:Ln3/m0/c0/t/x/a;

    .line 7
    check-cast v2, Ln3/m0/c0/t/x/b;

    .line 8
    iget-object v2, v2, Ln3/m0/c0/t/x/b;->c:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v0, v1, v2}, Ln3/m0/c0/t/w/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/m0/c0/t/r;->a:Ln3/m0/c0/t/w/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/m0/c0/t/w/c;->i(Ljava/lang/Object;)Z

    return-void
.end method
