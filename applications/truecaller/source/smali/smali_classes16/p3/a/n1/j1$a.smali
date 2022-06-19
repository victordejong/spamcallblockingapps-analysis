.class public Lp3/a/n1/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/j1;


# direct methods
.method public constructor <init>(Lp3/a/n1/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/j1$a;->a:Lp3/a/n1/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/j1$a;->a:Lp3/a/n1/j1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/j1$a;->a:Lp3/a/n1/j1;

    .line 3
    iget-object v2, v1, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    .line 4
    sget-object v3, Lp3/a/n1/j1$e;->f:Lp3/a/n1/j1$e;

    if-eq v2, v3, :cond_0

    .line 5
    iput-object v3, v1, Lp3/a/n1/j1;->e:Lp3/a/n1/j1$e;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    iget-object v0, v1, Lp3/a/n1/j1;->c:Lp3/a/n1/j1$d;

    .line 8
    invoke-interface {v0}, Lp3/a/n1/j1$d;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
