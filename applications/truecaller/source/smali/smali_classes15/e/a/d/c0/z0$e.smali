.class public final Le/a/d/c0/z0$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.util.VoipIdProviderImpl$numberFromId$2"
    f = "VoipIdProvider.kt"
    l = {
        0xbf
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

    iput-object p1, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    iput-object p2, p0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/d/c0/z0$e;

    iget-object v0, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    iget-object v1, p0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z0$e;-><init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z0$e;

    iget-object v0, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    iget-object v1, p0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/z0$e;-><init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/z0$e;->e:I

    const-string v2, "voipDao.get()"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    .line 5
    iget-object p1, p1, Le/a/d/c0/z0;->d:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/d/t/a;

    new-instance v1, Le/a/d/c0/z0$e$a;

    invoke-direct {v1, p0}, Le/a/d/c0/z0$e$a;-><init>(Le/a/d/c0/z0$e;)V

    invoke-static {p1, v1}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/voip/db/VoipIdCache;

    if-eqz p1, :cond_2

    iget-object v1, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v1, p1, v4, v5, v6}, Le/a/d/c0/z0;->j(Le/a/d/c0/z0;Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;ZI)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipIdCache;->getNumber()Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipIdCache;->getNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    .line 10
    iget-object p1, p1, Le/a/d/c0/z0;->g:Lo3/a;

    .line 11
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/a2/a;

    iget-object v1, p0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

    iput v3, p0, Le/a/d/c0/z0$e;->e:I

    invoke-interface {p1, v1, p0}, Le/a/d/c0/a2/a;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 12
    :cond_4
    :goto_1
    check-cast p1, Le/a/b0/b/e;

    .line 13
    iget-object v0, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    .line 14
    iget-object v1, v0, Le/a/d/c0/z0;->c:Lo3/a;

    .line 15
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/p/a;

    iget-object v3, p0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

    invoke-interface {v1, p1, v3}, Le/a/d/p/a;->b(Le/a/b0/b/e;Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Le/a/d/c0/z0;->h(Lx3/b;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Lcom/truecaller/voip/api/VoipNumberDto;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched number is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 19
    iget-object v0, p0, Le/a/d/c0/z0$e;->f:Le/a/d/c0/z0;

    .line 20
    iget-object v1, p0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v3, Lcom/truecaller/voip/db/VoipIdCache;

    const/16 v4, 0x2b

    invoke-static {v4}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipNumberDto;->getPhone()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipNumberDto;->getExpiryEpochSeconds()J

    move-result-wide v5

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 23
    iget-object p1, v0, Le/a/d/c0/z0;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/d/t/a;

    new-instance v0, Le/a/d/c0/a1;

    invoke-direct {v0, v3}, Le/a/d/c0/a1;-><init>(Lcom/truecaller/voip/db/VoipIdCache;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3}, Lcom/truecaller/voip/db/VoipIdCache;->getNumber()Ljava/lang/String;

    move-result-object v4

    :cond_5
    return-object v4
.end method
