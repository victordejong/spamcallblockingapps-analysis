.class public final Lo3/b/a/c/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo3/b/b/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lo3/b/a/c/c/e;


# direct methods
.method public constructor <init>(Lo3/b/a/c/c/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo3/b/a/c/c/d;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo3/b/a/c/c/d;->c:Lo3/b/a/c/c/e;

    return-void
.end method


# virtual methods
.method public Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/b/a/c/c/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lo3/b/a/c/c/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo3/b/a/c/c/d;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lo3/b/a/c/c/d;->c:Lo3/b/a/c/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Le/a/y1$a;

    :try_start_1
    invoke-virtual {v1}, Le/a/y1$a;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lo3/b/a/c/c/d;->a:Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lo3/b/a/c/c/d;->a:Ljava/lang/Object;

    return-object v0
.end method
