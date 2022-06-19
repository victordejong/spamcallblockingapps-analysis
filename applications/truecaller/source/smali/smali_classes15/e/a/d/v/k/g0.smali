.class public final Le/a/d/v/k/g0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Integer;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.LogCallFinishedEventImpl$collectMaxPeerSizeInRtc$2"
    f = "LogCallFinishedEvent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:I

.field public final synthetic f:Le/a/d/v/k/h0;


# direct methods
.method public constructor <init>(Le/a/d/v/k/h0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/g0;->f:Le/a/d/v/k/h0;

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

    new-instance v0, Le/a/d/v/k/g0;

    iget-object v1, p0, Le/a/d/v/k/g0;->f:Le/a/d/v/k/h0;

    invoke-direct {v0, v1, p2}, Le/a/d/v/k/g0;-><init>(Le/a/d/v/k/h0;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Le/a/d/v/k/g0;->e:I

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/v/k/g0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/v/k/g0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/k/g0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget p1, p0, Le/a/d/v/k/g0;->e:I

    .line 2
    iget-object v0, p0, Le/a/d/v/k/g0;->f:Le/a/d/v/k/h0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Le/a/d/v/k/h0;->a:I

    if-le p1, v1, :cond_0

    .line 5
    iput p1, v0, Le/a/d/v/k/h0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method
