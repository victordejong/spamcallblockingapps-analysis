.class public final Le/a/k/p/f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.videocallerid.upload.VideoUploadServicePresenter$onUploadRequest$1"
    f = "VideoUploadServicePresenter.kt"
    l = {
        0x5e,
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/p/g;

.field public final synthetic h:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/p/g;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    iput-object p2, p0, Le/a/k/p/f;->h:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iput-object p3, p0, Le/a/k/p/f;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/k/p/f;

    iget-object v0, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    iget-object v1, p0, Le/a/k/p/f;->h:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v2, p0, Le/a/k/p/f;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k/p/f;-><init>(Le/a/k/p/g;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/p/f;

    iget-object v0, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    iget-object v1, p0, Le/a/k/p/f;->h:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v2, p0, Le/a/k/p/f;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k/p/f;-><init>(Le/a/k/p/g;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/p/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/p/f;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/k/p/f;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/k/p/f;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    .line 5
    iget v1, p1, Le/a/k/p/g;->e:I

    add-int/2addr v1, v4

    .line 6
    iput v1, p1, Le/a/k/p/g;->e:I

    .line 7
    iget-object v1, p1, Le/a/k/p/g;->d:Lq3/a/b3/c;

    .line 8
    iput-object v1, p0, Le/a/k/p/f;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/k/p/f;->f:I

    invoke-interface {v1, v3, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    :try_start_1
    iget-object p1, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/p/e;

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1}, Le/a/k/p/e;->d()V

    .line 12
    :cond_4
    iget-object p1, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/p/e;

    if-eqz p1, :cond_5

    .line 14
    iget-object v4, p0, Le/a/k/p/f;->h:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v5, p0, Le/a/k/p/f;->i:Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Le/a/k/p/e;->a(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object p1, p0, Le/a/k/p/f;->g:Le/a/k/p/g;

    iget-object v4, p0, Le/a/k/p/f;->h:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    iget-object v5, p0, Le/a/k/p/f;->i:Ljava/lang/String;

    iput-object v1, p0, Le/a/k/p/f;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/k/p/f;->f:I

    invoke-virtual {p1, v4, v5, p0}, Le/a/k/p/g;->Ij(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v1

    .line 16
    :goto_1
    :try_start_2
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-interface {v0, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_2
    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    invoke-interface {v1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
