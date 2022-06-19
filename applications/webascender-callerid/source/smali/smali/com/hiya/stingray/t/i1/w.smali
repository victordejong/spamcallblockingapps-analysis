.class public Lcom/hiya/stingray/t/i1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/b;
    .locals 2

    .line 1
    new-instance v0, Lg/g/a/a/i/k/b;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->a()Lg/g/a/a/i/k/a;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->j()Lg/g/a/a/i/k/f;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lg/g/a/a/i/k/b;-><init>(Lg/g/a/a/i/k/a;Lg/g/a/a/i/k/f;)V

    return-object v0
.end method

.method private d(Lcom/hiya/stingray/t/g1/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;
    .locals 3

    .line 1
    new-instance v0, Lg/g/a/a/i/k/d;

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/t/i1/w;->c(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/c;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/w;->d(Lcom/hiya/stingray/t/g1/a;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/w;->b(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lg/g/a/a/i/k/d;-><init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;)V

    return-object v0
.end method

.method public c(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/c;
    .locals 3

    .line 1
    new-instance v0, Lg/g/a/a/i/k/c$b;

    invoke-direct {v0}, Lg/g/a/a/i/k/c$b;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setIsContact(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->b()Lcom/hiya/stingray/util/i$a;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    if-ne v1, v2, :cond_0

    const-string v1, "Incoming"

    .line 4
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->b()Lcom/hiya/stingray/util/i$a;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    if-ne v1, v2, :cond_1

    const-string v1, "Outgoing"

    .line 6
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setDirection(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->h()Lcom/hiya/stingray/util/i$b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    sget-object v2, Lcom/hiya/stingray/t/i1/w$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "Unrecognized"

    .line 9
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setTermination(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    goto :goto_1

    :cond_3
    const-string v1, "Missed"

    .line 10
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setTermination(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->f()Lg/g/c/a/c/a/b;

    move-result-object v1

    .line 12
    iget-object v2, v1, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lg/g/c/a/a/a/g;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 13
    invoke-static {v1}, Lcom/hiya/stingray/util/y;->j(Lg/g/c/a/c/a/b;)Lg/g/a/a/i/h;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setTimestamp(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 16
    sget-object v1, Lcom/hiya/stingray/q/c/g/a;->PHONE_CALL:Lcom/hiya/stingray/q/c/g/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/g/a;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setType(Ljava/lang/String;)Lg/g/a/a/i/k/c$b;

    .line 17
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/i/k/c$b;->setDuration(Ljava/lang/Integer;)Lg/g/a/a/i/k/c$b;

    .line 18
    invoke-virtual {v0}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    return-object p1
.end method
