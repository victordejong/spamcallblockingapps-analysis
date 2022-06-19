.class public Lg/g/b/a/g/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/g/b/c/n;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/n;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(IZ)Lg/g/a/a/i/k/b;
    .locals 4

    .line 1
    new-instance v0, Lg/g/a/a/i/k/b;

    sget-object v1, Lg/g/a/a/i/k/a;->OK:Lg/g/a/a/i/k/a;

    sget-object v2, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    invoke-direct {v0, v1, v2}, Lg/g/a/a/i/k/b;-><init>(Lg/g/a/a/i/k/a;Lg/g/a/a/i/k/f;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 2
    sget-object v1, Lg/g/a/a/i/k/a;->AUTOVM_REP:Lg/g/a/a/i/k/a;

    :cond_0
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/b;->setClientDisposition(Lg/g/a/a/i/k/a;)V

    if-eqz p2, :cond_1

    .line 3
    sget-object v2, Lg/g/a/a/i/k/f;->BLACKLISTED:Lg/g/a/a/i/k/f;

    :cond_1
    invoke-virtual {v0, v2}, Lg/g/a/a/i/k/b;->setUserDisposition(Lg/g/a/a/i/k/f;)V

    return-object v0
.end method

.method public c(Lg/g/a/a/i/h;Lg/g/b/c/n;)Lg/g/a/a/i/k/c;
    .locals 3

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

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

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lg/g/b/c/n;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lg/g/a/a/i/k/e;->MISSED:Lg/g/a/a/i/k/e;

    goto :goto_1

    :cond_3
    sget-object p2, Lg/g/a/a/i/k/e;->UNRECOGNIZED:Lg/g/a/a/i/k/e;

    :goto_1
    invoke-virtual {p2}, Lg/g/a/a/i/k/e;->getType()Ljava/lang/String;

    move-result-object p2

    .line 11
    :goto_2
    invoke-virtual {p1, p2}, Lg/g/a/a/i/k/c$b;->setTermination(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lg/g/a/a/i/k/c$b;->setIsBlock(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    return-object p1
.end method
