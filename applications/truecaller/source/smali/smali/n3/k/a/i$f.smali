.class public final Ln3/k/a/i$f;
.super Landroid/app/job/JobServiceEngine;
.source "SourceFile"

# interfaces
.implements Ln3/k/a/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/a/i$f$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/k/a/i;

.field public final b:Ljava/lang/Object;

.field public c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Ln3/k/a/i;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/k/a/i$f;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/k/a/i$f;->a:Ln3/k/a/i;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/k/a/i$f;->c:Landroid/app/job/JobParameters;

    .line 2
    iget-object p1, p0, Ln3/k/a/i$f;->a:Ln3/k/a/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/k/a/i;->ensureProcessorRunningLocked(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/k/a/i$f;->a:Ln3/k/a/i;

    invoke-virtual {p1}, Ln3/k/a/i;->doStopCurrentWork()Z

    move-result p1

    .line 2
    iget-object v0, p0, Ln3/k/a/i$f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Ln3/k/a/i$f;->c:Landroid/app/job/JobParameters;

    .line 4
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
