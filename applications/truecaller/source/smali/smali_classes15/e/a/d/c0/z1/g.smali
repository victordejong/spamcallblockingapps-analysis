.class public final Le/a/d/c0/z1/g;
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
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.callinfo.CallInfoProviderImpl$resolveNumbersInCall$2"
    f = "CallInfoProvider.kt"
    l = {
        0x22,
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/z1/h;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/h;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/g;->f:Le/a/d/c0/z1/h;

    iput-object p2, p0, Le/a/d/c0/z1/g;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/z1/g;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z1/g;

    iget-object v0, p0, Le/a/d/c0/z1/g;->f:Le/a/d/c0/z1/h;

    iget-object v1, p0, Le/a/d/c0/z1/g;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/z1/g;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/z1/g;-><init>(Le/a/d/c0/z1/h;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z1/g;

    iget-object v0, p0, Le/a/d/c0/z1/g;->f:Le/a/d/c0/z1/h;

    iget-object v1, p0, Le/a/d/c0/z1/g;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/z1/g;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/z1/g;-><init>(Le/a/d/c0/z1/h;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/z1/g;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

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
    iget-object p1, p0, Le/a/d/c0/z1/g;->f:Le/a/d/c0/z1/h;

    .line 5
    iget-object p1, p1, Le/a/d/c0/z1/h;->c:Le/a/d/p/a;

    .line 6
    new-instance v1, Le/a/d/c0/z1/g$a;

    invoke-direct {v1, p0, v4}, Le/a/d/c0/z1/g$a;-><init>(Le/a/d/c0/z1/g;Ls1/w/d;)V

    iput v3, p0, Le/a/d/c0/z1/g;->e:I

    invoke-static {p1, v1, p0}, Le/a/p5/s0/g;->V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/voip/api/CallInfoResponseDto;

    .line 8
    iget-object v1, p0, Le/a/d/c0/z1/g;->f:Le/a/d/c0/z1/h;

    .line 9
    iget-object v1, v1, Le/a/d/c0/z1/h;->d:Le/a/b0/e/l;

    .line 10
    invoke-interface {v1}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v1, Le/a/b0/e/b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v1, v4

    :goto_1
    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoResponseDto;->getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoDto;->getPeers()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Lcom/truecaller/voip/api/CallInfoPeerDto;

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getPhone()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 19
    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_7
    iget-object p1, p0, Le/a/d/c0/z1/g;->f:Le/a/d/c0/z1/h;

    .line 23
    iget-object p1, p1, Le/a/d/c0/z1/h;->b:Le/a/d/c0/e;

    .line 24
    iget-object v1, p0, Le/a/d/c0/z1/g;->h:Ljava/lang/String;

    sget-object v3, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput v2, p0, Le/a/d/c0/z1/g;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/d/c0/e;->c(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_4
    check-cast p1, Le/a/d/b0/a;

    if-eqz p1, :cond_9

    .line 25
    iget-object p1, p1, Le/a/d/b0/a;->d:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 26
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_9
    return-object v4
.end method
