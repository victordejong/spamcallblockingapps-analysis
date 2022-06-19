.class public final Le/a/d/c0/z0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z0;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipIdProviderImpl$idFromNumber$2"
    f = "VoipIdProvider.kt"
    l = {
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/z0;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z0$c;->f:Le/a/d/c0/z0;

    iput-object p2, p0, Le/a/d/c0/z0$c;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/d/c0/z0$c;

    iget-object v0, p0, Le/a/d/c0/z0$c;->f:Le/a/d/c0/z0;

    iget-object v1, p0, Le/a/d/c0/z0$c;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z0$c;-><init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z0$c;

    iget-object v0, p0, Le/a/d/c0/z0$c;->f:Le/a/d/c0/z0;

    iget-object v1, p0, Le/a/d/c0/z0$c;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z0$c;-><init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z0$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/z0$c;->e:I

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
    iget-object p1, p0, Le/a/d/c0/z0$c;->f:Le/a/d/c0/z0;

    .line 5
    iget-object p1, p1, Le/a/d/c0/z0;->g:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/a2/a;

    iget-object v1, p0, Le/a/d/c0/z0$c;->g:Ljava/lang/String;

    iput v2, p0, Le/a/d/c0/z0$c;->e:I

    invoke-interface {p1, v1, p0}, Le/a/d/c0/a2/a;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/b0/b/e;

    .line 8
    iget-object v0, p0, Le/a/d/c0/z0$c;->f:Le/a/d/c0/z0;

    .line 9
    iget-object v1, p0, Le/a/d/c0/z0$c;->g:Ljava/lang/String;

    .line 10
    iget-object v3, v0, Le/a/d/c0/z0;->d:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "voipDao.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/d/t/a;

    new-instance v4, Le/a/d/c0/c1;

    invoke-direct {v4, v1}, Le/a/d/c0/c1;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/voip/db/VoipIdCache;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v0, v3, v4, v2}, Le/a/d/c0/z0;->i(Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;Z)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_4
    iget-object v2, v0, Le/a/d/c0/z0;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/p/a;

    invoke-static {v1}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Le/a/d/p/a;->f(Le/a/b0/b/e;Ljava/lang/String;)Lx3/b;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Le/a/d/c0/z0;->h(Lx3/b;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Lcom/truecaller/voip/api/VoipIdDto;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetched voip id is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v0, v2, v1}, Le/a/d/c0/z0;->g(Lcom/truecaller/voip/api/VoipIdDto;Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_7

    .line 19
    instance-of p1, p1, Le/a/b0/b/e$b;

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Le/a/d/c0/z0$c;->f:Le/a/d/c0/z0;

    .line 21
    iget-object p1, p1, Le/a/d/c0/z0;->g:Lo3/a;

    .line 22
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/a2/a;

    invoke-interface {p1, v0}, Le/a/d/c0/a2/a;->a(Ljava/lang/String;)V

    :cond_6
    move-object v4, v0

    :cond_7
    return-object v4
.end method
