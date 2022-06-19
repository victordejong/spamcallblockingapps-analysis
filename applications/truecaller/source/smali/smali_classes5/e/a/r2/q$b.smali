.class public Le/a/r2/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static e:Le/a/r2/q$b;

.field public static f:I


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Le/a/r2/u;

.field public volatile c:Le/a/r2/n;

.field public d:Le/a/r2/q$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/r2/q$b;->b:Le/a/r2/u;

    .line 2
    iput-object v0, p0, Le/a/r2/q$b;->a:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Le/a/r2/q$b;->c:Le/a/r2/n;

    .line 4
    const-class v0, Le/a/r2/q$b;

    monitor-enter v0

    .line 5
    :try_start_0
    sget v1, Le/a/r2/q$b;->f:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 6
    sget-object v2, Le/a/r2/q$b;->e:Le/a/r2/q$b;

    iput-object v2, p0, Le/a/r2/q$b;->d:Le/a/r2/q$b;

    .line 7
    sput-object p0, Le/a/r2/q$b;->e:Le/a/r2/q$b;

    add-int/lit8 v1, v1, 0x1

    .line 8
    sput v1, Le/a/r2/q$b;->f:I

    .line 9
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

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/r2/q$b;->b:Le/a/r2/u;

    iget-object v1, p0, Le/a/r2/q$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/a/r2/u;->d(Ljava/lang/Object;)Le/a/r2/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Le/a/r2/q$b;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    iget-object v1, p0, Le/a/r2/q$b;->b:Le/a/r2/u;

    invoke-interface {v1}, Le/a/r2/p;->a()Le/a/r2/d;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    iget-object v0, p0, Le/a/r2/q$b;->c:Le/a/r2/n;

    iget-object v2, p0, Le/a/r2/q$b;->a:Ljava/lang/Object;

    iget-object v3, p0, Le/a/r2/q$b;->b:Le/a/r2/u;

    invoke-virtual {v0, v2, v3, v1}, Le/a/r2/n;->a(Ljava/lang/Object;Le/a/r2/u;Le/a/r2/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    throw v0

    :catchall_1
    move-exception v0

    .line 6
    invoke-virtual {p0}, Le/a/r2/q$b;->a()V

    .line 7
    throw v0
.end method
