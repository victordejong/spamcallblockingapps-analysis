.class public final Le/a/l/c/a/e3;
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
        "Le/a/l/c/a/t$o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.premiumusertab.list.WhoViewedMeCardPayloadCreator$createPayload$2"
    f = "WhoViewedMeCardPayloadCreator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/c/a/f3;


# direct methods
.method public constructor <init>(Le/a/l/c/a/f3;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

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

    new-instance p1, Le/a/l/c/a/e3;

    iget-object v0, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    invoke-direct {p1, v0, p2}, Le/a/l/c/a/e3;-><init>(Le/a/l/c/a/f3;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/c/a/e3;

    iget-object v0, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    invoke-direct {p1, v0, p2}, Le/a/l/c/a/e3;-><init>(Le/a/l/c/a/f3;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/c/a/e3;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 3
    iget-object p1, p1, Le/a/l/c/a/f3;->b:Le/a/l/p2/v0;

    .line 4
    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 5
    iget-object p1, p1, Le/a/l/c/a/f3;->a:Le/a/r5/i0;

    .line 6
    invoke-interface {p1}, Le/a/r5/i0;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 7
    :goto_0
    iget-object v2, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 8
    iget-object v3, v2, Le/a/l/c/a/f3;->a:Le/a/r5/i0;

    .line 9
    invoke-interface {v3}, Le/a/r5/i0;->r()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Le/a/p5/s0/g;->V(Le/a/r5/i0;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v3, Le/a/l/c/a/t$o;

    .line 11
    iget-object v4, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 12
    iget-object v4, v4, Le/a/l/c/a/f3;->c:Le/a/p5/c0;

    const v5, 0x7f100023

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v0, v1

    .line 14
    invoke-interface {v4, v5, v2, v0}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getQuan\u2026lookupCount, lookupCount)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 16
    iget-object v2, v2, Le/a/l/c/a/f3;->c:Le/a/p5/c0;

    const v4, 0x7f120554

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-interface {v2, v4, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026umUserTabWvmCardCtaViews)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {v3, p1, v0, v1}, Le/a/l/c/a/t$o;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_1
    new-instance v3, Le/a/l/c/a/t$o;

    .line 20
    iget-object v0, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 21
    iget-object v0, v0, Le/a/l/c/a/f3;->c:Le/a/p5/c0;

    const v2, 0x7f120555

    new-array v4, v1, [Ljava/lang/Object;

    .line 22
    invoke-interface {v0, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026erTabWvmCardLabelNoViews)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Le/a/l/c/a/e3;->e:Le/a/l/c/a/f3;

    .line 24
    iget-object v2, v2, Le/a/l/c/a/f3;->c:Le/a/p5/c0;

    const v4, 0x7f120553

    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    invoke-interface {v2, v4, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026UserTabWvmCardCtaNoViews)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {v3, p1, v0, v1}, Le/a/l/c/a/t$o;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method
