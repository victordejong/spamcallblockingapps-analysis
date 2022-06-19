.class public final Le/a/k/p/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/p/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/p/e;",
        ">;",
        "Le/a/k/p/d;"
    }
.end annotation


# instance fields
.field public final d:Lq3/a/b3/c;

.field public e:I

.field public final f:Ls1/w/f;

.field public final g:Le/a/k/c/e2;

.field public final h:Le/a/k/c/s1;

.field public final i:Le/a/k/c/h2/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/e2;Le/a/k/c/s1;Le/a/k/c/h2/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUploadUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoFileUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/p/g;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/k/p/g;->g:Le/a/k/c/e2;

    iput-object p3, p0, Le/a/k/p/g;->h:Le/a/k/c/s1;

    iput-object p4, p0, Le/a/k/p/g;->i:Le/a/k/c/h2/d;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/k/p/g;->d:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k/p/g$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k/p/g$a;

    iget v1, v0, Le/a/k/p/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/p/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/p/g$a;

    invoke-direct {v0, p0, p3}, Le/a/k/p/g$a;-><init>(Le/a/k/p/g;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k/p/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/p/g$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k/p/g$a;->j:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Le/a/k/p/g$a;->i:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;

    iget-object v1, v0, Le/a/k/p/g$a;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v0, v0, Le/a/k/p/g$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/p/g;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/k/p/g$a;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;

    iget-object p2, v0, Le/a/k/p/g$a;->h:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v0, v0, Le/a/k/p/g$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/p/g;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, Le/a/k/p/g$a;->j:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;

    iget-object p2, v0, Le/a/k/p/g$a;->i:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Le/a/k/p/g$a;->h:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v5, v0, Le/a/k/p/g$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/k/p/g;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, p3

    move-object p3, v7

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_6

    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p3, p0, Le/a/k/p/g;->g:Le/a/k/c/e2;

    iput-object p0, v0, Le/a/k/p/g$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/p/g$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/p/g$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Le/a/k/p/g$a;->j:Ljava/lang/Object;

    iput v5, v0, Le/a/k/p/g$a;->e:I

    check-cast p3, Le/a/k/c/g2;

    .line 5
    iget-object v2, p3, Le/a/k/c/g2;->a:Ls1/w/f;

    new-instance v5, Le/a/k/c/f2;

    invoke-direct {v5, p3, v6}, Le/a/k/c/f2;-><init>(Le/a/k/c/g2;Ls1/w/d;)V

    invoke-static {v2, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p0

    move-object v2, p3

    move-object p3, p2

    move-object p2, v6

    .line 6
    :goto_1
    :try_start_2
    check-cast v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :try_start_3
    instance-of p2, v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;

    if-eqz p2, :cond_6

    .line 8
    iget-object p2, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/k/p/e;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, p3}, Le/a/k/p/e;->b(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_6
    instance-of p2, v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-eqz p2, :cond_7

    .line 10
    iget-object p2, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/k/p/e;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, p3}, Le/a/k/p/e;->c(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_2
    if-eqz v2, :cond_b

    .line 11
    instance-of p2, v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-nez p2, :cond_8

    move-object p2, v6

    goto :goto_3

    :cond_8
    move-object p2, v2

    :goto_3
    check-cast p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-eqz p2, :cond_9

    .line 12
    iget-object p2, p2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;->b:Le/a/k/c/r1;

    if-eqz p2, :cond_9

    .line 13
    iget-object p2, p2, Le/a/k/c/r1;->a:Ljava/io/File;

    if-eqz p2, :cond_9

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_9
    move-object p2, v6

    :goto_4
    if-eqz p2, :cond_b

    .line 15
    iget-object p3, v5, Le/a/k/p/g;->h:Le/a/k/c/s1;

    iput-object v5, v0, Le/a/k/p/g$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/p/g$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/p/g$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Le/a/k/p/g$a;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/k/p/g$a;->e:I

    check-cast p3, Le/a/k/c/a;

    invoke-virtual {p3, p2, v0}, Le/a/k/c/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    move-object p2, p1

    move-object p1, v2

    move-object v0, v5

    :goto_5
    move-object v2, p1

    move-object p1, p2

    move-object v5, v0

    :cond_b
    if-eqz v2, :cond_c

    if-eqz p1, :cond_c

    .line 16
    iget-object p2, v5, Le/a/k/p/g;->i:Le/a/k/c/h2/d;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;->getContext()Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    move-result-object p3

    invoke-interface {p2, p3, v2}, Le/a/k/c/h2/d;->d(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;)V

    .line 17
    instance-of p2, v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-eqz p2, :cond_c

    .line 18
    iget-object p2, v5, Le/a/k/p/g;->i:Le/a/k/c/h2/d;

    sget-object p3, Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;->SUCCESS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    invoke-interface {p2, p1, p3}, Le/a/k/c/h2/d;->i(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V

    .line 19
    :cond_c
    iget p1, v5, Le/a/k/p/g;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v5, Le/a/k/p/g;->e:I

    if-gtz p1, :cond_d

    .line 20
    iget-object p1, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/p/e;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Le/a/k/p/e;->finish()V

    .line 21
    :cond_d
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_1
    move-exception p2

    goto :goto_6

    :catchall_2
    move-exception p3

    move-object v2, p2

    move-object p2, p3

    goto :goto_6

    :catchall_3
    move-exception p2

    move-object v5, p0

    move-object v2, v6

    :goto_6
    if-eqz v2, :cond_11

    .line 22
    instance-of p3, v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-nez p3, :cond_e

    move-object p3, v6

    goto :goto_7

    :cond_e
    move-object p3, v2

    :goto_7
    check-cast p3, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-eqz p3, :cond_f

    .line 23
    iget-object p3, p3, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;->b:Le/a/k/c/r1;

    if-eqz p3, :cond_f

    .line 24
    iget-object p3, p3, Le/a/k/c/r1;->a:Ljava/io/File;

    if-eqz p3, :cond_f

    .line 25
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_f
    if-eqz v6, :cond_11

    .line 26
    iget-object p3, v5, Le/a/k/p/g;->h:Le/a/k/c/s1;

    iput-object v5, v0, Le/a/k/p/g$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/p/g$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/p/g$a;->i:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/p/g$a;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/k/p/g$a;->e:I

    check-cast p3, Le/a/k/c/a;

    invoke-virtual {p3, v6, v0}, Le/a/k/c/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_10

    return-object v1

    :cond_10
    move-object v1, p1

    move-object p1, p2

    move-object p2, v2

    move-object v0, v5

    :goto_8
    move-object v2, p2

    move-object v5, v0

    move-object p2, p1

    move-object p1, v1

    :cond_11
    if-eqz v2, :cond_12

    if-eqz p1, :cond_12

    .line 27
    iget-object p3, v5, Le/a/k/p/g;->i:Le/a/k/c/h2/d;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;->getContext()Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    move-result-object v0

    invoke-interface {p3, v0, v2}, Le/a/k/c/h2/d;->d(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;)V

    .line 28
    instance-of p3, v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    if-eqz p3, :cond_12

    .line 29
    iget-object p3, v5, Le/a/k/p/g;->i:Le/a/k/c/h2/d;

    sget-object v0, Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;->SUCCESS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    invoke-interface {p3, p1, v0}, Le/a/k/c/h2/d;->i(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V

    .line 30
    :cond_12
    iget p1, v5, Le/a/k/p/g;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v5, Le/a/k/p/g;->e:I

    if-gtz p1, :cond_13

    .line 31
    iget-object p1, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/p/e;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Le/a/k/p/e;->finish()V

    :cond_13
    throw p2
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/k/p/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0, v0}, Le/a/k/p/e;->a(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V

    return-void
.end method
