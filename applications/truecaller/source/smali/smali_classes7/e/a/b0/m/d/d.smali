.class public final Le/a/b0/m/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/m/d/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lq3/a/y;

.field public final c:Lq3/a/i0;

.field public d:Lq3/a/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n0<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/common/payments/senderinfo/SenderInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;

.field public final f:Le/a/b0/m/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/m/d/e;)V
    .locals 6
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineContext"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "senderInfoReader"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/b0/m/d/d;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/b0/m/d/d;->f:Le/a/b0/m/d/e;

    .line 2
    new-instance p1, Le/a/b0/m/d/d$a;

    invoke-direct {p1, p0}, Le/a/b0/m/d/d$a;-><init>(Le/a/b0/m/d/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/m/d/d;->a:Ls1/g;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 3
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p3

    iput-object p3, p0, Le/a/b0/m/d/d;->b:Lq3/a/y;

    .line 4
    check-cast p3, Lq3/a/u1;

    .line 5
    invoke-static {p3, p2}, Ls1/w/f$a$a;->d(Ls1/w/f$a;Ls1/w/f;)Ls1/w/f;

    move-result-object p2

    .line 6
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    iput-object v0, p0, Le/a/b0/m/d/d;->c:Lq3/a/i0;

    .line 7
    new-instance v3, Le/a/b0/m/d/c;

    invoke-direct {v3, p0, p1}, Le/a/b0/m/d/c;-><init>(Le/a/b0/m/d/d;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/m/d/d;->d:Lq3/a/n0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/common/payments/senderinfo/SenderInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x12f9f411

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "prepaid"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "postpaid"

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;
    .locals 1

    const-string v0, "senderId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b0/m/d/d;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "senderId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CreditCard"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/b0/m/d/d;->d(Ljava/lang/String;)Ls1/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getCreditCardPaymentUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ls1/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Lcom/truecaller/common/payments/senderinfo/SenderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b0/m/d/d;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ls1/k;

    invoke-static {v0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/b0/m/d/d;->f()Ljava/util/HashMap;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    invoke-virtual {v3}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Ls1/k;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    :cond_3
    invoke-direct {v0, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method public e(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;
    .locals 4

    const-string v0, "symbol"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b0/m/d/d;->f()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    invoke-virtual {v2}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    return-object v1
.end method

.method public final f()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/common/payments/senderinfo/SenderInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Le/a/b0/m/d/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method
