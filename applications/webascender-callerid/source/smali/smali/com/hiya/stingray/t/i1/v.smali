.class public Lcom/hiya/stingray/t/i1/v;
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
    sget-object v1, Lcom/hiya/stingray/q/c/g/a;->BLOCK_EVENT:Lcom/hiya/stingray/q/c/g/a;

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
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->f()Lg/g/c/a/c/a/b;

    move-result-object v1

    iget-object v1, v1, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->f()Lg/g/c/a/c/a/b;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/y;->j(Lg/g/c/a/c/a/b;)Lg/g/a/a/i/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/k/c$b;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/i/k/c$b;->setIsContact(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/g/a/a/i/k/c$b;->setIsBlock(Ljava/lang/Boolean;)Lg/g/a/a/i/k/c$b;

    .line 8
    invoke-virtual {v0}, Lg/g/a/a/i/k/c$b;->build()Lg/g/a/a/i/k/c;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/d;
    .locals 2

    const-string v0, "blockEvent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/i/k/d;

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/i1/v;->b(Lcom/hiya/stingray/t/g1/a;)Lg/g/a/a/i/k/c;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, v1, v1}, Lg/g/a/a/i/k/d;-><init>(Lg/g/a/a/i/k/c;Ljava/lang/String;Lg/g/a/a/i/k/b;)V

    return-object v0
.end method
