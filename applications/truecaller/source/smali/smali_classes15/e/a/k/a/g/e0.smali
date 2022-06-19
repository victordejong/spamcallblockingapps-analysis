.class public final Le/a/k/a/g/e0;
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
    c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$onRecordPressed$1"
    f = "RecordingPresenter.kt"
    l = {
        0xf4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/g/y;

.field public final synthetic g:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;


# direct methods
.method public constructor <init>(Le/a/k/a/g/y;Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/e0;->f:Le/a/k/a/g/y;

    iput-object p2, p0, Le/a/k/a/g/e0;->g:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

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

    new-instance v0, Le/a/k/a/g/e0;

    iget-object v1, p0, Le/a/k/a/g/e0;->f:Le/a/k/a/g/y;

    iget-object v2, p0, Le/a/k/a/g/e0;->g:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/a/g/e0;-><init>(Le/a/k/a/g/y;Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/a/g/e0;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/k/a/g/e0;

    iget-object v1, p0, Le/a/k/a/g/e0;->f:Le/a/k/a/g/y;

    iget-object v2, p0, Le/a/k/a/g/e0;->g:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/a/g/e0;-><init>(Le/a/k/a/g/y;Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k/a/g/e0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/k/a/g/e0;->f:Le/a/k/a/g/y;

    .line 5
    invoke-virtual {p1}, Le/a/k/a/g/y;->Ij()Le/a/k/c/h;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Le/a/k/c/h;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Le/a/k/a/g/e0;->f:Le/a/k/a/g/y;

    .line 7
    invoke-virtual {p1}, Le/a/k/a/g/y;->Hj()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/k/a/g/e0;->f:Le/a/k/a/g/y;

    iget-object v2, p0, Le/a/k/a/g/e0;->g:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    .line 9
    iput-object v2, p1, Le/a/k/a/g/y;->d:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    .line 10
    iput v3, p0, Le/a/k/a/g/e0;->e:I

    invoke-virtual {p1, p0}, Le/a/k/a/g/y;->dk(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method
