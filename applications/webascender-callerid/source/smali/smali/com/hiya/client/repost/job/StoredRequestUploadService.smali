.class public final Lcom/hiya/client/repost/job/StoredRequestUploadService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field public f:Lg/g/b/d/g/e;

.field private g:Li/c/b0/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/repost/job/StoredRequestUploadService;->g:Li/c/b0/g/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/g/c;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HiyaJob"

    const-string v1, "onStartJob called for stored request upload service"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lg/g/b/d/f/k;->a:Lg/g/b/d/f/k$a;

    invoke-virtual {v0, p0}, Lg/g/b/d/f/k$a;->a(Landroid/content/Context;)Lg/g/b/d/f/k;

    move-result-object v0

    invoke-interface {v0, p0}, Lg/g/b/d/f/k;->a(Lcom/hiya/client/repost/job/StoredRequestUploadService;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/repost/job/StoredRequestUploadService;->f:Lg/g/b/d/g/e;

    const/4 v1, 0x0

    const-string v2, "storedrequestUploadManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/g/b/d/g/e;->c()Li/c/b0/b/e;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/hiya/client/repost/job/StoredRequestUploadService;->f:Lg/g/b/d/g/e;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lg/g/b/d/g/e;->e()Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/client/repost/job/StoredRequestUploadService$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/client/repost/job/StoredRequestUploadService$a;-><init>(Lcom/hiya/client/repost/job/StoredRequestUploadService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->H(Li/c/b0/b/g;)Li/c/b0/b/g;

    check-cast v1, Li/c/b0/g/c;

    iput-object v1, p0, Lcom/hiya/client/repost/job/StoredRequestUploadService;->g:Li/c/b0/g/c;

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/repost/job/StoredRequestUploadService;->a()V

    const/4 p1, 0x0

    return p1
.end method
