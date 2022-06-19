.class public Le/a/b/a/b/b;
.super Le/m/a/g/e/e;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Le/a/b/a/b/b;",
        "Le/m/a/g/e/e;",
        "Lq3/a/i0;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "Ls1/w/f;",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "coroutineContext",
        "Lq3/a/p1;",
        "a",
        "Lq3/a/p1;",
        "job",
        "<init>",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Lq3/a/p1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 2
    iget-object v1, p0, Le/a/b/a/b/b;->a:Lq3/a/p1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/b/a/b/b;->a:Lq3/a/p1;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/b/a/b/b;->a:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
