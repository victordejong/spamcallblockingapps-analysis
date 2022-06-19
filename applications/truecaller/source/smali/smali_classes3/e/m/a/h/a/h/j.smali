.class public final Le/m/a/h/a/h/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/h/r;

.field public final synthetic b:Le/m/a/h/a/h/k;


# direct methods
.method public constructor <init>(Le/m/a/h/a/h/k;Le/m/a/h/a/h/r;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/h/j;->b:Le/m/a/h/a/h/k;

    iput-object p2, p0, Le/m/a/h/a/h/j;->a:Le/m/a/h/a/h/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/h/j;->b:Le/m/a/h/a/h/k;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/h/k;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/h/j;->b:Le/m/a/h/a/h/k;

    .line 3
    iget-object v1, v1, Le/m/a/h/a/h/k;->c:Le/m/a/h/a/h/c;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/m/a/h/a/h/j;->a:Le/m/a/h/a/h/r;

    .line 5
    invoke-virtual {v2}, Le/m/a/h/a/h/r;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Le/m/a/h/a/h/c;->onSuccess(Ljava/lang/Object;)V

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
