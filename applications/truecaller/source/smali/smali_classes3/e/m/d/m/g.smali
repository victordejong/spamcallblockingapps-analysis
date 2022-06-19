.class public final synthetic Le/m/d/m/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/m/d0;

.field public final synthetic b:Le/m/d/v/b;


# direct methods
.method public synthetic constructor <init>(Le/m/d/m/d0;Le/m/d/v/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/m/g;->a:Le/m/d/m/d0;

    iput-object p2, p0, Le/m/d/m/g;->b:Le/m/d/v/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/m/g;->a:Le/m/d/m/d0;

    iget-object v1, p0, Le/m/d/m/g;->b:Le/m/d/v/b;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v2, v0, Le/m/d/m/d0;->b:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v0, Le/m/d/m/d0;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Le/m/d/m/d0;->b:Ljava/util/Set;

    invoke-interface {v1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
