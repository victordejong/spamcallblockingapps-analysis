.class public final Le/a/a0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a0/n;


# instance fields
.field public final a:Le/a/a0/i;


# direct methods
.method public constructor <init>(Le/a/a0/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a0/o;->a:Le/a/a0/i;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a0/o$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a0/o$a;

    iget v1, v0, Le/a/a0/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a0/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a0/o$a;

    invoke-direct {v0, p0, p1}, Le/a/a0/o$a;-><init>(Le/a/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a0/o$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a0/o$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a0/o;->a:Le/a/a0/i;

    iput v3, v0, Le/a/a0/o$a;->e:I

    invoke-interface {p1, v0}, Le/a/a0/i;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/truecaller/spamcategories/SpamCategory;

    .line 5
    invoke-static {v1}, Le/a/l4/k;->q0(Lcom/truecaller/spamcategories/SpamCategory;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a0/o$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a0/o$d;

    iget v1, v0, Le/a/a0/o$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a0/o$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a0/o$d;

    invoke-direct {v0, p0, p3}, Le/a/a0/o$d;-><init>(Le/a/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a0/o$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a0/o$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p3, p0, Le/a/a0/o;->a:Le/a/a0/i;

    iput v3, v0, Le/a/a0/o$d;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/a0/i;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/truecaller/spamcategories/SpamCategory;

    if-eqz p3, :cond_4

    invoke-static {p3}, Le/a/l4/k;->q0(Lcom/truecaller/spamcategories/SpamCategory;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a0/o$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a0/o$b;

    iget v1, v0, Le/a/a0/o$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a0/o$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a0/o$b;

    invoke-direct {v0, p0, p2}, Le/a/a0/o$b;-><init>(Le/a/a0/o;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a0/o$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a0/o$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_3

    :cond_3
    const-string p2, "$this$splitCategoryIds"

    .line 5
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p2, Lcom/truecaller/data/entity/SpamData;->Companion:Lcom/truecaller/data/entity/SpamData$b;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/data/entity/SpamData$b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object p2, p0, Le/a/a0/o;->a:Le/a/a0/i;

    iput v3, v0, Le/a/a0/o$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/a0/i;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/truecaller/spamcategories/SpamCategory;

    .line 11
    invoke-static {v0}, Le/a/l4/k;->q0(Lcom/truecaller/spamcategories/SpamCategory;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    return-object p1
.end method

.method public d(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a0/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/a0/o$c;-><init>(Le/a/a0/o;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
