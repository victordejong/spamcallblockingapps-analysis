.class public final Le/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/p;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public final b:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/p5/g;)V
    .locals 1

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/q;->b:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/q;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/a/q;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/q;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/a/q;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/a/q;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/q;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/a/q;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/a/q;->a:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/a/q;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->E()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
