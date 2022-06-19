.class public final Le/a/l/c/j$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/j;->V7(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onNewFeatureLabelDismissed$1"
    f = "PremiumUserTabPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/c/j;

.field public final synthetic f:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;


# direct methods
.method public constructor <init>(Le/a/l/c/j;Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/j$e;->e:Le/a/l/c/j;

    iput-object p2, p0, Le/a/l/c/j$e;->f:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

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

    new-instance p1, Le/a/l/c/j$e;

    iget-object v0, p0, Le/a/l/c/j$e;->e:Le/a/l/c/j;

    iget-object v1, p0, Le/a/l/c/j$e;->f:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/c/j$e;-><init>(Le/a/l/c/j;Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/c/j$e;

    iget-object v0, p0, Le/a/l/c/j$e;->e:Le/a/l/c/j;

    iget-object v1, p0, Le/a/l/c/j$e;->f:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/c/j$e;-><init>(Le/a/l/c/j;Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/c/j$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/c/j$e;->e:Le/a/l/c/j;

    .line 3
    iget-object v0, p1, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 4
    iget-boolean v1, p1, Le/a/l/e0;->m:Z

    if-nez v1, :cond_9

    .line 5
    iget-boolean v1, p1, Le/a/l/e0;->n:Z

    if-nez v1, :cond_9

    .line 6
    iget-object v1, p1, Le/a/l/c/j;->X:Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v3, "currentCards"

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 12
    iget-object v3, p0, Le/a/l/c/j$e;->e:Le/a/l/c/j;

    .line 13
    iget-object v3, v3, Le/a/l/c/j;->A0:Le/a/l/c/n/d;

    .line 14
    iget-object v4, p0, Le/a/l/c/j$e;->f:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v3, v4}, Le/a/l/c/n/d;->i(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Le/a/l/v2/i/b/a;

    move-result-object v3

    const-string v4, "cardNewFeatureLabel"

    .line 15
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Le/a/l/c/a/p;

    .line 18
    iget-object v7, v7, Le/a/l/c/a/p;->c:Le/a/l/v2/i/b/a;

    if-eqz v7, :cond_1

    .line 19
    iget-object v7, v7, Le/a/l/v2/i/b/a;->a:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    iget-object v11, v3, Le/a/l/v2/i/b/a;->a:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    if-ne v7, v11, :cond_2

    move v7, v10

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v6, v9

    .line 20
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eq v6, v9, :cond_5

    move v5, v10

    :cond_5
    if-eqz v5, :cond_6

    move-object v8, v4

    :cond_6
    if-eqz v8, :cond_7

    .line 22
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/c/a/p;

    .line 24
    iget-object v6, v5, Le/a/l/c/a/p;->a:Le/a/l/c/a/q;

    iget-object v5, v5, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    const-string v7, "payload"

    .line 25
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Le/a/l/c/a/p;

    invoke-direct {v7, v6, v5, v3}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;)V

    .line 26
    invoke-interface {v1, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_8
    iput-object v0, p1, Le/a/l/c/j;->W:Le/a/l/c/a/n0;

    .line 31
    iput-object v1, p1, Le/a/l/c/j;->X:Ljava/util/List;

    .line 32
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/i;

    if-eqz p1, :cond_9

    .line 33
    invoke-interface {p1, v2, v3}, Le/a/l/c/i;->ok(Ljava/util/List;Ljava/util/List;)V

    .line 34
    :cond_9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
