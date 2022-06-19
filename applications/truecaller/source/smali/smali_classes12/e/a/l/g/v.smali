.class public final Le/a/l/g/v;
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
        "Le/a/l/g/u$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.gift.GoldGiftRepository$giftGold$2"
    f = "GoldGiftRepository.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/g/u;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/l/g/u;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/g/v;->f:Le/a/l/g/u;

    iput-object p2, p0, Le/a/l/g/v;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/g/v;

    iget-object v0, p0, Le/a/l/g/v;->f:Le/a/l/g/u;

    iget-object v1, p0, Le/a/l/g/v;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/g/v;-><init>(Le/a/l/g/u;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/g/v;

    iget-object v0, p0, Le/a/l/g/v;->f:Le/a/l/g/u;

    iget-object v1, p0, Le/a/l/g/v;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/g/v;-><init>(Le/a/l/g/u;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/g/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Le/a/l/g/u$a$b;->b:Le/a/l/g/u$a$b;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/l/g/v;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/l/g/v;->f:Le/a/l/g/u;

    .line 5
    iget-object p1, p1, Le/a/l/g/u;->b:Le/a/l/p2/v0;

    .line 6
    invoke-interface {p1}, Le/a/l/p2/v0;->A0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 7
    iget-object p1, p0, Le/a/l/g/v;->f:Le/a/l/g/u;

    .line 8
    iget-object v4, p1, Le/a/l/g/u;->a:Le/a/l/g/q;

    .line 9
    iget-object p1, p0, Le/a/l/g/v;->g:Ljava/lang/String;

    invoke-static {p1}, Le/a/p5/s0/f;->v(Ljava/lang/String;)J

    move-result-wide v6

    iput v3, p0, Le/a/l/g/v;->e:I

    const-string v5, "goldgift101"

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Le/a/l/g/q;->a(Ljava/lang/String;JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 10
    :cond_2
    :goto_0
    check-cast p1, Le/a/l/r2/a;

    .line 11
    instance-of v1, p1, Le/a/l/r2/a$c;

    if-eqz v1, :cond_8

    .line 12
    check-cast p1, Le/a/l/r2/a$c;

    .line 13
    iget-object p1, p1, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 14
    check-cast p1, Le/a/l/g/q$b;

    invoke-virtual {p1}, Le/a/l/g/q$b;->a()I

    move-result p1

    if-eq p1, v3, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    .line 15
    sget-object v0, Le/a/l/g/u$a$a;->b:Le/a/l/g/u$a$a;

    goto :goto_1

    .line 16
    :cond_3
    sget-object v0, Le/a/l/g/u$a$f;->b:Le/a/l/g/u$a$f;

    goto :goto_1

    .line 17
    :cond_4
    sget-object v0, Le/a/l/g/u$a$g;->b:Le/a/l/g/u$a$g;

    goto :goto_1

    .line 18
    :cond_5
    sget-object v0, Le/a/l/g/u$a$e;->b:Le/a/l/g/u$a$e;

    goto :goto_1

    .line 19
    :cond_6
    sget-object v0, Le/a/l/g/u$a$d;->b:Le/a/l/g/u$a$d;

    goto :goto_1

    .line 20
    :cond_7
    sget-object v0, Le/a/l/g/u$a$i;->b:Le/a/l/g/u$a$i;

    goto :goto_1

    .line 21
    :cond_8
    instance-of p1, p1, Le/a/l/r2/a$a;

    if-eqz p1, :cond_9

    sget-object v0, Le/a/l/g/u$a$h;->b:Le/a/l/g/u$a$h;

    goto :goto_1

    .line 22
    :cond_9
    sget-object v0, Le/a/l/g/u$a$c;->b:Le/a/l/g/u$a$c;

    :cond_a
    :goto_1
    return-object v0
.end method
