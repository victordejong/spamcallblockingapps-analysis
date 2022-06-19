.class public final Le/m/a/f/q/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/q/m;


# direct methods
.method public constructor <init>(Le/m/a/f/q/m;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/l;->a:Le/m/a/f/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/l;->a:Le/m/a/f/q/m;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/m;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/q/l;->a:Le/m/a/f/q/m;

    .line 4
    iget-object v1, v1, Le/m/a/f/q/m;->c:Lcom/google/android/gms/tasks/OnCanceledListener;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
