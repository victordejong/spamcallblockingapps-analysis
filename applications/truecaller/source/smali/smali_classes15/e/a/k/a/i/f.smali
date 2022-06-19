.class public final Le/a/k/a/i/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/i/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/a/i/c;",
        ">;",
        "Le/a/k/a/i/b;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/k/c/r0;

.field public final f:Le/a/k/c/d0;

.field public final g:Le/a/k/a/f/g;

.field public final h:Le/a/k/c/h0;

.field public final i:Le/a/k/n/h/a;

.field public final j:Le/a/k/p/b;

.field public final k:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/r0;Le/a/k/c/d0;Le/a/k/a/f/g;Le/a/k/c/h0;Le/a/k/n/h/a;Le/a/k/p/b;Le/a/p5/c0;)V
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

    const-string v0, "availability"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewConfigGenerator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiveVideoSettingManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predefinedVideosRepository"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadStateHolder"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/a/i/f;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    iput-object p3, p0, Le/a/k/a/i/f;->f:Le/a/k/c/d0;

    iput-object p4, p0, Le/a/k/a/i/f;->g:Le/a/k/a/f/g;

    iput-object p5, p0, Le/a/k/a/i/f;->h:Le/a/k/c/h0;

    iput-object p6, p0, Le/a/k/a/i/f;->i:Le/a/k/n/h/a;

    iput-object p7, p0, Le/a/k/a/i/f;->j:Le/a/k/p/b;

    iput-object p8, p0, Le/a/k/a/i/f;->k:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final synthetic Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/a/i/f$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/a/i/f$a;

    iget v1, v0, Le/a/k/a/i/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/i/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/i/f$a;

    invoke-direct {v0, p0, p1}, Le/a/k/a/i/f$a;-><init>(Le/a/k/a/i/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/a/i/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/i/f$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/k/a/i/f$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/i/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    invoke-interface {p1}, Le/a/k/c/r0;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/k/a/i/f;->f:Le/a/k/c/d0;

    iput-object p0, v0, Le/a/k/a/i/f$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/i/f$a;->e:I

    invoke-interface {p1, v0}, Le/a/k/c/d0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_5
    move-object v2, p0

    :cond_6
    const/4 v4, 0x0

    .line 5
    :goto_2
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/i/c;

    if-eqz p1, :cond_7

    invoke-interface {p1, v4}, Le/a/k/a/i/c;->setVideoCallerIdInitialSetting(Z)V

    :cond_7
    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Le/a/k/a/i/f$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/i/f$a;->e:I

    invoke-virtual {v2, v0}, Le/a/k/a/i/f;->Kj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 7
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic Jj(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/a/i/f$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/a/i/f$b;

    iget v1, v0, Le/a/k/a/i/f$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/i/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/i/f$b;

    invoke-direct {v0, p0, p1}, Le/a/k/a/i/f$b;-><init>(Le/a/k/a/i/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/a/i/f$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/i/f$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/k/a/i/f$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/i/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/i/f;->f:Le/a/k/c/d0;

    iput-object p0, v0, Le/a/k/a/i/f$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/i/f$b;->e:I

    invoke-interface {p1, v0}, Le/a/k/c/d0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v3, :cond_4

    .line 5
    sget-object p1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->Manage:Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    goto :goto_2

    :cond_4
    if-nez p1, :cond_6

    .line 6
    sget-object p1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->Setup:Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    .line 7
    :goto_2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/i/c;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Le/a/k/a/i/c;->setConfigureButtonType(Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;)V

    .line 8
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 9
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final Kj(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/a/i/f$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/a/i/f$c;

    iget v1, v0, Le/a/k/a/i/f$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/i/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/i/f$c;

    invoke-direct {v0, p0, p1}, Le/a/k/a/i/f$c;-><init>(Le/a/k/a/i/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/a/i/f$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/i/f$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Le/a/k/a/i/f$c;->h:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/k/l;

    iget-object v0, v0, Le/a/k/a/i/f$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/i/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/k/a/i/f$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/i/f;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/i/f;->f:Le/a/k/c/d0;

    iput-object p0, v0, Le/a/k/a/i/f$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/k/a/i/f$c;->e:I

    invoke-interface {p1, v4, v0}, Le/a/k/c/d0;->h(ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 8
    :goto_2
    iget-object v4, v2, Le/a/k/a/i/f;->g:Le/a/k/a/f/g;

    invoke-virtual {v4, p1}, Le/a/k/a/f/g;->a(Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object v4

    if-nez p1, :cond_6

    .line 9
    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->StockVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    goto :goto_5

    .line 10
    :cond_6
    iget-object v5, v2, Le/a/k/a/i/f;->i:Le/a/k/n/h/a;

    iput-object v2, v0, Le/a/k/a/i/f$c;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/k/a/i/f$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/a/i/f$c;->e:I

    check-cast v5, Le/a/k/n/h/d;

    invoke-virtual {v5, p1, v0}, Le/a/k/n/h/d;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    move-object v1, v4

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->PredefinedVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    goto :goto_4

    .line 11
    :cond_8
    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->SelfieVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    :goto_4
    move-object v2, v0

    move-object v4, v1

    .line 12
    :goto_5
    iget-object v0, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/i/c;

    if-eqz v0, :cond_9

    invoke-interface {v0, v4, p1}, Le/a/k/a/i/c;->f(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;)V

    .line 13
    :cond_9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/k/a/i/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/k/a/i/c;->b0(Z)V

    .line 5
    iget-object v0, p0, Le/a/k/a/i/f;->e:Le/a/k/c/r0;

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_settings_receive_video_description:I

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/truecaller/videocallerid/R$string;->vid_settings_receive_video_description_for_business:I

    .line 8
    :goto_0
    invoke-interface {p1, v0}, Le/a/k/a/i/c;->setReceiveVideoDescription(I)V

    .line 9
    new-instance v4, Le/a/k/a/i/g;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/k/a/i/g;-><init>(Le/a/k/a/i/f;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
