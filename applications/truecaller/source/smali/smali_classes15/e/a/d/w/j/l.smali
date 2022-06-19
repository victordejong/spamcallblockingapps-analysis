.class public final Le/a/d/w/j/l;
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
    c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenNotAnswered$1"
    f = "ConnectInvitation.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/w/j/h;


# direct methods
.method public constructor <init>(Le/a/d/w/j/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/j/l;->f:Le/a/d/w/j/h;

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

    new-instance p1, Le/a/d/w/j/l;

    iget-object v0, p0, Le/a/d/w/j/l;->f:Le/a/d/w/j/h;

    invoke-direct {p1, v0, p2}, Le/a/d/w/j/l;-><init>(Le/a/d/w/j/h;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/w/j/l;

    iget-object v0, p0, Le/a/d/w/j/l;->f:Le/a/d/w/j/h;

    invoke-direct {p1, v0, p2}, Le/a/d/w/j/l;-><init>(Le/a/d/w/j/h;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/w/j/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/w/j/l;->e:I

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

    const-wide/32 v3, 0xea60

    .line 4
    new-instance p1, Le/a/d/w/j/l$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Le/a/d/w/j/l$a;-><init>(Le/a/d/w/j/l;Ls1/w/d;)V

    iput v2, p0, Le/a/d/w/j/l;->e:I

    invoke-static {v3, v4, p1, p0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/d/w/j/l;->f:Le/a/d/w/j/h;

    .line 6
    iget-object p1, p1, Le/a/d/w/j/h;->h:Le/a/d/w/j/m;

    .line 7
    sget-object v0, Le/a/d/w/h$b$j;->b:Le/a/d/w/h$b$j;

    invoke-interface {p1, v0}, Le/a/d/w/j/m;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    .line 8
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
