.class public final Le/a/d/w/j/i;
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
    c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenAllMembersRinging$1"
    f = "ConnectInvitation.kt"
    l = {
        0xbb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/w/j/h;


# direct methods
.method public constructor <init>(Le/a/d/w/j/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/j/i;->f:Le/a/d/w/j/h;

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

    new-instance p1, Le/a/d/w/j/i;

    iget-object v0, p0, Le/a/d/w/j/i;->f:Le/a/d/w/j/h;

    invoke-direct {p1, v0, p2}, Le/a/d/w/j/i;-><init>(Le/a/d/w/j/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/w/j/i;

    iget-object v0, p0, Le/a/d/w/j/i;->f:Le/a/d/w/j/h;

    invoke-direct {p1, v0, p2}, Le/a/d/w/j/i;-><init>(Le/a/d/w/j/h;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/w/j/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/w/j/i;->e:I

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
    iget-object p1, p0, Le/a/d/w/j/i;->f:Le/a/d/w/j/h;

    .line 5
    iget-object p1, p1, Le/a/d/w/j/h;->f:Le/a/d/x/r/h;

    .line 6
    invoke-interface {p1}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object p1

    .line 7
    new-instance v1, Le/a/d/w/j/i$b;

    invoke-direct {v1, p1}, Le/a/d/w/j/i$b;-><init>(Lq3/a/x2/f;)V

    .line 8
    iget-object p1, p0, Le/a/d/w/j/i;->f:Le/a/d/w/j/h;

    .line 9
    iget-object p1, p1, Le/a/d/w/j/h;->f:Le/a/d/x/r/h;

    .line 10
    invoke-interface {p1}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object p1

    new-instance v3, Le/a/d/w/j/i$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Le/a/d/w/j/i$a;-><init>(Le/a/d/w/j/i;Ls1/w/d;)V

    .line 11
    new-instance v4, Lq3/a/x2/w0;

    invoke-direct {v4, v1, p1, v3}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 12
    new-instance p1, Le/a/d/w/j/i$c;

    invoke-direct {p1, v4, p0}, Le/a/d/w/j/i$c;-><init>(Lq3/a/x2/f;Le/a/d/w/j/i;)V

    .line 13
    iput v2, p0, Le/a/d/w/j/i;->e:I

    .line 14
    invoke-static {p1, p0}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 15
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/d/w/j/i;->f:Le/a/d/w/j/h;

    .line 16
    iget-object p1, p1, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    .line 17
    sget-object v0, Le/a/d/w/h$b$b;->b:Le/a/d/w/h$b$b;

    invoke-interface {p1, v0}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
