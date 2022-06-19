.class final Li/c/v/b/b;
.super Li/c/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/v/b/b$b;,
        Li/c/v/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/r;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/v/b/b;->a:Landroid/os/Handler;

    .line 3
    iput-boolean p2, p0, Li/c/v/b/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Li/c/r$b;
    .locals 3

    .line 1
    new-instance v0, Li/c/v/b/b$a;

    iget-object v1, p0, Li/c/v/b/b;->a:Landroid/os/Handler;

    iget-boolean v2, p0, Li/c/v/b/b;->b:Z

    invoke-direct {v0, v1, v2}, Li/c/v/b/b$a;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;
    .locals 2

    const-string v0, "run == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit == null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Li/c/a0/a;->s(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4
    new-instance v0, Li/c/v/b/b$b;

    iget-object v1, p0, Li/c/v/b/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Li/c/v/b/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 5
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 6
    iget-boolean v1, p0, Li/c/v/b/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8
    :cond_0
    iget-object v1, p0, Li/c/v/b/b;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v0
.end method
