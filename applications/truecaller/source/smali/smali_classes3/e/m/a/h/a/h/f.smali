.class public final Le/m/a/h/a/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/h/r;

.field public final synthetic b:Le/m/a/h/a/h/g;


# direct methods
.method public constructor <init>(Le/m/a/h/a/h/g;Le/m/a/h/a/h/r;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/h/f;->b:Le/m/a/h/a/h/g;

    iput-object p2, p0, Le/m/a/h/a/h/f;->a:Le/m/a/h/a/h/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/h/f;->b:Le/m/a/h/a/h/g;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/h/g;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/h/f;->b:Le/m/a/h/a/h/g;

    .line 3
    iget-object v1, v1, Le/m/a/h/a/h/g;->c:Le/m/a/h/a/h/a;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Le/m/a/h/a/h/f;->a:Le/m/a/h/a/h/r;

    .line 5
    invoke-interface {v1, v2}, Le/m/a/h/a/h/a;->a(Le/m/a/h/a/h/r;)V

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
