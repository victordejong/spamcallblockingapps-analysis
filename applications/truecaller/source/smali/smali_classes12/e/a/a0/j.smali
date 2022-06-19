.class public final Le/a/a0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a0/i;


# instance fields
.field public final a:Le/a/a0/x/a;

.field public final b:Le/a/a0/k;

.field public final c:Le/a/a0/l;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/a0/x/a;Le/a/a0/k;Le/a/a0/l;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "spamCategoriesDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoriesRestApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoriesSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a0/j;->a:Le/a/a0/x/a;

    iput-object p2, p0, Le/a/a0/j;->b:Le/a/a0/k;

    iput-object p3, p0, Le/a/a0/j;->c:Le/a/a0/l;

    iput-object p4, p0, Le/a/a0/j;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/spamcategories/SpamCategory;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a0/j;->a:Le/a/a0/x/a;

    invoke-interface {v0, p1, p2}, Le/a/a0/x/a;->d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a0/j;->d:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v0, "WorkManager.getInstance(context)"

    .line 3
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/a0/j;->d:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const-string v2, "SpamCategoriesFetchWorkAction"

    invoke-static/range {v1 .. v6}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    return-void
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/spamcategories/SpamCategory;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a0/j;->a:Le/a/a0/x/a;

    invoke-interface {v0, p1}, Le/a/a0/x/a;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/spamcategories/SpamCategory;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a0/j;->a:Le/a/a0/x/a;

    invoke-interface {v0, p1, p2, p3}, Le/a/a0/x/a;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a0/j;->b:Le/a/a0/k;

    .line 2
    iget-object v1, p0, Le/a/a0/j;->c:Le/a/a0/l;

    const-string v2, "etag"

    invoke-interface {v1, v2}, Le/a/a0/l;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a0/k;->a(Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 4
    iget-object v3, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 5
    check-cast v3, Lcom/truecaller/spamcategories/SpamCategoriesResponse;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/truecaller/spamcategories/SpamCategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 6
    :goto_1
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 7
    iget-object v4, p0, Le/a/a0/j;->a:Le/a/a0/x/a;

    invoke-interface {v4, v3}, Le/a/a0/x/a;->c(Ljava/util/List;)Ljava/util/List;

    .line 8
    iget-object v4, p0, Le/a/a0/j;->c:Le/a/a0/l;

    .line 9
    iget-object v0, v0, Lx3/a0;->a:Lu3/k0;

    .line 10
    iget-object v0, v0, Lu3/k0;->g:Lu3/z;

    .line 11
    invoke-virtual {v0, v2}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Le/a/a0/l;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/spamcategories/SpamCategory;

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getIcon()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/spamcategories/SpamCategory;

    .line 16
    iget-object v2, p0, Le/a/a0/j;->d:Landroid/content/Context;

    invoke-static {v2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/truecaller/spamcategories/SpamCategory;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v1

    .line 17
    iget-object v2, v1, Le/f/a/h;->B:Le/f/a/i;

    .line 18
    new-instance v3, Le/f/a/r/k/i;

    const/high16 v4, -0x80000000

    invoke-direct {v3, v2, v4, v4}, Le/f/a/r/k/i;-><init>(Le/f/a/i;II)V

    .line 19
    invoke-virtual {v1, v3}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    goto :goto_4

    .line 20
    :cond_5
    iget-object v0, v0, Lx3/a0;->a:Lu3/k0;

    .line 21
    iget v0, v0, Lu3/k0;->e:I

    const/16 v2, 0x130

    if-ne v0, v2, :cond_7

    :cond_6
    move v1, v5

    :cond_7
    return v1
.end method
