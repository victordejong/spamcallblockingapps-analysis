.class public final Lu3/p0/e/f;
.super Lv3/l;
.source "SourceFile"


# instance fields
.field public b:Z

.field public final synthetic c:Lu3/p0/e/e$b;

.field public final synthetic d:Lv3/b0;


# direct methods
.method public constructor <init>(Lu3/p0/e/e$b;Lv3/b0;Lv3/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b0;",
            "Lv3/b0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/e/f;->c:Lu3/p0/e/e$b;

    iput-object p2, p0, Lu3/p0/e/f;->d:Lv3/b0;

    invoke-direct {p0, p3}, Lv3/l;-><init>(Lv3/b0;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-super {p0}, Lv3/l;->close()V

    .line 2
    iget-boolean v0, p0, Lu3/p0/e/f;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lu3/p0/e/f;->b:Z

    .line 4
    iget-object v0, p0, Lu3/p0/e/f;->c:Lu3/p0/e/e$b;

    iget-object v0, v0, Lu3/p0/e/e$b;->j:Lu3/p0/e/e;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lu3/p0/e/f;->c:Lu3/p0/e/e$b;

    .line 6
    iget v2, v1, Lu3/p0/e/e$b;->g:I

    add-int/lit8 v2, v2, -0x1

    .line 7
    iput v2, v1, Lu3/p0/e/e$b;->g:I

    if-nez v2, :cond_0

    .line 8
    iget-boolean v2, v1, Lu3/p0/e/e$b;->e:Z

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, v1, Lu3/p0/e/e$b;->j:Lu3/p0/e/e;

    invoke-virtual {v2, v1}, Lu3/p0/e/e;->P(Lu3/p0/e/e$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
