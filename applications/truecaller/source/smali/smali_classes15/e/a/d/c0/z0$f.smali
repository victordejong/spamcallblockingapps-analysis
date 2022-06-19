.class public final Le/a/d/c0/z0$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z0;->e(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.util.VoipIdProviderImpl$ownId$2"
    f = "VoipIdProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/z0;


# direct methods
.method public constructor <init>(Le/a/d/c0/z0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

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

    new-instance p1, Le/a/d/c0/z0$f;

    iget-object v0, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/z0$f;-><init>(Le/a/d/c0/z0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z0$f;

    iget-object v0, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/z0$f;-><init>(Le/a/d/c0/z0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z0$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 3
    iget-object p1, p1, Le/a/d/c0/z0;->b:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    const-string v3, "+"

    .line 5
    invoke-static {p1, v3, v0, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    .line 8
    iget-object v2, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 9
    iget-object v2, v2, Le/a/d/c0/z0;->d:Lo3/a;

    .line 10
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "voipDao.get()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/d/t/a;

    new-instance v3, Le/a/d/c0/z0$f$a;

    invoke-direct {v3, p1}, Le/a/d/c0/z0$f$a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/voip/db/VoipIdCache;

    if-eqz v2, :cond_5

    .line 11
    iget-object v3, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 12
    iget-object v3, v3, Le/a/d/c0/z0;->f:Lo3/a;

    .line 13
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/c0/g1;

    const-wide/16 v4, -0x1

    const-string v6, "qaOwnIdExpirationEpochSeconds"

    invoke-interface {v3, v6, v4, v5}, Le/a/d/c0/g1;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 14
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 15
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 16
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 18
    :goto_2
    iget-object v3, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 19
    invoke-virtual {v3, v2, v5, v0}, Le/a/d/c0/z0;->i(Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;Z)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object v0

    if-nez v0, :cond_4

    .line 20
    invoke-virtual {v2}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    .line 21
    iget-object v0, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 22
    iget-object v2, v0, Le/a/d/c0/z0;->c:Lo3/a;

    .line 23
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/p/a;

    sget-object v3, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-static {p1}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Le/a/d/p/a;->f(Le/a/b0/b/e;Ljava/lang/String;)Lx3/b;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Le/a/d/c0/z0;->h(Lx3/b;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Lcom/truecaller/voip/api/VoipIdDto;

    if-eqz v0, :cond_3

    iget-object v1, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 26
    invoke-virtual {v1, v0, p1}, Le/a/d/c0/z0;->g(Lcom/truecaller/voip/api/VoipIdDto;Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1

    .line 28
    :cond_4
    invoke-virtual {v2}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    .line 29
    invoke-virtual {v2}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_5
    iget-object v0, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 31
    iget-object v2, v0, Le/a/d/c0/z0;->c:Lo3/a;

    .line 32
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/p/a;

    invoke-interface {v2}, Le/a/d/p/a;->g()Lx3/b;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Le/a/d/c0/z0;->h(Lx3/b;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/truecaller/voip/api/VoipIdDto;

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched own voip id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 36
    iget-object v1, p0, Le/a/d/c0/z0$f;->e:Le/a/d/c0/z0;

    .line 37
    invoke-virtual {v1, v0, p1}, Le/a/d/c0/z0;->g(Lcom/truecaller/voip/api/VoipIdDto;Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipIdCache;->getVoipId()Ljava/lang/String;

    move-result-object v1

    :cond_6
    return-object v1
.end method
