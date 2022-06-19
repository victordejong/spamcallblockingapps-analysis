.class public final Le/a/k/a/g/k0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onVideoDeleted$1"
    f = "RecordingPresenter.kt"
    l = {
        0x177
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/g/y;


# direct methods
.method public constructor <init>(Le/a/k/a/g/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/g/k0;

    iget-object v1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    invoke-direct {v0, v1, p1}, Le/a/k/a/g/k0;-><init>(Le/a/k/a/g/y;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/a/g/k0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/g/k0;

    iget-object v1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    invoke-direct {v0, v1, p1}, Le/a/k/a/g/k0;-><init>(Le/a/k/a/g/y;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/g/k0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    .line 5
    iget-object p1, p1, Le/a/k/a/g/y;->l:Le/a/k/n/g/e;

    .line 6
    iput v2, p0, Le/a/k/a/g/k0;->e:I

    check-cast p1, Le/a/k/n/g/j;

    invoke-virtual {p1, p0}, Le/a/k/n/g/j;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    .line 8
    iget-object p1, p1, Le/a/k/a/g/y;->o:Le/a/k/c/r0;

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Le/a/k/c/r0;->setEnabled(Z)V

    .line 10
    iget-object p1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    .line 11
    iget-object p1, p1, Le/a/k/a/g/y;->n:Le/a/k/j;

    .line 12
    check-cast p1, Le/a/k/k;

    invoke-virtual {p1}, Le/a/k/k;->e()V

    .line 13
    iget-object p1, p0, Le/a/k/a/g/k0;->f:Le/a/k/a/g/y;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/g/x;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Le/a/k/a/g/x;->t()V

    .line 16
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
