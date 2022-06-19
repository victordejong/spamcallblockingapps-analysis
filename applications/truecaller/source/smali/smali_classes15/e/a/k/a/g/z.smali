.class public final Le/a/k/a/g/z;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Landroid/graphics/PointF;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$listenCameraFocusPoints$1"
    f = "RecordingPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/a/g/y;


# direct methods
.method public constructor <init>(Le/a/k/a/g/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/z;->f:Le/a/k/a/g/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/g/z;

    iget-object v1, p0, Le/a/k/a/g/z;->f:Le/a/k/a/g/y;

    invoke-direct {v0, v1, p2}, Le/a/k/a/g/z;-><init>(Le/a/k/a/g/y;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/g/z;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/a/g/z;->f:Le/a/k/a/g/y;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Landroid/graphics/PointF;

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Le/a/k/a/g/x;->w8(Landroid/graphics/PointF;)V

    :cond_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/g/z;->e:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    iget-object v0, p0, Le/a/k/a/g/z;->f:Le/a/k/a/g/y;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/g/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/k/a/g/x;->w8(Landroid/graphics/PointF;)V

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
