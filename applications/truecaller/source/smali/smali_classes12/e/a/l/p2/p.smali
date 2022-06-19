.class public final Le/a/l/p2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/p2/p$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l/p2/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l/p2/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Le/a/l/a/l0;


# direct methods
.method public constructor <init>(Le/a/l/a/l0;)V
    .locals 6

    const-string v0, "welcomeOfferUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/p;->e:Le/a/l/a/l0;

    const/4 p1, 0x6

    new-array p1, p1, [Le/a/l/p2/p$a;

    .line 2
    new-instance v0, Le/a/l/p2/p$a;

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;ZI)V

    aput-object v0, p1, v2

    .line 3
    new-instance v0, Le/a/l/p2/p$a;

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;Z)V

    aput-object v0, p1, v5

    .line 4
    new-instance v0, Le/a/l/p2/p$a;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;ZI)V

    aput-object v0, p1, v3

    .line 5
    new-instance v0, Le/a/l/p2/p$a;

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;ZI)V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 6
    new-instance v0, Le/a/l/p2/p$a;

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;ZI)V

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 7
    new-instance v0, Le/a/l/p2/p$a;

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;ZI)V

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 8
    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/p;->a:Ljava/util/List;

    new-array p1, v3, [Le/a/l/p2/p$a;

    .line 9
    new-instance v0, Le/a/l/p2/p$a;

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;Z)V

    aput-object v0, p1, v2

    .line 10
    new-instance v0, Le/a/l/p2/p$a;

    invoke-virtual {v1}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/p$a;-><init>(Ljava/lang/String;ZI)V

    aput-object v0, p1, v5

    .line 11
    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Le/a/l/p2/p$a;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/p2/k1;",
            ">;",
            "Le/a/l/p2/p$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/l/p2/k1;

    .line 2
    iget-object v3, p2, Le/a/l/p2/p$a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    iget-boolean v3, p2, Le/a/l/p2/p$a;->b:Z

    .line 5
    invoke-virtual {v2}, Le/a/l/p2/k1;->h()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 6
    iget-object v3, p2, Le/a/l/p2/p$a;->a:Ljava/lang/String;

    .line 7
    sget-object v4, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v4}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Le/a/l/p2/p;->e:Le/a/l/a/l0;

    .line 9
    invoke-virtual {v3}, Le/a/l/a/l0;->a()Lw3/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lw3/b/a/e0/c;->g()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v2}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le/a/l/p2/n1;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_0

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 11
    :goto_3
    check-cast v0, Le/a/l/p2/k1;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Le/a/l/p2/n1;->c()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method
