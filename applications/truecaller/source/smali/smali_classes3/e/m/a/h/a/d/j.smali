.class public final synthetic Le/m/a/h/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/h/a;


# instance fields
.field public final synthetic a:Le/m/a/h/a/d/r;

.field public final synthetic b:Le/m/a/h/a/h/n;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/d/r;Le/m/a/h/a/h/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/d/j;->a:Le/m/a/h/a/d/r;

    iput-object p2, p0, Le/m/a/h/a/d/j;->b:Le/m/a/h/a/h/n;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/h/r;)V
    .locals 2

    iget-object p1, p0, Le/m/a/h/a/d/j;->a:Le/m/a/h/a/d/r;

    iget-object v0, p0, Le/m/a/h/a/d/j;->b:Le/m/a/h/a/h/n;

    .line 1
    iget-object v1, p1, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Le/m/a/h/a/d/r;->e:Ljava/util/Set;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
