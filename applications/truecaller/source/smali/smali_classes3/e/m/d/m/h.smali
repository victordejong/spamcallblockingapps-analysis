.class public final synthetic Le/m/d/m/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/m/f0;

.field public final synthetic b:Le/m/d/v/b;


# direct methods
.method public synthetic constructor <init>(Le/m/d/m/f0;Le/m/d/v/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/m/h;->a:Le/m/d/m/f0;

    iput-object p2, p0, Le/m/d/m/h;->b:Le/m/d/v/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/d/m/h;->a:Le/m/d/m/f0;

    iget-object v1, p0, Le/m/d/m/h;->b:Le/m/d/v/b;

    .line 1
    iget-object v2, v0, Le/m/d/m/f0;->b:Le/m/d/v/b;

    sget-object v3, Le/m/d/m/k;->a:Le/m/d/m/k;

    if-ne v2, v3, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Le/m/d/m/f0;->a:Le/m/d/v/a$a;

    const/4 v3, 0x0

    .line 4
    iput-object v3, v0, Le/m/d/m/f0;->a:Le/m/d/v/a$a;

    .line 5
    iput-object v1, v0, Le/m/d/m/f0;->b:Le/m/d/v/b;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v2, v1}, Le/m/d/v/a$a;->a(Le/m/d/v/b;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
