.class public final Le/a/h/b/z;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToCallLogRequest$1"
    f = "DialerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Z

.field public final synthetic f:Le/a/h/b/y;


# direct methods
.method public constructor <init>(Le/a/h/b/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/z;->f:Le/a/h/b/y;

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

    new-instance v0, Le/a/h/b/z;

    iget-object v1, p0, Le/a/h/b/z;->f:Le/a/h/b/y;

    invoke-direct {v0, v1, p2}, Le/a/h/b/z;-><init>(Le/a/h/b/y;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Le/a/h/b/z;->e:Z

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/b/z;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/b/z;

    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-boolean v0, p1, Le/a/h/b/z;->e:Z

    .line 2
    iget-object p1, p1, Le/a/h/b/z;->f:Le/a/h/b/y;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Le/a/h/b/y;->Sj(Le/a/h/b/w0/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 4
    invoke-static {p1, v1, v0, v2, v3}, Le/a/h/b/y;->Nj(Le/a/h/b/y;Lcom/truecaller/callhistory/data/FilterType;ZZI)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le/a/h/b/z;->e:Z

    .line 2
    iget-object v0, p0, Le/a/h/b/z;->f:Le/a/h/b/y;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Le/a/h/b/y;->Sj(Le/a/h/b/w0/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 4
    invoke-static {v0, v1, p1, v2, v3}, Le/a/h/b/y;->Nj(Le/a/h/b/y;Lcom/truecaller/callhistory/data/FilterType;ZZI)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
