.class public final Le/a/c/j/c;
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
    c = "com.truecaller.insights.deeplink.DeeplinkEnricherImpl$handleRechargeNumberMissing$1"
    f = "DeeplinkEnricher.kt"
    l = {
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/j/d;

.field public final synthetic g:J

.field public final synthetic h:Ls1/z/b/l;

.field public final synthetic i:Le/a/c/j/f;


# direct methods
.method public constructor <init>(Le/a/c/j/d;JLs1/z/b/l;Le/a/c/j/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/j/c;->f:Le/a/c/j/d;

    iput-wide p2, p0, Le/a/c/j/c;->g:J

    iput-object p4, p0, Le/a/c/j/c;->h:Ls1/z/b/l;

    iput-object p5, p0, Le/a/c/j/c;->i:Le/a/c/j/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/j/c;

    iget-object v1, p0, Le/a/c/j/c;->f:Le/a/c/j/d;

    iget-wide v2, p0, Le/a/c/j/c;->g:J

    iget-object v4, p0, Le/a/c/j/c;->h:Ls1/z/b/l;

    iget-object v5, p0, Le/a/c/j/c;->i:Le/a/c/j/f;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/c/j/c;-><init>(Le/a/c/j/d;JLs1/z/b/l;Le/a/c/j/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/j/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/j/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/j/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/j/c;->e:I

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
    iget-object p1, p0, Le/a/c/j/c;->f:Le/a/c/j/d;

    .line 5
    iget-object p1, p1, Le/a/c/j/d;->a:Le/a/c/h/g;

    .line 6
    iget-wide v3, p0, Le/a/c/j/c;->g:J

    iput v2, p0, Le/a/c/j/c;->e:I

    invoke-interface {p1, v3, v4, p0}, Le/a/c/h/g;->c(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/c/h/m/c;

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Le/a/c/j/c;->h:Ls1/z/b/l;

    iget-object v0, p0, Le/a/c/j/c;->i:Le/a/c/j/f;

    invoke-virtual {v0}, Le/a/c/j/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p1, Le/a/c/h/m/c;->g:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 10
    iget-object v0, p0, Le/a/c/j/c;->f:Le/a/c/j/d;

    .line 11
    iget-object v0, v0, Le/a/c/j/d;->b:Le/a/e4/p;

    .line 12
    invoke-interface {v0, p1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    const-string v0, "number"

    .line 13
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ls1/f0/w;->o0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/c/j/c;->i:Le/a/c/j/f;

    invoke-virtual {v1}, Le/a/c/j/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&recharge_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Le/a/c/j/c;->i:Le/a/c/j/f;

    invoke-virtual {v0, p1}, Le/a/c/j/f;->b(Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object p1, p0, Le/a/c/j/c;->h:Ls1/z/b/l;

    iget-object v0, p0, Le/a/c/j/c;->i:Le/a/c/j/f;

    invoke-virtual {v0}, Le/a/c/j/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
