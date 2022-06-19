.class public final Le/a/d/v/l/e/l$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/l$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Le/a/d/v/l/e/m$a;",
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
    c = "com.truecaller.voip.groupcall.call.action.HandleInviteImpl$inviteStatus$timeoutFlow$3$1"
    f = "HandleInvite.kt"
    l = {
        0x68,
        0x6b,
        0x6e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Le/a/d/v/l/e/l$b;


# direct methods
.method public constructor <init>(JZLs1/w/d;Le/a/d/v/l/e/l$b;)V
    .locals 0

    iput-wide p1, p0, Le/a/d/v/l/e/l$b$a;->g:J

    iput-boolean p3, p0, Le/a/d/v/l/e/l$b$a;->h:Z

    iput-object p5, p0, Le/a/d/v/l/e/l$b$a;->i:Le/a/d/v/l/e/l$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance v0, Le/a/d/v/l/e/l$b$a;

    iget-wide v2, p0, Le/a/d/v/l/e/l$b$a;->g:J

    iget-boolean v4, p0, Le/a/d/v/l/e/l$b$a;->h:Z

    iget-object v6, p0, Le/a/d/v/l/e/l$b$a;->i:Le/a/d/v/l/e/l$b;

    move-object v1, v0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Le/a/d/v/l/e/l$b$a;-><init>(JZLs1/w/d;Le/a/d/v/l/e/l$b;)V

    iput-object p1, v0, Le/a/d/v/l/e/l$b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/v/l/e/l$b$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/v/l/e/l$b$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/v/l/e/l$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/v/l/e/l$b$a;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Le/a/d/v/l/e/l$b$a;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/v/l/e/l$b$a;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/x2/g;

    .line 4
    iget-wide v5, p0, Le/a/d/v/l/e/l$b$a;->g:J

    iput-object v1, p0, Le/a/d/v/l/e/l$b$a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/v/l/e/l$b$a;->f:I

    invoke-static {v5, v6, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_1
    iget-boolean p1, p0, Le/a/d/v/l/e/l$b$a;->h:Z

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Le/a/d/v/l/e/l$b$a;->i:Le/a/d/v/l/e/l$b;

    iget-object p1, p1, Le/a/d/v/l/e/l$b;->h:Le/a/d/v/l/e/l;

    .line 7
    iget p1, p1, Le/a/d/v/l/e/l;->b:I

    .line 8
    new-instance p1, Le/a/d/v/l/e/m$a;

    sget-object v2, Le/a/d/v/l/c$b$g;->b:Le/a/d/v/l/c$b$g;

    invoke-direct {p1, v2}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    iput-object v4, p0, Le/a/d/v/l/e/l$b$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/v/l/e/l$b$a;->f:I

    invoke-interface {v1, p1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 9
    :cond_5
    iget-object p1, p0, Le/a/d/v/l/e/l$b$a;->i:Le/a/d/v/l/e/l$b;

    iget-object p1, p1, Le/a/d/v/l/e/l$b;->h:Le/a/d/v/l/e/l;

    .line 10
    iget p1, p1, Le/a/d/v/l/e/l;->b:I

    .line 11
    new-instance p1, Le/a/d/v/l/e/m$a;

    sget-object v3, Le/a/d/v/l/c$b$h;->b:Le/a/d/v/l/c$b$h;

    invoke-direct {p1, v3}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    iput-object v4, p0, Le/a/d/v/l/e/l$b$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/v/l/e/l$b$a;->f:I

    invoke-interface {v1, p1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
