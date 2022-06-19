.class public final synthetic Le/m/d/y/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public synthetic a:Le/m/d/y/l0;

.field public synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/m/d/y/l0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/k0;->a:Le/m/d/y/l0;

    iput-object p2, p0, Le/m/d/y/k0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/m/d/y/k0;->a:Le/m/d/y/l0;

    iget-object v1, p0, Le/m/d/y/k0;->b:Ljava/lang/String;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Le/m/d/y/l0;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
