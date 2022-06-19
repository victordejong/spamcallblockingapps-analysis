.class public final synthetic Le/m/d/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/i/b;


# instance fields
.field public final synthetic a:Le/m/d/n/e;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/c;->a:Le/m/d/n/e;

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/n/j/i/a;)V
    .locals 2

    iget-object v0, p0, Le/m/d/n/c;->a:Le/m/d/n/e;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, Le/m/d/n/e;->c:Le/m/d/n/j/i/b;

    instance-of v1, v1, Le/m/d/n/j/i/c;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Le/m/d/n/e;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, v0, Le/m/d/n/e;->c:Le/m/d/n/j/i/b;

    invoke-interface {v1, p1}, Le/m/d/n/j/i/b;->a(Le/m/d/n/j/i/a;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
