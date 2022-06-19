.class public final Le/a/k/a/i/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/i/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter$subscribeToIsEnabledChanged$1$1"
    f = "VideoCallerIdSettingViewPresenter.kt"
    l = {
        0x55,
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/a/i/g;


# direct methods
.method public constructor <init>(Le/a/k/a/i/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/i/g$a;->g:Le/a/k/a/i/g;

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

    new-instance v0, Le/a/k/a/i/g$a;

    iget-object v1, p0, Le/a/k/a/i/g$a;->g:Le/a/k/a/i/g;

    invoke-direct {v0, v1, p2}, Le/a/k/a/i/g$a;-><init>(Le/a/k/a/i/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/i/g$a;

    iget-object v1, p0, Le/a/k/a/i/g$a;->g:Le/a/k/a/i/g;

    invoke-direct {v0, v1, p2}, Le/a/k/a/i/g$a;-><init>(Le/a/k/a/i/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/a/i/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/i/g$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/videocallerid/upload/UploadingStates;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/videocallerid/upload/UploadingStates;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 4
    sget-object v1, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-ne p1, v1, :cond_5

    .line 5
    iget-object v1, p0, Le/a/k/a/i/g$a;->g:Le/a/k/a/i/g;

    iget-object v1, v1, Le/a/k/a/i/g;->g:Le/a/k/a/i/f;

    iput-object p1, p0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/k/a/i/g$a;->f:I

    invoke-virtual {v1, p0}, Le/a/k/a/i/f;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    iget-object v1, p0, Le/a/k/a/i/g$a;->g:Le/a/k/a/i/g;

    iget-object v1, v1, Le/a/k/a/i/g;->g:Le/a/k/a/i/f;

    iput-object p1, p0, Le/a/k/a/i/g$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/k/a/i/g$a;->f:I

    invoke-virtual {v1, p0}, Le/a/k/a/i/f;->Jj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_1
    move-object p1, v0

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/k/a/i/g$a;->g:Le/a/k/a/i/g;

    iget-object v0, v0, Le/a/k/a/i/g;->g:Le/a/k/a/i/f;

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/i/c;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/truecaller/videocallerid/upload/UploadingStates;->UPLOADING:Lcom/truecaller/videocallerid/upload/UploadingStates;

    if-eq p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0, v3}, Le/a/k/a/i/c;->setEnableConfigureButton(Z)V

    .line 9
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
