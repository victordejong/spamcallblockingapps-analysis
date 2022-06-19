.class public final Le/a/d/w/j/f0$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/w/j/f0$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/s;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$triggerUpdateOnTimeouts$1$1"
    f = "UpdatePeers.kt"
    l = {
        0x52,
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:J


# direct methods
.method public constructor <init>(JLs1/w/d;)V
    .locals 0

    iput-wide p1, p0, Le/a/d/w/j/f0$a$b;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/d/w/j/f0$a$b;

    iget-wide v1, p0, Le/a/d/w/j/f0$a$b;->g:J

    invoke-direct {v0, v1, v2, p2}, Le/a/d/w/j/f0$a$b;-><init>(JLs1/w/d;)V

    iput-object p1, v0, Le/a/d/w/j/f0$a$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/w/j/f0$a$b;

    iget-wide v1, p0, Le/a/d/w/j/f0$a$b;->g:J

    invoke-direct {v0, v1, v2, p2}, Le/a/d/w/j/f0$a$b;-><init>(JLs1/w/d;)V

    iput-object p1, v0, Le/a/d/w/j/f0$a$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/w/j/f0$a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/w/j/f0$a$b;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d/w/j/f0$a$b;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/w/j/f0$a$b;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/x2/g;

    .line 4
    iget-wide v5, p0, Le/a/d/w/j/f0$a$b;->g:J

    iput-object v2, p0, Le/a/d/w/j/f0$a$b;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/w/j/f0$a$b;->f:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/a/d/w/j/f0$a$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/w/j/f0$a$b;->f:I

    invoke-interface {v2, v0, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method
