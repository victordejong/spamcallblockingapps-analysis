.class public Le/a/r2/i$c;
.super Le/a/r2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Le/a/r2/i;


# direct methods
.method public constructor <init>(Le/a/r2/i;Landroid/os/Looper;JLandroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r2/i$c;->d:Le/a/r2/i;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Le/a/r2/c;-><init>(Landroid/os/Looper;JLandroid/os/PowerManager$WakeLock;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r2/i$c;->d:Le/a/r2/i;

    .line 2
    iget-object v0, v0, Le/a/r2/i;->f:Le/a/r2/i$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Le/a/r2/s;

    .line 4
    iget-object v1, v0, Le/a/r2/s;->c:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobServiceEngine;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/r2/i$c;->d:Le/a/r2/i;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
