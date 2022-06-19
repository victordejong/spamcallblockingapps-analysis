.class public final Le/a/d/c/v;
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
    c = "com.truecaller.voip.ui.VoipPresenter$onPeersSelected$1"
    f = "VoipPresenter.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c/t;

.field public final synthetic g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c/t;[Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/v;->f:Le/a/d/c/t;

    iput-object p2, p0, Le/a/d/c/v;->g:[Ljava/lang/String;

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

    new-instance p1, Le/a/d/c/v;

    iget-object v0, p0, Le/a/d/c/v;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/v;->g:[Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c/v;-><init>(Le/a/d/c/t;[Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c/v;

    iget-object v0, p0, Le/a/d/c/v;->f:Le/a/d/c/t;

    iget-object v1, p0, Le/a/d/c/v;->g:[Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c/v;-><init>(Le/a/d/c/t;[Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c/v;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

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

    .line 4
    iget-object p1, p0, Le/a/d/c/v;->g:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/d/c/v;->f:Le/a/d/c/t;

    .line 6
    iget-object p1, p1, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {p1}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 7
    iget-object v2, p0, Le/a/d/c/v;->g:[Ljava/lang/String;

    invoke-static {v2}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Le/a/d/v/k/a0;->o(Ljava/util/Set;)Lq3/a/n0;

    move-result-object p1

    if-eqz p1, :cond_8

    iput v3, p0, Le/a/d/c/v;->e:I

    invoke-interface {p1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lcom/truecaller/voip/groupcall/action/InviteResult;

    if-eqz p1, :cond_8

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    .line 9
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 10
    :cond_6
    sget p1, Lcom/truecaller/voip/R$string;->voip_group_error_inviting_peers_partial:I

    .line 11
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    .line 12
    :cond_7
    sget p1, Lcom/truecaller/voip/R$string;->voip_group_error_inviting_peers:I

    .line 13
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    :goto_2
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 15
    iget-object v1, p0, Le/a/d/c/v;->f:Le/a/d/c/t;

    .line 16
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_8

    .line 17
    invoke-interface {v1, p1}, Le/a/d/c/l;->d(I)V

    :cond_8
    return-object v0
.end method
