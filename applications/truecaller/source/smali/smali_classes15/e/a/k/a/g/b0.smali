.class public final Le/a/k/a/g/b0;
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
    c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onAttachView$1"
    f = "RecordingPresenter.kt"
    l = {
        0x55,
        0x56,
        0x58
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/g/y;

.field public final synthetic g:Le/a/k/a/g/x;


# direct methods
.method public constructor <init>(Le/a/k/a/g/y;Le/a/k/a/g/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    iput-object p2, p0, Le/a/k/a/g/b0;->g:Le/a/k/a/g/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/g/b0;

    iget-object v1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    iget-object v2, p0, Le/a/k/a/g/b0;->g:Le/a/k/a/g/x;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/a/g/b0;-><init>(Le/a/k/a/g/y;Le/a/k/a/g/x;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/a/g/b0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/k/a/g/b0;

    iget-object v1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    iget-object v2, p0, Le/a/k/a/g/b0;->g:Le/a/k/a/g/x;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/a/g/b0;-><init>(Le/a/k/a/g/y;Le/a/k/a/g/x;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/g/b0;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    iput v4, p0, Le/a/k/a/g/b0;->e:I

    invoke-virtual {p1, p0}, Le/a/k/a/g/y;->bk(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_0
    iget-object p1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    iget-object v1, p0, Le/a/k/a/g/b0;->g:Le/a/k/a/g/x;

    invoke-interface {v1}, Le/a/k/a/g/x;->Iw()I

    move-result v1

    .line 6
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    iput v3, p0, Le/a/k/a/g/b0;->e:I

    invoke-virtual {p1, v4, p0}, Le/a/k/a/g/y;->ck(Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    .line 9
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object v1

    new-instance v3, Le/a/k/a/g/l0;

    invoke-direct {v3, p1}, Le/a/k/a/g/l0;-><init>(Le/a/k/a/g/y;)V

    invoke-interface {v1, v3}, Le/a/k/c/h;->e(Ls1/z/b/a;)V

    .line 10
    iget-object p1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    iput v2, p0, Le/a/k/a/g/b0;->e:I

    invoke-virtual {p1, p0}, Le/a/k/a/g/y;->Qj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 11
    :cond_6
    :goto_2
    iget-object p1, p0, Le/a/k/a/g/b0;->f:Le/a/k/a/g/y;

    .line 12
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object v0

    invoke-interface {v0}, Le/a/k/c/h;->i()Lq3/a/x2/f;

    move-result-object v0

    .line 13
    new-instance v1, Le/a/k/a/g/z;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Le/a/k/a/g/z;-><init>(Le/a/k/a/g/y;Ls1/w/d;)V

    .line 14
    new-instance v2, Lq3/a/x2/u0;

    invoke-direct {v2, v0, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 15
    invoke-static {v2, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
