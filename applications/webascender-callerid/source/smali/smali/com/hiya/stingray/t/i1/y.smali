.class public Lcom/hiya/stingray/t/i1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/c;
    .locals 3

    .line 1
    new-instance v0, Lg/g/a/a/i/k/c$b;

    invoke-direct {v0}, Lg/g/a/a/i/k/c$b;-><init>()V

    .line 2
    sget-object v1, Lcom/hiya/stingray/q/c/g/a;->TEXT_MESSAGE:Lcom/hiya/stingray/q/c/g/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/g/a;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setType(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setTimestamp(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 4
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setTokensDTOList(Ljava/util/List;)Lg/g/a/a/i/k/c$b;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->f()Lg/g/c/a/c/a/b;

    move-result-object v1

    iget-object v1, v1, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->f()Lg/g/c/a/c/a/b;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/y;->j(Lg/g/c/a/c/a/b;)Lg/g/a/a/i/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setIsContact(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    .line 8
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/i1/y;->c(Lcom/hiya/stingray/t/g1/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/i/k/c$b;->setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 9
    invoke-virtual {v0}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;
    .locals 5

    const-string v0, "textEvent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/i/k/d;

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/y;->b(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/c;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->g()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    new-instance v2, Lg/g/a/a/i/k/b;

    sget-object v3, Lg/g/a/a/i/k/a;->OK:Lg/g/a/a/i/k/a;

    sget-object v4, Lg/g/a/a/i/k/f;->NONE:Lg/g/a/a/i/k/f;

    invoke-direct {v2, v3, v4}, Lg/g/a/a/i/k/b;-><init>(Lg/g/a/a/i/k/a;Lg/g/a/a/i/k/f;)V

    .line 5
    invoke-direct {v0, v1, p1, v2}, Lg/g/a/a/i/k/d;-><init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;)V

    return-object v0
.end method

.method public final c(Lcom/hiya/stingray/t/g1/a;)Ljava/lang/String;
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->b()Lcom/hiya/stingray/util/i$a;

    move-result-object p1

    const-string v0, "Incoming"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hiya/stingray/t/i1/x;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Direction can only be incoming or outgoing"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string v0, "Outgoing"

    :cond_2
    :goto_1
    return-object v0
.end method
