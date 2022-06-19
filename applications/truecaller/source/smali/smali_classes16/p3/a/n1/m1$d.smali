.class public Lp3/a/n1/m1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$d;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object p1, Lp3/a/n1/m1;->g0:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "["

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lp3/a/n1/m1$d;->a:Lp3/a/n1/m1;

    .line 2
    iget-object v2, v2, Lp3/a/n1/m1;->a:Lp3/a/e0;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Uncaught exception in the SynchronizationContext. Panic!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lp3/a/n1/m1$d;->a:Lp3/a/n1/m1;

    .line 6
    iget-boolean v0, p1, Lp3/a/n1/m1;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lp3/a/n1/m1;->C:Z

    .line 8
    iget-object v0, p1, Lp3/a/n1/m1;->f0:Lp3/a/n1/h2;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lp3/a/n1/h2;->f:Z

    .line 10
    iget-object v2, v0, Lp3/a/n1/h2;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 12
    iput-object v2, v0, Lp3/a/n1/h2;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    :cond_1
    invoke-virtual {p1, v1}, Lp3/a/n1/m1;->p(Z)V

    .line 14
    new-instance v0, Lp3/a/n1/n1;

    invoke-direct {v0, p1, p2}, Lp3/a/n1/n1;-><init>(Lp3/a/n1/m1;Ljava/lang/Throwable;)V

    .line 15
    iput-object v0, p1, Lp3/a/n1/m1;->B:Lp3/a/i0$i;

    .line 16
    iget-object p2, p1, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    invoke-virtual {p2, v0}, Lp3/a/n1/d0;->i(Lp3/a/i0$i;)V

    .line 17
    iget-object p2, p1, Lp3/a/n1/m1;->Q:Lp3/a/e;

    sget-object v0, Lp3/a/e$a;->d:Lp3/a/e$a;

    const-string v1, "PANIC! Entering TRANSIENT_FAILURE"

    invoke-virtual {p2, v0, v1}, Lp3/a/e;->a(Lp3/a/e$a;Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Lp3/a/n1/m1;->u:Lp3/a/n1/y;

    sget-object p2, Lp3/a/o;->c:Lp3/a/o;

    invoke-virtual {p1, p2}, Lp3/a/n1/y;->a(Lp3/a/o;)V

    :goto_0
    return-void
.end method
