.class public final Le/a/d/c0/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/y0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/p/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/t/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/p5/c;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/g1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/a2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Lo3/a<",
            "Le/a/d/p/a;",
            ">;",
            "Lo3/a<",
            "Le/a/d/t/a;",
            ">;",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Le/a/d/c0/g1;",
            ">;",
            "Lo3/a<",
            "Le/a/d/c0/a2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipRestApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetDomainResolver"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/z0;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/z0;->b:Lo3/a;

    iput-object p3, p0, Le/a/d/c0/z0;->c:Lo3/a;

    iput-object p4, p0, Le/a/d/c0/z0;->d:Lo3/a;

    iput-object p5, p0, Le/a/d/c0/z0;->e:Le/a/p5/c;

    iput-object p6, p0, Le/a/d/c0/z0;->f:Lo3/a;

    iput-object p7, p0, Le/a/d/c0/z0;->g:Lo3/a;

    return-void
.end method

.method public static final f(Le/a/d/c0/z0;Ljava/util/Map;)Ljava/util/HashMap;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static synthetic j(Le/a/d/c0/z0;Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;ZI)Lcom/truecaller/voip/db/VoipIdCache;
    .locals 0

    and-int/lit8 p2, p4, 0x1

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/d/c0/z0;->i(Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;Z)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/z0;->a:Ls1/w/f;

    new-instance v1, Le/a/d/c0/z0$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d/c0/z0$d;-><init>(Le/a/d/c0/z0;Ljava/util/Set;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/z0;->a:Ls1/w/f;

    new-instance v1, Le/a/d/c0/z0$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d/c0/z0$c;-><init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/z0;->a:Ls1/w/f;

    new-instance v1, Le/a/d/c0/z0$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/d/c0/z0$e;-><init>(Le/a/d/c0/z0;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/z0;->a:Ls1/w/f;

    new-instance v1, Le/a/d/c0/z0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/d/c0/z0$b;-><init>(Le/a/d/c0/z0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/z0;->a:Ls1/w/f;

    new-instance v1, Le/a/d/c0/z0$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/d/c0/z0$f;-><init>(Le/a/d/c0/z0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/truecaller/voip/api/VoipIdDto;Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;
    .locals 4

    .line 1
    new-instance v0, Lcom/truecaller/voip/db/VoipIdCache;

    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipIdDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/voip/api/VoipIdDto;->getExpiryEpochSeconds()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    iget-object p1, p0, Le/a/d/c0/z0;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "voipDao.get()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/d/t/a;

    new-instance p2, Le/a/d/c0/z0$a;

    invoke-direct {p2, v0}, Le/a/d/c0/z0$a;-><init>(Lcom/truecaller/voip/db/VoipIdCache;)V

    invoke-static {p1, p2}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Lx3/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx3/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final i(Lcom/truecaller/voip/db/VoipIdCache;Ljava/lang/Long;Z)Lcom/truecaller/voip/db/VoipIdCache;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipIdCache;->getExpiryEpochSeconds()J

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipIdCache;->getExpiryEpochSeconds()J

    move-result-wide v0

    .line 3
    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Le/a/d/c0/z0;->e:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Voip id cache is expired. Cache:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Delete cache: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 5
    iget-object p2, p0, Le/a/d/c0/z0;->d:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "voipDao.get()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Le/a/d/t/a;

    new-instance p3, Le/a/d/c0/z0$g;

    invoke-direct {p3, p1}, Le/a/d/c0/z0$g;-><init>(Lcom/truecaller/voip/db/VoipIdCache;)V

    invoke-static {p2, p3}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method
