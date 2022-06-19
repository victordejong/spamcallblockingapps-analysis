.class public final Lg/g/b/a/g/a/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/f;)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/g/a/i/f;->a:Lcom/google/gson/f;

    return-void
.end method

.method private final a(Lg/g/b/c/f;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p1

    sget-object v1, Lg/g/b/c/r;->BUSINESS_PROFILE:Lg/g/b/c/r;

    if-ne p1, v1, :cond_0

    .line 2
    new-instance p1, Lg/g/a/a/m/b$a;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lg/g/a/a/m/b$a;-><init>(Lg/g/a/a/m/a;ILkotlin/w/c/g;)V

    sget-object v0, Lg/g/a/a/m/a;->DIRECTORY:Lg/g/a/a/m/a;

    invoke-virtual {p1, v0}, Lg/g/a/a/m/b$a;->b(Lg/g/a/a/m/a;)Lg/g/a/a/m/b$a;

    invoke-virtual {p1}, Lg/g/a/a/m/b$a;->a()Lg/g/a/a/m/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lg/g/b/a/g/a/i/f;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private final b(Lg/g/b/c/n;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/n;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final e(IZ)Lg/g/a/a/i/k/b;
    .locals 4

    .line 1
    new-instance v0, Lg/g/a/a/i/k/b;

    sget-object v1, Lg/g/a/a/i/k/a;->OK:Lg/g/a/a/i/k/a;

    sget-object v2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    invoke-direct {v0, v1, v2}, Lg/g/a/a/i/k/b;-><init>(Lg/g/a/a/i/k/a;Lg/g/a/a/i/k/f;)V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lg/g/a/a/i/k/a;->AUTOVM_REP:Lg/g/a/a/i/k/a;

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/b;->setClientDisposition(Lg/g/a/a/i/k/a;)V

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 4
    sget-object v2, Lg/g/a/a/i/k/f;->BLACKLISTED:Lg/g/a/a/i/k/f;

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Lg/g/a/a/i/k/b;->setUserDisposition(Lg/g/a/a/i/k/f;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Lg/g/b/c/f;Ljava/lang/Boolean;Ljava/util/Map;)Lg/g/a/a/i/k/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/h;",
            "Lg/g/b/c/n;",
            "Lg/g/a/a/i/o/o;",
            "Lg/g/b/c/f;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lg/g/a/a/i/k/d;"
        }
    .end annotation

    const-string v0, "phoneWithMetaDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerId"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberEventDTO.newB\u2026\n                .build()"

    if-eqz p5, :cond_0

    .line 2
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lg/g/b/a/g/a/i/f;->d(Lg/g/a/a/i/h;ZLg/g/a/a/i/o/o;)Lg/g/a/a/i/k/c;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/k/d;->newBuilder()Lg/g/a/a/i/k/d$b;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lg/g/a/a/i/k/d$b;->withEventProfileEvent(Lg/g/a/a/i/k/c;)Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 6
    invoke-direct {p0, p4}, Lg/g/b/a/g/a/i/f;->a(Lg/g/b/c/f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/d$b;->withClientSignal(Ljava/lang/String;)Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lg/g/a/a/i/k/d$b;->build()Lg/g/a/a/i/k/d;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/g/b/a/g/a/i/f;->f(Lg/g/a/a/i/h;Lg/g/b/c/n;)Lg/g/a/a/i/k/c;

    move-result-object p3

    const/4 p5, 0x0

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2}, Lg/g/b/c/n;->a()I

    move-result p5

    invoke-virtual {p2}, Lg/g/b/c/n;->i()Z

    move-result v2

    invoke-direct {p0, p5, v2}, Lg/g/b/a/g/a/i/f;->e(IZ)Lg/g/a/a/i/k/b;

    move-result-object p5

    :cond_1
    if-eqz p6, :cond_2

    .line 10
    invoke-static {p6}, Lkotlin/s/b0;->v(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    :goto_0
    sget-object v3, Lg/g/b/a/j/b;->b:Lg/g/b/a/j/b;

    .line 12
    invoke-virtual {p1}, Lg/g/a/a/i/h;->getPhone()Ljava/lang/String;

    move-result-object p1

    const-string v4, "phoneWithMetaDTO.phone"

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p4}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p4

    .line 14
    invoke-virtual {v3, p1, p4}, Lg/g/b/a/j/b;->a(Ljava/lang/String;Lg/g/b/c/r;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p4, "cacheType"

    .line 15
    invoke-interface {v2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    invoke-static {}, Lg/g/a/a/i/k/d;->newBuilder()Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 17
    invoke-direct {p0, p2}, Lg/g/b/a/g/a/i/f;->b(Lg/g/b/c/n;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/d$b;->withProfileTag(Ljava/lang/String;)Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lg/g/a/a/i/k/d$b;->withCachedProfileTag(Ljava/lang/String;)Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p3}, Lg/g/a/a/i/k/d$b;->withEventProfileEvent(Lg/g/a/a/i/k/c;)Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p5}, Lg/g/a/a/i/k/d$b;->withDispositionDTO(Lg/g/a/a/i/k/b;)Lg/g/a/a/i/k/d$b;

    move-result-object p1

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p1, p6}, Lg/g/a/a/i/k/d$b;->withClientTag(Ljava/util/Map;)Lg/g/a/a/i/k/d$b;

    .line 22
    :cond_4
    invoke-virtual {p1}, Lg/g/a/a/i/k/d$b;->build()Lg/g/a/a/i/k/d;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Lg/g/a/a/i/h;ZLg/g/a/a/i/o/o;)Lg/g/a/a/i/k/c;
    .locals 4

    const-string v0, "phoneWithMetaDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/i/k/c$b;

    invoke-direct {v0}, Lg/g/a/a/i/k/c$b;-><init>()V

    .line 2
    sget-object v1, Lg/g/b/c/l;->BLOCK_EVENT:Lg/g/b/c/l;

    invoke-virtual {v1}, Lg/g/b/c/l;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setType(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lg/g/a/e/b;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/g/a/a/i/k/c$b;->setTimestamp(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object v1

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Lg/g/a/a/i/k/c$b;->setIsBlock(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lg/g/a/a/i/k/c$b;->setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v0, p3}, Lg/g/a/a/i/k/c$b;->setLastInteractionForBlockEvent(Lg/g/a/a/i/o/o;)Lg/g/a/a/i/k/c$b;

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lg/g/a/a/i/k/c$b;->setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lg/g/a/a/i/k/c$b;->setDuration(Ljava/lang/Integer;)Lg/g/a/a/i/k/c$b;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lg/g/a/a/i/k/c$b;->setIsContact(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lg/g/a/a/i/k/c$b;->setTermination(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Lg/g/a/a/i/k/c$b;->setTokensDTOList(Ljava/util/List;)Lg/g/a/a/i/k/c$b;

    .line 12
    invoke-virtual {v0}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Lg/g/a/a/i/h;Lg/g/b/c/n;)Lg/g/a/a/i/k/c;
    .locals 3

    const-string v0, "phoneWithMetaDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lg/g/a/a/i/k/c$b;

    invoke-direct {v1}, Lg/g/a/a/i/k/c$b;-><init>()V

    .line 2
    invoke-virtual {p2}, Lg/g/b/c/n;->c()Lg/g/b/c/k;

    move-result-object v2

    invoke-virtual {v2}, Lg/g/b/c/k;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/g/a/a/i/k/c$b;->setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lg/g/b/c/n;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/g/a/a/i/k/c$b;->setDuration(Ljava/lang/Integer;)Lg/g/a/a/i/k/c$b;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Lg/g/b/c/n;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/g/a/a/i/k/c$b;->setIsContact(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lg/g/a/a/i/k/c$b;->setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lg/g/b/c/n;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lg/g/a/e/b;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg/g/a/a/i/k/c$b;->setTimestamp(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lg/g/b/c/n;->h()Lg/g/b/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lg/g/b/c/l;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg/g/a/a/i/k/c$b;->setType(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lg/g/b/c/n;->h()Lg/g/b/c/l;

    move-result-object v1

    sget-object v2, Lg/g/b/c/l;->TEXT_MESSAGE:Lg/g/b/c/l;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lg/g/a/a/i/k/c$b;->setTokensDTOList(Ljava/util/List;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lg/g/b/c/n;->h()Lg/g/b/c/l;

    move-result-object v1

    if-ne v1, v2, :cond_2

    sget-object p2, Lg/g/a/a/i/k/e;->OK:Lg/g/a/a/i/k/e;

    invoke-virtual {p2}, Lg/g/a/a/i/k/e;->getType()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p2}, Lg/g/b/c/n;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lg/g/a/a/i/k/e;->MISSED:Lg/g/a/a/i/k/e;

    invoke-virtual {p2}, Lg/g/a/a/i/k/e;->getType()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 11
    :cond_3
    sget-object p2, Lg/g/a/a/i/k/e;->UNRECOGNIZED:Lg/g/a/a/i/k/e;

    invoke-virtual {p2}, Lg/g/a/a/i/k/e;->getType()Ljava/lang/String;

    move-result-object p2

    .line 12
    :goto_1
    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/c$b;->setTermination(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Lg/g/a/a/i/k/c$b;->setIsBlock(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    return-object p1
.end method
