.class public final Le/a/k/a/f/k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/videocallerid/upload/UploadingStates;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.preview.PreviewPresenter$maybeSubscribeVideoUploadState$2"
    f = "PreviewPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/a/f/j;


# direct methods
.method public constructor <init>(Le/a/k/a/f/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/f/k;

    iget-object v1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    invoke-direct {v0, v1, p2}, Le/a/k/a/f/k;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/f/k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 4
    sget-object p2, Lcom/truecaller/videocallerid/upload/UploadingStates;->UNKNOWN:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 6
    invoke-interface {p1}, Le/a/k/a/f/h;->Z9()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p2, Lcom/truecaller/videocallerid/upload/UploadingStates;->FAILED:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, p2, :cond_1

    .line 8
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 9
    sget-object p2, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->RETRY_UPLOAD:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, p2}, Le/a/k/a/f/h;->H(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Le/a/k/a/f/j;->Ij(Le/a/k/a/f/j;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, p2, :cond_3

    .line 11
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_2

    .line 12
    sget-object p2, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->DISMISS:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, p2}, Le/a/k/a/f/h;->h7(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    .line 13
    :cond_2
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 14
    invoke-interface {p1}, Le/a/k/a/f/h;->Z9()V

    goto :goto_0

    .line 15
    :cond_3
    sget-object p2, Lcom/truecaller/videocallerid/upload/UploadingStates;->UPLOADING:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, p2, :cond_4

    .line 16
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 17
    sget-object p2, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->DISMISS:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, p2}, Le/a/k/a/f/h;->s8(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    goto :goto_0

    .line 18
    :cond_4
    sget-object p2, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, p2, :cond_5

    .line 19
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 20
    sget-object p2, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->DISMISS:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, p2}, Le/a/k/a/f/h;->h7(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/f/k;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 2
    sget-object v0, Lcom/truecaller/videocallerid/upload/UploadingStates;->UNKNOWN:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 4
    invoke-interface {p1}, Le/a/k/a/f/h;->Z9()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/truecaller/videocallerid/upload/UploadingStates;->FAILED:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 7
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->RETRY_UPLOAD:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, v0}, Le/a/k/a/f/h;->H(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    invoke-static {v0}, Le/a/k/a/f/j;->Ij(Le/a/k/a/f/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 10
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_2

    .line 11
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->DISMISS:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, v0}, Le/a/k/a/f/h;->h7(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 14
    invoke-interface {p1}, Le/a/k/a/f/h;->Z9()V

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Lcom/truecaller/videocallerid/upload/UploadingStates;->UPLOADING:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 17
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->DISMISS:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, v0}, Le/a/k/a/f/h;->s8(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    goto :goto_0

    .line 18
    :cond_4
    sget-object v0, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Le/a/k/a/f/k;->f:Le/a/k/a/f/j;

    .line 19
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    .line 20
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->DISMISS:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-interface {p1, v0}, Le/a/k/a/f/h;->h7(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    .line 21
    :cond_5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
