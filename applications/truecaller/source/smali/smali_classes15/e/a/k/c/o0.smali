.class public final Le/a/k/c/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/n0;


# instance fields
.field public final a:Le/a/k/j;

.field public final b:Le/a/k/c/m0;

.field public final c:Le/a/k/c/d0;

.field public final d:Le/a/k/c/h2/d;

.field public final e:Le/a/k/p/i;

.field public final f:Le/a/p5/u;


# direct methods
.method public constructor <init>(Le/a/k/j;Le/a/k/c/m0;Le/a/k/c/d0;Le/a/k/c/h2/d;Le/a/k/p/i;Le/a/p5/u;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "support"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareVideoUpdateWorkerLauncher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoDetailProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUploadStateHolder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/o0;->a:Le/a/k/j;

    iput-object p2, p0, Le/a/k/c/o0;->b:Le/a/k/c/m0;

    iput-object p3, p0, Le/a/k/c/o0;->c:Le/a/k/c/d0;

    iput-object p4, p0, Le/a/k/c/o0;->d:Le/a/k/c/h2/d;

    iput-object p5, p0, Le/a/k/c/o0;->e:Le/a/k/p/i;

    iput-object p6, p0, Le/a/k/c/o0;->f:Le/a/p5/u;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/k/c/o0$a;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/k/c/o0$a;

    iget v2, v1, Le/a/k/c/o0$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/c/o0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/c/o0$a;

    invoke-direct {v1, p0, p3}, Le/a/k/c/o0$a;-><init>(Le/a/k/c/o0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/k/c/o0$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k/c/o0$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/k/c/o0$a;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    iget-object p1, v1, Le/a/k/c/o0$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v1, v1, Le/a/k/c/o0$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/k/c/o0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/k/c/o0;->f:Le/a/p5/u;

    invoke-interface {p3}, Le/a/p5/u;->d()Z

    move-result p3

    if-nez p3, :cond_3

    .line 5
    iget-object p1, p0, Le/a/k/c/o0;->e:Le/a/k/p/i;

    sget-object p2, Lcom/truecaller/videocallerid/upload/UploadingStates;->FAILED:Lcom/truecaller/videocallerid/upload/UploadingStates;

    invoke-interface {p1, p2}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    return-object v0

    .line 6
    :cond_3
    iget-object p3, p0, Le/a/k/c/o0;->c:Le/a/k/c/d0;

    iput-object p0, v1, Le/a/k/c/o0$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/k/c/o0$a;->h:Ljava/lang/Object;

    iput-object p2, v1, Le/a/k/c/o0$a;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/k/c/o0$a;->e:I

    invoke-interface {p3, p2, v1}, Le/a/k/c/d0;->b(Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    .line 7
    :goto_1
    iget-object p3, v1, Le/a/k/c/o0;->a:Le/a/k/j;

    check-cast p3, Le/a/k/k;

    invoke-virtual {p3}, Le/a/k/k;->e()V

    .line 8
    iget-object p3, v1, Le/a/k/c/o0;->b:Le/a/k/c/m0;

    invoke-virtual {p3}, Le/a/k/c/m0;->a()V

    .line 9
    iget-object p3, v1, Le/a/k/c/o0;->e:Le/a/k/p/i;

    sget-object v2, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    invoke-interface {p3, v2}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    if-eqz p1, :cond_5

    .line 10
    iget-object p3, v1, Le/a/k/c/o0;->d:Le/a/k/c/h2/d;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;->getContext()Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;

    move-result-object v2

    .line 11
    iget-object p2, p2, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 12
    invoke-interface {p3, v2, p2}, Le/a/k/c/h2/d;->b(Lcom/truecaller/videocallerid/utils/analytics/OnboardingContext;Ljava/lang/String;)V

    .line 13
    iget-object p2, v1, Le/a/k/c/o0;->d:Le/a/k/c/h2/d;

    sget-object p3, Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;->SUCCESS:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    invoke-interface {p2, p1, p3}, Le/a/k/c/h2/d;->i(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V

    :cond_5
    return-object v0
.end method
