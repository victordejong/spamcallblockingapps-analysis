.class public final Le/a/d/x/r/c$i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/c;->f(JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$logout$2"
    f = "RtmLoginManager.kt"
    l = {
        0x86,
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/x/r/c;


# direct methods
.method public constructor <init>(Le/a/d/x/r/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/r/c$i;

    iget-object v0, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    invoke-direct {p1, v0, p2}, Le/a/d/x/r/c$i;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/r/c$i;

    iget-object v0, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    invoke-direct {p1, v0, p2}, Le/a/d/x/r/c$i;-><init>(Le/a/d/x/r/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/x/r/c$i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/x/r/c$i;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    .line 5
    iget-object p1, p1, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 6
    iput v3, p0, Le/a/d/x/r/c$i;->e:I

    invoke-static {p1, v4, p0, v3, v4}, Ls1/a/a/a/v0/f/d;->z2(Lq3/a/b3/c;Ljava/lang/Object;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    iput v2, p0, Le/a/d/x/r/c$i;->e:I

    invoke-virtual {p1, p0}, Le/a/d/x/r/c;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    iget-object v0, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    .line 9
    iget-object v0, v0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 10
    invoke-interface {v0}, Lq3/a/b3/c;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    .line 12
    iget-object v0, v0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 13
    invoke-static {v0, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 15
    :goto_2
    iget-object v0, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    .line 16
    iget-object v0, v0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 17
    invoke-interface {v0}, Lq3/a/b3/c;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Le/a/d/x/r/c$i;->f:Le/a/d/x/r/c;

    .line 19
    iget-object v0, v0, Le/a/d/x/r/c;->b:Lq3/a/b3/c;

    .line 20
    invoke-static {v0, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->U3(Lq3/a/b3/c;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_6
    throw p1
.end method
