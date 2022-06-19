.class public final Le/a/d/v/l/e/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/c;->g()Lq3/a/p1;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.call.action.CancelInviteImpl$cancelInvite$1"
    f = "CancelInvite.kt"
    l = {
        0x20,
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/v/l/e/c;


# direct methods
.method public constructor <init>(Le/a/d/v/l/e/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/c$a;->f:Le/a/d/v/l/e/c;

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

    new-instance p1, Le/a/d/v/l/e/c$a;

    iget-object v0, p0, Le/a/d/v/l/e/c$a;->f:Le/a/d/v/l/e/c;

    invoke-direct {p1, v0, p2}, Le/a/d/v/l/e/c$a;-><init>(Le/a/d/v/l/e/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/v/l/e/c$a;

    iget-object v0, p0, Le/a/d/v/l/e/c$a;->f:Le/a/d/v/l/e/c;

    invoke-direct {p1, v0, p2}, Le/a/d/v/l/e/c$a;-><init>(Le/a/d/v/l/e/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/l/e/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/v/l/e/c$a;->e:I

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/v/l/e/c$a;->f:Le/a/d/v/l/e/c;

    .line 5
    iget-boolean v2, p1, Le/a/d/v/l/e/c;->b:Z

    if-nez v2, :cond_3

    return-object v0

    .line 6
    :cond_3
    iget v2, p1, Le/a/d/v/l/e/c;->a:I

    .line 7
    iget-object p1, p1, Le/a/d/v/l/e/c;->c:Le/a/d/c0/z1/i;

    .line 8
    iput v4, p0, Le/a/d/v/l/e/c$a;->e:I

    invoke-interface {p1, v2, p0}, Le/a/d/c0/z1/i;->k(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 9
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Le/a/d/v/l/e/c$a;->f:Le/a/d/v/l/e/c;

    .line 11
    iget p1, p1, Le/a/d/v/l/e/c;->a:I

    return-object v0

    .line 12
    :cond_5
    iget-object v2, p0, Le/a/d/v/l/e/c$a;->f:Le/a/d/v/l/e/c;

    .line 13
    iget-object v2, v2, Le/a/d/v/l/e/c;->d:Le/a/d/x/r/h;

    .line 14
    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput v3, p0, Le/a/d/v/l/e/c$a;->e:I

    invoke-interface {v2, p1, p0}, Le/a/d/x/r/h;->l(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method
