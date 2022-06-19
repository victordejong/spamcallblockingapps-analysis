.class public Le/p/a/y/j/e;
.super Le/p/a/y/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Le/p/a/y/j/r;

.field public final synthetic f:Le/p/a/y/j/d;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ZIILe/p/a/y/j/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/e;->f:Le/p/a/y/j/d;

    iput-boolean p4, p0, Le/p/a/y/j/e;->b:Z

    iput p5, p0, Le/p/a/y/j/e;->c:I

    iput p6, p0, Le/p/a/y/j/e;->d:I

    iput-object p7, p0, Le/p/a/y/j/e;->e:Le/p/a/y/j/r;

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/e;->f:Le/p/a/y/j/d;

    iget-boolean v1, p0, Le/p/a/y/j/e;->b:Z

    iget v2, p0, Le/p/a/y/j/e;->c:I

    iget v3, p0, Le/p/a/y/j/e;->d:I

    iget-object v4, p0, Le/p/a/y/j/e;->e:Le/p/a/y/j/r;

    .line 2
    iget-object v5, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 3
    :try_start_1
    iget-wide v6, v4, Le/p/a/y/j/r;->a:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v4, Le/p/a/y/j/r;->a:J

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {v0, v1, v2, v3}, Le/p/a/y/j/c;->a(ZII)V

    .line 7
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
