.class public final Le/a/f/a/n;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/a/m;",
        ">;",
        "Le/a/f/a/l;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public e:Lq3/a/p1;

.field public f:Lq3/a/p1;

.field public g:J

.field public h:Lq3/a/p1;

.field public volatile i:Z

.field public final j:Le/a/f/y/c;

.field public final k:Le/a/b0/e/f;

.field public final l:Le/a/f/q;

.field public final m:Le/a/f/y/v;

.field public final n:Le/a/f/w/c;

.field public final o:Le/a/f/w/a;

.field public final p:Le/a/f/z/m0/a;

.field public final q:Le/a/f/z/b;

.field public final r:Le/a/p5/c;

.field public final s:Le/a/l/p2/v0;

.field public final t:Le/a/k/h;

.field public final u:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/y/c;Le/a/b0/e/f;Le/a/f/q;Le/a/f/y/v;Le/a/f/w/c;Le/a/f/w/a;Le/a/f/z/m0/a;Le/a/f/z/b;Le/a/p5/c;Le/a/l/p2/v0;Le/a/k/h;Ls1/w/f;)V
    .locals 1
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ongoingCallHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsRepository"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenProfilePictureHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p12}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/n;->j:Le/a/f/y/c;

    iput-object p2, p0, Le/a/f/a/n;->k:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/f/a/n;->l:Le/a/f/q;

    iput-object p4, p0, Le/a/f/a/n;->m:Le/a/f/y/v;

    iput-object p5, p0, Le/a/f/a/n;->n:Le/a/f/w/c;

    iput-object p6, p0, Le/a/f/a/n;->o:Le/a/f/w/a;

    iput-object p7, p0, Le/a/f/a/n;->p:Le/a/f/z/m0/a;

    iput-object p8, p0, Le/a/f/a/n;->q:Le/a/f/z/b;

    iput-object p9, p0, Le/a/f/a/n;->r:Le/a/p5/c;

    iput-object p10, p0, Le/a/f/a/n;->s:Le/a/l/p2/v0;

    iput-object p11, p0, Le/a/f/a/n;->t:Le/a/k/h;

    iput-object p12, p0, Le/a/f/a/n;->u:Ls1/w/f;

    const-string p1, "InCallUIPresenter-"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/f/a/n;->d:Ljava/lang/String;

    return-void
.end method

.method public static final Ij(Le/a/f/a/n;Le/a/k/a/k/l;Le/a/f/a/g;)Le/a/f/a/m;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {v0}, Le/a/f/a/m;->r1()V

    .line 3
    sget-object v2, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Le/a/f/a/m;->r2(Le/a/k/a/k/l;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/f/a/n;->h:Lq3/a/p1;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Le/a/f/a/m;->p1()Lq3/a/x2/i1;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v2, Le/a/f/a/s;

    invoke-direct {v2, p0, p2, v1}, Le/a/f/a/s;-><init>(Le/a/f/a/n;Le/a/f/a/g;Ls1/w/d;)V

    .line 7
    new-instance p2, Lq3/a/x2/u0;

    invoke-direct {p2, p1, v2}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 8
    invoke-static {p2, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Le/a/f/a/n;->h:Lq3/a/p1;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/a/f/a/n;->Lj()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final Jj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/f/a/m;->P0(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_1

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/f/a/m;->e(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_2

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_divider_partner_color:I

    invoke-interface {v0, v1}, Le/a/f/a/m;->x0(I)V

    :cond_2
    return-void
.end method

.method public final Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/f/a/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/a/n$a;

    iget v1, v0, Le/a/f/a/n$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/n$a;

    invoke-direct {v0, p0, p2}, Le/a/f/a/n$a;-><init>(Le/a/f/a/n;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/a/n$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/a/n$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/a/n$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/n;

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
    invoke-static {p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 5
    iget-boolean p2, p1, Le/a/f/a/g;->k:Z

    if-nez p2, :cond_a

    .line 6
    iget-object p2, p1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-nez p2, :cond_a

    .line 7
    iget-object p2, p0, Le/a/f/a/n;->q:Le/a/f/z/b;

    iget-object v2, p0, Le/a/f/a/n;->j:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->c()Z

    move-result v2

    iput-object p0, v0, Le/a/f/a/n$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/f/a/n$a;->e:I

    check-cast p2, Le/a/f/z/c;

    invoke-virtual {p2, p1, v2, v0}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    .line 8
    iget-boolean p2, p1, Le/a/f/a/n;->i:Z

    if-eqz p2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/m;

    if-eqz p2, :cond_5

    sget v0, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    invoke-interface {p2, v0}, Le/a/f/a/m;->P0(I)V

    .line 10
    :cond_5
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/m;

    if-eqz p2, :cond_6

    sget v0, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    invoke-interface {p2, v0}, Le/a/f/a/m;->e(I)V

    .line 11
    :cond_6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_b

    sget p2, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    invoke-interface {p1, p2}, Le/a/f/a/m;->x0(I)V

    goto :goto_3

    .line 12
    :cond_7
    :goto_2
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/m;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Le/a/f/a/m;->r5()V

    .line 13
    :cond_8
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/m;

    if-eqz p2, :cond_9

    sget v0, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {p2, v0}, Le/a/f/a/m;->e(I)V

    .line 14
    :cond_9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_b

    sget p2, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {p1, p2}, Le/a/f/a/m;->x0(I)V

    goto :goto_3

    .line 15
    :cond_a
    invoke-virtual {p0}, Le/a/f/a/n;->Jj()V

    .line 16
    :cond_b
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Lj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/m;->k2()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/a/n;->f:Lq3/a/p1;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/f/a/m;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/f/a/n;->j:Le/a/f/y/c;

    iget-object v0, p0, Le/a/f/a/n;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Le/a/f/y/c;->p(Ljava/lang/String;Le/a/f/y/b;)V

    .line 5
    iget-object p1, p0, Le/a/f/a/n;->k:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget p1, Lcom/truecaller/incallui/R$drawable;->logo_white_uk:I

    goto :goto_0

    .line 7
    :cond_0
    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_truecaller_logo_white:I

    .line 8
    :goto_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/f/a/m;->w(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/f/a/n;->s:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/f/a/n;->l:Le/a/f/q;

    invoke-virtual {p1}, Le/a/f/q;->a()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Le/a/f/a/n;->k:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_tc_premium_logo_uk:I

    goto :goto_1

    .line 12
    :cond_2
    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_tc_premium_logo:I

    .line 13
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/f/a/m;->G0()V

    .line 14
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Le/a/f/a/m;->X0(I)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/f/a/m;->v0()V

    .line 16
    :cond_5
    :goto_2
    iget-object p1, p0, Le/a/f/a/n;->l:Le/a/f/q;

    invoke-virtual {p1}, Le/a/f/q;->a()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 17
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Le/a/f/a/m;->y2(I)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    .line 18
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/m;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/f/a/m;->O1()V

    :cond_8
    :goto_4
    return-void
.end method

.method public Z7(Le/a/f/z/d0;)V
    .locals 1

    const-string v0, "inCallUiAcsData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/f/a/n;->j:Le/a/f/y/c;

    iget-object v1, p0, Le/a/f/a/n;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Le/a/f/y/c;->b(Ljava/lang/String;Le/a/f/y/b;)V

    return-void
.end method

.method public od()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/a/n;->o:Le/a/f/w/a;

    check-cast v0, Le/a/f/w/b;

    .line 2
    iget-object v0, v0, Le/a/f/w/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Le/a/f/a/n;->e:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/m;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/m;->t()V

    :cond_1
    return-void
.end method

.method public sc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zj(Le/a/f/y/a;)V
    .locals 0

    return-void
.end method
