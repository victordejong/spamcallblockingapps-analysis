.class public final Ln3/e/b/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/b0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/Image;

.field public final b:[Ln3/e/b/b0$a;

.field public final c:Ln3/e/b/u0;


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/b0;->a:Landroid/media/Image;

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    array-length v2, v0

    new-array v2, v2, [Ln3/e/b/b0$a;

    iput-object v2, p0, Ln3/e/b/b0;->b:[Ln3/e/b/b0$a;

    move v2, v1

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p0, Ln3/e/b/b0;->b:[Ln3/e/b/b0$a;

    new-instance v4, Ln3/e/b/b0$a;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Ln3/e/b/b0$a;-><init>(Landroid/media/Image$Plane;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ln3/e/b/b0$a;

    .line 7
    iput-object v0, p0, Ln3/e/b/b0;->b:[Ln3/e/b/b0$a;

    .line 8
    :cond_1
    sget-object v0, Ln3/e/b/j1/o1;->b:Ln3/e/b/j1/o1;

    .line 9
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    .line 10
    new-instance p1, Ln3/e/b/e0;

    invoke-direct {p1, v0, v2, v3, v1}, Ln3/e/b/e0;-><init>(Ln3/e/b/j1/o1;JI)V

    .line 11
    iput-object p1, p0, Ln3/e/b/b0;->c:Ln3/e/b/u0;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/b/b0;->a:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V
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

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/b/b0;->a:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/b/b0;->a:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x0()Ln3/e/b/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/b0;->c:Ln3/e/b/u0;

    return-object v0
.end method
