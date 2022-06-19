.class public final Le/a/d0/n0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$listenToMidCallReasonUpdates$1"
    f = "ContextCallCallerIdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d0/m0;

.field public final synthetic g:Le/a/d0/y;

.field public final synthetic h:Le/a/d0/o0;


# direct methods
.method public constructor <init>(Le/a/d0/m0;Le/a/d0/y;Le/a/d0/o0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/n0;->f:Le/a/d0/m0;

    iput-object p2, p0, Le/a/d0/n0;->g:Le/a/d0/y;

    iput-object p3, p0, Le/a/d0/n0;->h:Le/a/d0/o0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/d0/n0;

    iget-object v1, p0, Le/a/d0/n0;->f:Le/a/d0/m0;

    iget-object v2, p0, Le/a/d0/n0;->g:Le/a/d0/y;

    iget-object v3, p0, Le/a/d0/n0;->h:Le/a/d0/o0;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/d0/n0;-><init>(Le/a/d0/m0;Le/a/d0/y;Le/a/d0/o0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d0/n0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d0/n0;

    iget-object v1, p0, Le/a/d0/n0;->f:Le/a/d0/m0;

    iget-object v2, p0, Le/a/d0/n0;->g:Le/a/d0/y;

    iget-object v3, p0, Le/a/d0/n0;->h:Le/a/d0/o0;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/d0/n0;-><init>(Le/a/d0/m0;Le/a/d0/y;Le/a/d0/o0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d0/n0;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d0/n0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d0/n0;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    iget-object v0, p0, Le/a/d0/n0;->f:Le/a/d0/m0;

    .line 3
    iget-object v0, v0, Le/a/d0/m0;->b:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/d0/n0;->f:Le/a/d0/m0;

    .line 6
    iget-object v2, v0, Le/a/d0/m0;->e:Le/a/o/c;

    .line 7
    invoke-interface {v2}, Le/a/o/c;->w()Lq3/a/x2/i1;

    move-result-object v2

    .line 8
    new-instance v3, Le/a/d0/n0$a;

    invoke-direct {v3, p0, v1}, Le/a/d0/n0$a;-><init>(Le/a/d0/n0;Ls1/w/d;)V

    .line 9
    new-instance v1, Lq3/a/x2/u0;

    invoke-direct {v1, v2, v3}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 10
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object p1

    .line 11
    iput-object p1, v0, Le/a/d0/m0;->b:Lq3/a/p1;

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
