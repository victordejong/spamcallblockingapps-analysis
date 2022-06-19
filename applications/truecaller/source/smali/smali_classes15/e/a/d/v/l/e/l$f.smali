.class public final Le/a/d/v/l/e/l$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/l;->a(Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d/v/l/e/m;",
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
    c = "com.truecaller.voip.groupcall.call.action.HandleInviteImpl$inviteStatus$busyFlow$1"
    f = "HandleInvite.kt"
    l = {
        0x3f,
        0x41,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/v/l/e/l;


# direct methods
.method public constructor <init>(Le/a/d/v/l/e/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/l$f;->g:Le/a/d/v/l/e/l;

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

    new-instance v0, Le/a/d/v/l/e/l$f;

    iget-object v1, p0, Le/a/d/v/l/e/l$f;->g:Le/a/d/v/l/e/l;

    invoke-direct {v0, v1, p2}, Le/a/d/v/l/e/l$f;-><init>(Le/a/d/v/l/e/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/v/l/e/l$f;

    iget-object v1, p0, Le/a/d/v/l/e/l$f;->g:Le/a/d/v/l/e/l;

    invoke-direct {v0, v1, p2}, Le/a/d/v/l/e/l$f;-><init>(Le/a/d/v/l/e/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/v/l/e/l$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/l/e/l$f;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object v1, p0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v1, p0, Le/a/d/v/l/e/l$f;->g:Le/a/d/v/l/e/l;

    .line 5
    iget-object v1, v1, Le/a/d/v/l/e/l;->f:Lq3/a/x2/f;

    .line 6
    new-instance v6, Le/a/d/v/l/e/l$f$a;

    invoke-direct {v6, v2}, Le/a/d/v/l/e/l$f$a;-><init>(Ls1/w/d;)V

    iput-object p1, p0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/d/v/l/e/l$f;->f:I

    invoke-static {v1, v6, p0}, Ls1/a/a/a/v0/f/d;->P0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    :goto_0
    const-wide/16 v5, 0x5dc

    .line 7
    iput-object v1, p0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/v/l/e/l$f;->f:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 8
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/d/v/l/e/l$f;->g:Le/a/d/v/l/e/l;

    .line 9
    iget p1, p1, Le/a/d/v/l/e/l;->b:I

    .line 10
    new-instance p1, Le/a/d/v/l/e/m$a;

    sget-object v4, Le/a/d/v/l/c$b$a;->b:Le/a/d/v/l/c$b$a;

    invoke-direct {p1, v4}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    iput-object v2, p0, Le/a/d/v/l/e/l$f;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/l/e/l$f;->f:I

    invoke-interface {v1, p1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 11
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
