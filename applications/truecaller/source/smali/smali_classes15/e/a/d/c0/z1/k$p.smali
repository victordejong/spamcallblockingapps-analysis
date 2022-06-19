.class public final Le/a/d/c0/z1/k$p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z1/k;->i(Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/d/p/a;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/voip/api/InviteToCallResponseDto;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$invite$inviteToCallResponse$1"
    f = "CallInfoRepository.kt"
    l = {
        0x1c4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/z1/k;

.field public final synthetic g:Lcom/truecaller/voip/api/InviteToCallRequestDto;


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/k;Lcom/truecaller/voip/api/InviteToCallRequestDto;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/k$p;->f:Le/a/d/c0/z1/k;

    iput-object p2, p0, Le/a/d/c0/z1/k$p;->g:Lcom/truecaller/voip/api/InviteToCallRequestDto;

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

    new-instance p1, Le/a/d/c0/z1/k$p;

    iget-object v0, p0, Le/a/d/c0/z1/k$p;->f:Le/a/d/c0/z1/k;

    iget-object v1, p0, Le/a/d/c0/z1/k$p;->g:Lcom/truecaller/voip/api/InviteToCallRequestDto;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z1/k$p;-><init>(Le/a/d/c0/z1/k;Lcom/truecaller/voip/api/InviteToCallRequestDto;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z1/k$p;

    iget-object v0, p0, Le/a/d/c0/z1/k$p;->f:Le/a/d/c0/z1/k;

    iget-object v1, p0, Le/a/d/c0/z1/k$p;->g:Lcom/truecaller/voip/api/InviteToCallRequestDto;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z1/k$p;-><init>(Le/a/d/c0/z1/k;Lcom/truecaller/voip/api/InviteToCallRequestDto;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/k$p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/z1/k$p;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/c0/z1/k$p;->f:Le/a/d/c0/z1/k;

    .line 2
    iget-object v1, p1, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    .line 3
    invoke-virtual {p1}, Le/a/d/c0/z1/k;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Le/a/d/c0/z1/k$p;->g:Lcom/truecaller/voip/api/InviteToCallRequestDto;

    iput v2, p0, Le/a/d/c0/z1/k$p;->e:I

    invoke-interface {v1, p1, v3, p0}, Le/a/d/p/a;->j(Ljava/lang/String;Lcom/truecaller/voip/api/InviteToCallRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lx3/a0;

    .line 4
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    return-object p1
.end method
