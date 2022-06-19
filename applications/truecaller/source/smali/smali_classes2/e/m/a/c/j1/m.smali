.class public final Le/m/a/c/j1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/j1/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/j1/m$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/n;

.field public final b:Le/m/a/c/p1/h0/c;

.field public final c:Le/m/a/c/p1/h0/f;

.field public final d:Le/m/a/c/p1/h0/k;

.field public final e:Le/m/a/c/q1/v;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Le/m/a/c/j1/k;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v10, Le/m/a/c/p1/n;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v9, 0x4

    move-object v0, v10

    move-object v1, p1

    move-wide v2, v4

    move-object v8, p2

    .line 3
    invoke-direct/range {v0 .. v9}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 4
    iput-object v10, p0, Le/m/a/c/j1/m;->a:Le/m/a/c/p1/n;

    .line 5
    iget-object p1, p3, Le/m/a/c/j1/k;->a:Le/m/a/c/p1/h0/c;

    .line 6
    iput-object p1, p0, Le/m/a/c/j1/m;->b:Le/m/a/c/p1/h0/c;

    .line 7
    iget-object p1, p3, Le/m/a/c/j1/k;->d:Le/m/a/c/p1/h0/g;

    invoke-virtual {p1}, Le/m/a/c/p1/h0/g;->b()Le/m/a/c/p1/h0/f;

    move-result-object p1

    .line 8
    iput-object p1, p0, Le/m/a/c/j1/m;->c:Le/m/a/c/p1/h0/f;

    .line 9
    iget-object p1, p3, Le/m/a/c/j1/k;->b:Le/m/a/c/p1/h0/k;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Le/m/a/c/p1/h0/m;->a:I

    sget-object p1, Le/m/a/c/p1/h0/a;->a:Le/m/a/c/p1/h0/a;

    .line 10
    :goto_0
    iput-object p1, p0, Le/m/a/c/j1/m;->d:Le/m/a/c/p1/h0/k;

    .line 11
    iget-object p1, p3, Le/m/a/c/j1/k;->c:Le/m/a/c/q1/v;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Le/m/a/c/q1/v;

    invoke-direct {p1}, Le/m/a/c/q1/v;-><init>()V

    .line 12
    :goto_1
    iput-object p1, p0, Le/m/a/c/j1/m;->e:Le/m/a/c/q1/v;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Le/m/a/c/j1/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/j1/j$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/j1/m;->e:Le/m/a/c/q1/v;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Le/m/a/c/q1/v;->a(I)V

    .line 2
    :try_start_0
    iget-object v2, p0, Le/m/a/c/j1/m;->a:Le/m/a/c/p1/n;

    iget-object v3, p0, Le/m/a/c/j1/m;->b:Le/m/a/c/p1/h0/c;

    iget-object v4, p0, Le/m/a/c/j1/m;->d:Le/m/a/c/p1/h0/k;

    iget-object v5, p0, Le/m/a/c/j1/m;->c:Le/m/a/c/p1/h0/f;

    const/high16 v0, 0x20000

    new-array v6, v0, [B

    iget-object v7, p0, Le/m/a/c/j1/m;->e:Le/m/a/c/q1/v;

    const/16 v8, -0x3e8

    new-instance v9, Le/m/a/c/j1/m$a;

    invoke-direct {v9, p1}, Le/m/a/c/j1/m$a;-><init>(Le/m/a/c/j1/j$a;)V

    iget-object v10, p0, Le/m/a/c/j1/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Le/m/a/c/p1/h0/m;->a(Le/m/a/c/p1/n;Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/k;Le/m/a/c/p1/h0/f;[BLe/m/a/c/q1/v;ILe/m/a/c/p1/h0/m$a;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Le/m/a/c/j1/m;->e:Le/m/a/c/q1/v;

    invoke-virtual {p1, v1}, Le/m/a/c/q1/v;->b(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/m/a/c/j1/m;->e:Le/m/a/c/q1/v;

    invoke-virtual {v0, v1}, Le/m/a/c/q1/v;->b(I)V

    .line 4
    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/j1/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/j1/m;->a:Le/m/a/c/p1/n;

    iget-object v1, p0, Le/m/a/c/j1/m;->b:Le/m/a/c/p1/h0/c;

    .line 2
    sget v2, Le/m/a/c/p1/h0/m;->a:I

    .line 3
    iget-object v2, v0, Le/m/a/c/p1/n;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le/m/a/c/p1/n;->a:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_0
    invoke-static {v1, v2}, Le/m/a/c/p1/h0/m;->d(Le/m/a/c/p1/h0/c;Ljava/lang/String;)V

    return-void
.end method
