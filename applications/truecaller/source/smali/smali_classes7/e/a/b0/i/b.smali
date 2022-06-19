.class public abstract Le/a/b0/i/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:J

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    iput-object p1, p0, Le/a/b0/i/b;->a:Landroid/os/Handler;

    .line 3
    iput-wide p2, p0, Le/a/b0/i/b;->b:J

    .line 4
    new-instance p1, Le/a/b0/i/b$a;

    invoke-direct {p1, p0}, Le/a/b0/i/b$a;-><init>(Le/a/b0/i/b;)V

    iput-object p1, p0, Le/a/b0/i/b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/i/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Le/a/b0/i/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/b0/i/b;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/b0/i/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Le/a/b0/i/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/b0/i/b;->b:J

    invoke-virtual {p0, v0, v1}, Le/a/b0/i/b;->b(J)V

    return-void
.end method
