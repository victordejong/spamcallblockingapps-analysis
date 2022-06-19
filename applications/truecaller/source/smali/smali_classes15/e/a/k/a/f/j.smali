.class public final Le/a/k/a/f/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k/a/f/h;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

.field public final e:Ls1/w/f;

.field public final f:Le/a/k/p/b;

.field public final g:Le/a/k/c/r0;

.field public final h:Le/a/k/c/d0;

.field public final i:Le/a/b0/o/a;

.field public final j:Le/a/b0/e/r/a;

.field public final k:Le/a/b0/j/b;

.field public final l:Le/a/k/a/f/g;

.field public final m:Le/a/k/c/n0;

.field public final n:Le/a/p5/n0;

.field public final o:Le/a/k/c/h2/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/p/b;Le/a/k/c/r0;Le/a/k/c/d0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/b0/j/b;Le/a/k/a/f/g;Le/a/k/c/n0;Le/a/p5/n0;Le/a/k/c/h2/d;)V
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

    const-string v0, "readVideoUploadingState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewConfigGenerator"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatePredefinedOutgoingVideoManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuidUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k/a/f/j;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/k/a/f/j;->f:Le/a/k/p/b;

    iput-object p3, p0, Le/a/k/a/f/j;->g:Le/a/k/c/r0;

    iput-object p4, p0, Le/a/k/a/f/j;->h:Le/a/k/c/d0;

    iput-object p5, p0, Le/a/k/a/f/j;->i:Le/a/b0/o/a;

    iput-object p6, p0, Le/a/k/a/f/j;->j:Le/a/b0/e/r/a;

    iput-object p7, p0, Le/a/k/a/f/j;->k:Le/a/b0/j/b;

    iput-object p8, p0, Le/a/k/a/f/j;->l:Le/a/k/a/f/g;

    iput-object p9, p0, Le/a/k/a/f/j;->m:Le/a/k/c/n0;

    iput-object p10, p0, Le/a/k/a/f/j;->n:Le/a/p5/n0;

    iput-object p11, p0, Le/a/k/a/f/j;->o:Le/a/k/c/h2/d;

    return-void
.end method

.method public static final Ij(Le/a/k/a/f/j;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/k/a/f/h;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le/a/k/a/f/h;->k7()Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final Jj(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/a/f/j$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/a/f/j$a;

    iget v1, v0, Le/a/k/a/f/j$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/f/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/f/j$a;

    invoke-direct {v0, p0, p1}, Le/a/k/a/f/j$a;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/a/f/j$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/f/j$a;->e:I

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

    iget-object p1, p0, Le/a/k/a/f/j;->k:Le/a/b0/j/b;

    iget-object v2, p0, Le/a/k/a/f/j;->j:Le/a/b0/e/r/a;

    const-string v4, "profileCountryIso"

    .line 2
    invoke-interface {v2, v4}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iput v3, v0, Le/a/k/a/f/j$a;->e:I

    invoke-interface {p1, v2, v0}, Le/a/b0/j/b;->f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public final Kj()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Le/a/k/a/f/j;->i:Le/a/b0/o/a;

    const-string v2, "profileNationalNumber"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/k/a/f/j;->j:Le/a/b0/e/r/a;

    const-string v2, "profileNumber"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lj()Lcom/truecaller/videocallerid/ui/preview/PreviewModes;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/f/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k/a/f/h;->d7()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    sget-object v2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->PREVIEW:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_1
    sget-object v2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object v2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->UPDATE:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final Mj(Le/a/b0/o/a;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "profileFirstName"

    .line 1
    invoke-interface {p1, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "profileLastName"

    invoke-interface {p1, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, " "

    invoke-static {p1, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.combine(\" \",\u2026ttings.PROFILE_LASTNAME))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public Nj(Ljava/lang/String;Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V
    .locals 8

    const-string v0, "screenMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    iget-object p2, p0, Le/a/k/a/f/j;->d:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    invoke-interface {p1, p2}, Le/a/k/a/f/h;->O5(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;->RECORDING:Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;

    iget-object v0, p0, Le/a/k/a/f/j;->d:Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    invoke-interface {p1, p2, v0}, Le/a/k/a/f/h;->J(Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/k/a/f/h;->t()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;->RETRY_UPLOAD:Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 6
    new-instance v5, Le/a/k/a/f/m;

    invoke-direct {v5, p0, v1}, Le/a/k/a/f/m;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->PREVIEW:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    new-instance v5, Le/a/k/a/f/i;

    invoke-direct {v5, p0, v1}, Le/a/k/a/f/i;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p2, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->UPDATE:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/k/a/f/h;->k3()V

    .line 11
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/k/a/f/h;->t()V

    :cond_5
    :goto_0
    return-void

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid preview screen mode or action"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Oj(ZLs1/w/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/k/a/f/j$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/k/a/f/j$b;

    iget v3, v2, Le/a/k/a/f/j$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/k/a/f/j$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/k/a/f/j$b;

    invoke-direct {v2, v0, v1}, Le/a/k/a/f/j$b;-><init>(Le/a/k/a/f/j;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/k/a/f/j$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/k/a/f/j$b;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-boolean v3, v2, Le/a/k/a/f/j$b;->j:Z

    iget-object v4, v2, Le/a/k/a/f/j$b;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Le/a/k/a/f/j$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Le/a/k/a/f/j$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/a/f/j;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/k/a/f/j;->i:Le/a/b0/o/a;

    invoke-virtual {v0, v1}, Le/a/k/a/f/j;->Mj(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/a/k/a/f/j;->Kj()Ljava/lang/String;

    move-result-object v4

    .line 6
    iput-object v0, v2, Le/a/k/a/f/j$b;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/k/a/f/j$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/k/a/f/j$b;->i:Ljava/lang/Object;

    move/from16 v6, p1

    iput-boolean v6, v2, Le/a/k/a/f/j$b;->j:Z

    iput v5, v2, Le/a/k/a/f/j$b;->e:I

    invoke-virtual {v0, v2}, Le/a/k/a/f/j;->Jj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    move-object v5, v1

    move-object v1, v2

    move v3, v6

    move-object v2, v0

    .line 7
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v6, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/k/a/f/h;

    if-eqz v6, :cond_4

    invoke-interface {v6, v5, v4, v1}, Le/a/k/a/f/h;->L3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_9

    .line 9
    iget-object v1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/f/h;

    if-eqz v1, :cond_9

    .line 10
    new-instance v8, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 11
    iget-object v4, v2, Le/a/k/a/f/j;->i:Le/a/b0/o/a;

    const-string v5, "profileAvatar"

    const-string v6, ""

    .line 12
    invoke-interface {v4, v5, v6}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(CoreSettings.PROFILE_AVATAR, \"\")"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Le/a/k/a/f/j;->Kj()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 15
    iget-object v4, v2, Le/a/k/a/f/j;->i:Le/a/b0/o/a;

    invoke-virtual {v2, v4}, Le/a/k/a/f/j;->Mj(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {v4}, Ls1/f0/w;->p0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 19
    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    .line 20
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .line 22
    invoke-static {v11}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_7
    move-object v9, v10

    .line 23
    :goto_3
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v10, "Locale.getDefault()"

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v4

    goto :goto_4

    :cond_8
    move-object/from16 v22, v10

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xfff4

    move-object v4, v8

    move-object v0, v8

    move-object/from16 v8, v22

    .line 25
    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 26
    invoke-interface {v1, v0}, Le/a/k/a/f/h;->setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 27
    :cond_9
    invoke-virtual {v2, v3}, Le/a/k/a/f/j;->Pj(Z)V

    .line 28
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public Pj(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/f/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k/a/f/h;->k9()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/f/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/k/a/f/h;->k7()Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Le/a/k/a/f/j;->l:Le/a/k/a/f/g;

    invoke-virtual {v2, v0}, Le/a/k/a/f/g;->a(Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->PredefinedVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/f/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/k/a/f/h;->k9()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->SelfieVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    goto :goto_1

    .line 7
    :cond_4
    sget-object p1, Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;->StockVideo:Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;

    .line 8
    :goto_1
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/f/h;

    if-eqz v1, :cond_5

    invoke-interface {v1, v0, p1}, Le/a/k/a/f/h;->f(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;)V

    :cond_5
    return-void
.end method
