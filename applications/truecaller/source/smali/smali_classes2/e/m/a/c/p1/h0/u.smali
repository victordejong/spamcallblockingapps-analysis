.class public Le/m/a/c/p1/h0/u;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/os/ConditionVariable;

.field public final synthetic b:Le/m/a/c/p1/h0/v;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/h0/v;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/p1/h0/u;->b:Le/m/a/c/p1/h0/v;

    iput-object p3, p0, Le/m/a/c/p1/h0/u;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/u;->b:Le/m/a/c/p1/h0/v;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/a/c/p1/h0/u;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 3
    iget-object v1, p0, Le/m/a/c/p1/h0/u;->b:Le/m/a/c/p1/h0/v;

    invoke-static {v1}, Le/m/a/c/p1/h0/v;->l(Le/m/a/c/p1/h0/v;)V

    .line 4
    iget-object v1, p0, Le/m/a/c/p1/h0/u;->b:Le/m/a/c/p1/h0/v;

    .line 5
    iget-object v1, v1, Le/m/a/c/p1/h0/v;->b:Le/m/a/c/p1/h0/h;

    .line 6
    invoke-interface {v1}, Le/m/a/c/p1/h0/h;->c()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
