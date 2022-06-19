.class public final Le/a/l/p2/d2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/d2/b;
.implements Le/a/l/p2/d2/f;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final a:Le/m/e/k;

.field public volatile b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/l/p2/d2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/l/p2/d2/g;

.field public final e:Le/a/u3/a;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/p2/d2/g;Le/a/u3/a;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaPremiumFeatureHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/p2/d2/e;->d:Le/a/l/p2/d2/g;

    iput-object p3, p0, Le/a/l/p2/d2/e;->e:Le/a/u3/a;

    iput-object p4, p0, Le/a/l/p2/d2/e;->f:Ls1/w/f;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/l/p2/d2/e;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z
    .locals 2

    const-string v0, "feature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/l/p2/d2/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Le/a/l/p2/d2/e$a;-><init>(Le/a/l/p2/d2/e;Lcom/truecaller/premium/data/feature/PremiumFeature;ZLs1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/l/p2/d2/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Le/a/l/p2/d2/a;

    .line 1
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto(Z)Le/a/l/p2/d2/a;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-virtual {v1, v2}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto(Z)Le/a/l/p2/d2/a;

    move-result-object v1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALL_RECORDING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-virtual {v1, v2}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto(Z)Le/a/l/p2/d2/a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/l/p2/d2/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/a/l/p2/d2/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->PREMIUM_SUPPORT:Lcom/truecaller/premium/data/feature/PremiumFeature;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->GOLD_CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/l/p2/d2/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/a/l/p2/d2/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->EXTENDED_SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->NO_ADS:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->WHO_VIEWED_ME:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->PREMIUM_BADGE:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->CONTACT_REQUEST:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->INCOGNITO_MODE:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->GHOST_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->ANNOUNCE_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    invoke-static {v1, v2, v3, v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->dto$default(Lcom/truecaller/premium/data/feature/PremiumFeature;ZILjava/lang/Object;)Le/a/l/p2/d2/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public o(Le/a/l/p2/x;)V
    .locals 2

    const-string v0, "premium"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Le/a/l/p2/x;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v1, "regular"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/l/p2/d2/e;->d()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Le/a/l/p2/x;->j:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v0, "gold"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/a/l/p2/d2/e;->c()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/l/p2/d2/e;->b()Ljava/util/List;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Le/a/l/p2/d2/e;->b:Ljava/util/List;

    .line 9
    iget-object v0, p0, Le/a/l/p2/d2/e;->c:Le/a/l/p2/v0;

    iget-object v1, p0, Le/a/l/p2/d2/e;->a:Le/m/e/k;

    invoke-virtual {v1, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/l/p2/v0;->f1(Ljava/lang/String;)V

    return-void
.end method
