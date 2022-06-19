.class public final Le/a/c/g/g0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/g0/c;


# instance fields
.field public final a:Le/a/c/b/e;

.field public final b:Le/a/c/s/a/c;


# direct methods
.method public constructor <init>(Le/a/c/b/e;Le/a/c/s/a/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsEnvironmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classifierRestAdapter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/g0/d;->a:Le/a/c/b/e;

    iput-object p2, p0, Le/a/c/g/g0/d;->b:Le/a/c/s/a/c;

    return-void
.end method


# virtual methods
.method public a(ILs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/g/g0/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/g/g0/d$a;

    iget v1, v0, Le/a/c/g/g0/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/g0/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/g0/d$a;

    invoke-direct {v0, p0, p2}, Le/a/c/g/g0/d$a;-><init>(Le/a/c/g/g0/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/g/g0/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/g0/d$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-lez p1, :cond_3

    .line 4
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object p2, v3

    .line 5
    :goto_1
    iget-object p1, p0, Le/a/c/g/g0/d;->b:Le/a/c/s/a/c;

    .line 6
    iget-object v2, p0, Le/a/c/g/g0/d;->a:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->f()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v5, p0, Le/a/c/g/g0/d;->a:Le/a/c/b/e;

    invoke-interface {v5}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput v4, v0, Le/a/c/g/g0/d$a;->e:I

    .line 9
    invoke-interface {p1, v2, v5, p2, v0}, Le/a/c/s/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    :goto_2
    move-object p1, p2

    check-cast p1, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;

    const-string v0, "$this$isValidResponse"

    .line 11
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;->getMeta()Lcom/truecaller/insights/models/classifierseed/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/models/classifierseed/Meta;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCBI-1000"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;->getData()Lcom/truecaller/insights/models/classifierseed/Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/classifierseed/Data;->getVectors()Lcom/truecaller/insights/models/classifierseed/Vectors;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 13
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object v3, p2

    :cond_6
    return-object v3
.end method
