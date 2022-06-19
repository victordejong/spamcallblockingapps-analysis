.class public final Le/a/f/a/a/i;
.super Le/a/f/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f/a/f<",
        "Le/a/f/a/a/g;",
        ">;",
        "Le/a/f/a/a/f;"
    }
.end annotation


# instance fields
.field public i:Lq3/a/p1;

.field public final j:Ljava/lang/String;

.field public k:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public volatile n:Z

.field public volatile o:Z

.field public final p:Le/a/f/y/c;

.field public final q:Le/a/f/w/c;

.field public final r:Le/a/f/z/m0/a;

.field public final s:Le/a/f/z/b;

.field public final t:Le/a/k/h;

.field public final u:Ls1/w/f;

.field public final v:Le/a/f/t;

.field public final w:Le/a/f/z/a0;

.field public final x:Le/a/u3/g;

.field public final y:Le/a/o/c;


# direct methods
.method public constructor <init>(Le/a/f/y/c;Le/a/e4/p;Le/a/f/w/c;Le/a/f/z/m0/a;Le/a/f/z/b;Le/a/k/h;Ls1/w/f;Le/a/f/t;Le/a/f/z/a0;Le/a/u3/g;Le/a/f/z/m;Le/a/o/c;)V
    .locals 1
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenProfilePictureHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezoneHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trueContextPresenterProvider"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerLabelFactory"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p7, p2, p11, p9}, Le/a/f/a/f;-><init>(Ls1/w/f;Le/a/e4/p;Le/a/f/z/m;Le/a/f/z/a0;)V

    iput-object p1, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    iput-object p3, p0, Le/a/f/a/a/i;->q:Le/a/f/w/c;

    iput-object p4, p0, Le/a/f/a/a/i;->r:Le/a/f/z/m0/a;

    iput-object p5, p0, Le/a/f/a/a/i;->s:Le/a/f/z/b;

    iput-object p6, p0, Le/a/f/a/a/i;->t:Le/a/k/h;

    iput-object p7, p0, Le/a/f/a/a/i;->u:Ls1/w/f;

    iput-object p8, p0, Le/a/f/a/a/i;->v:Le/a/f/t;

    iput-object p9, p0, Le/a/f/a/a/i;->w:Le/a/f/z/a0;

    iput-object p10, p0, Le/a/f/a/a/i;->x:Le/a/u3/g;

    iput-object p12, p0, Le/a/f/a/a/i;->y:Le/a/o/c;

    const-string p1, "IncomingCallPresenter-"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/f/a/a/i;->j:Ljava/lang/String;

    return-void
.end method

.method public static Vj(Le/a/f/a/a/i;Ljava/lang/String;ZZI)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p3, v0

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_4

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_5

    .line 3
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/f/a/a/g;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Le/a/f/a/a/g;->qd(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_4
    :goto_0
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/f/a/a/g;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Le/a/f/a/a/g;->b9()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final Pj(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/e;->Y3()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/e;->v5()V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/f/a/e;->M4()V

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/f/a/a/g;->f5()V

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/f/a/a/g;->J6()V

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_5

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_gold_gradient_start_color:I

    sget v2, Lcom/truecaller/incallui/R$drawable;->background_incallui_tag_gold:I

    invoke-interface {v0, v1, v2}, Le/a/f/a/a/g;->Zq(II)V

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_6

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_gold_gradient_start_color:I

    sget v2, Lcom/truecaller/incallui/R$drawable;->background_incallui_tag_gold:I

    invoke-interface {v0, v1, v2}, Le/a/f/a/a/g;->Cp(II)V

    :cond_6
    if-nez p1, :cond_b

    .line 8
    iget-boolean p1, p0, Le/a/f/a/a/i;->o:Z

    if-eqz p1, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    sget p1, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    .line 10
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Le/a/f/a/a/g;->Y6(I)V

    .line 11
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Le/a/f/a/e;->i4(I)V

    .line 12
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Le/a/f/a/e;->i1(I)V

    .line 13
    :cond_a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Le/a/f/a/e;->Hy(I)V

    goto :goto_1

    .line 14
    :cond_b
    :goto_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/f/a/a/g;->yu()V

    .line 15
    :cond_c
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Le/a/f/a/e;->Nl()V

    .line 16
    :cond_d
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/f/a/e;->Ur()V

    .line 17
    :cond_e
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Le/a/f/a/e;->sz()V

    :cond_f
    :goto_1
    return-void
.end method

.method public final Qj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/f/a/a/i$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/f/a/a/i$a;

    iget v2, v1, Le/a/f/a/a/i$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/a/i$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/a/i$a;

    invoke-direct {v1, p0, p2}, Le/a/f/a/a/i$a;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/f/a/a/i$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/a/i$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/f/a/a/i$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/i;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/f/a/a/i$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/i;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Le/a/m0/a1$k;->L0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v0

    .line 5
    :cond_4
    invoke-static {p1}, Le/a/m0/a1$k;->z0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6
    iget-object p2, p0, Le/a/f/a/a/i;->s:Le/a/f/z/b;

    .line 7
    iget-object v3, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->c()Z

    move-result v3

    iput-object p0, v1, Le/a/f/a/a/i$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/f/a/a/i$a;->e:I

    .line 8
    check-cast p2, Le/a/f/z/c;

    invoke-virtual {p2, p1, v3, v1}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    return-object v2

    :cond_5
    move-object p1, p0

    .line 9
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Le/a/f/a/a/i;->Pj(Z)V

    goto :goto_3

    .line 11
    :cond_6
    iget-boolean p2, p1, Le/a/f/a/g;->k:Z

    if-eqz p2, :cond_7

    return-object v0

    .line 12
    :cond_7
    iget-object p2, p1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz p2, :cond_8

    return-object v0

    .line 13
    :cond_8
    iget-boolean p2, p1, Le/a/f/a/g;->u:Z

    if-eqz p2, :cond_9

    .line 14
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_c

    sget p2, Lcom/truecaller/incallui/R$color;->credPrimaryColor:I

    invoke-interface {p1, p2}, Le/a/f/a/e;->p0(I)V

    goto :goto_3

    .line 15
    :cond_9
    invoke-static {p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 16
    iget-object p2, p0, Le/a/f/a/a/i;->s:Le/a/f/z/b;

    .line 17
    iget-object v3, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->c()Z

    move-result v3

    iput-object p0, v1, Le/a/f/a/a/i$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/a/i$a;->e:I

    .line 18
    check-cast p2, Le/a/f/z/c;

    invoke-virtual {p2, p1, v3, v1}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_a

    return-object v2

    :cond_a
    move-object p1, p0

    .line 19
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Le/a/f/a/a/i;->Pj(Z)V

    goto :goto_3

    .line 21
    :cond_b
    iget-boolean p1, p1, Le/a/f/a/g;->o:Z

    if-eqz p1, :cond_c

    .line 22
    invoke-virtual {p0}, Le/a/f/a/a/i;->Rj()V

    :cond_c
    :goto_3
    return-object v0
.end method

.method public final Rj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_unknown_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->p0(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1

    sget v1, Lcom/truecaller/incallui/R$dimen;->incallui_unknown_name_font_size:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->S0(I)V

    :cond_1
    return-void
.end method

.method public final Sj(Ls1/w/d;)Ljava/lang/Object;
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/f/a/a/i$b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/f/a/a/i$b;

    iget v2, v1, Le/a/f/a/a/i$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/a/i$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/a/i$b;

    invoke-direct {v1, p0, p1}, Le/a/f/a/a/i$b;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/f/a/a/i$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/a/i$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/f/a/a/i$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/i;

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
    invoke-virtual {p0}, Le/a/f/a/a/i;->ck()Le/a/f/w/f$b;

    move-result-object p1

    .line 5
    instance-of v3, p1, Le/a/f/w/f$b;

    if-eqz v3, :cond_5

    .line 6
    iget-object v3, p0, Le/a/f/a/a/i;->s:Le/a/f/z/b;

    .line 7
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 8
    iget-object v5, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v5}, Le/a/f/y/c;->c()Z

    move-result v5

    iput-object p0, v1, Le/a/f/a/a/i$b;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/a/i$b;->e:I

    check-cast v3, Le/a/f/z/c;

    invoke-virtual {v3, p1, v5, v1}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 9
    :cond_4
    invoke-virtual {v1}, Le/a/f/a/a/i;->dk()V

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p0}, Le/a/f/a/a/i;->dk()V

    :goto_2
    return-object v0
.end method

.method public final Tj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/f/a/a/i$c;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/f/a/a/i$c;

    iget v2, v1, Le/a/f/a/a/i$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/a/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/a/i$c;

    invoke-direct {v1, p0, p2}, Le/a/f/a/a/i$c;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/f/a/a/i$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/a/i$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/f/a/a/i$c;->k:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/i;

    iget-object v2, v1, Le/a/f/a/a/i$c;->j:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/c2;

    iget-object v3, v1, Le/a/f/a/a/i$c;->i:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/data/entity/Contact;

    iget-object v5, v1, Le/a/f/a/a/i$c;->h:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/g;

    iget-object v1, v1, Le/a/f/a/a/i$c;->g:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/i;

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
    iget-object p2, p0, Le/a/f/a/a/i;->x:Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->C()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object v3, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_6

    .line 6
    iget-object p2, p0, Le/a/f/a/a/i;->t:Le/a/k/h;

    invoke-interface {p2}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object p2

    .line 7
    iput-object p0, v1, Le/a/f/a/a/i$c;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/f/a/a/i$c;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/a/i$c;->i:Ljava/lang/Object;

    iput-object p2, v1, Le/a/f/a/a/i$c;->j:Ljava/lang/Object;

    iput-object p0, v1, Le/a/f/a/a/i$c;->k:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/a/i$c;->e:I

    invoke-interface {p2, v3, v1}, Le/a/k/c/c2;->d(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v5, p1

    move-object v2, p2

    move-object p2, v1

    move-object p1, p0

    move-object v1, p1

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v4

    iput-boolean p2, p1, Le/a/f/a/a/i;->l:Z

    .line 8
    iget-boolean p1, v1, Le/a/f/a/a/i;->l:Z

    if-nez p1, :cond_5

    return-object v0

    .line 9
    :cond_5
    iget-object p1, v5, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 10
    invoke-interface {v2, v3, p1}, Le/a/k/c/c2;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11
    iget-object p2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_6

    .line 12
    invoke-interface {p2}, Le/a/f/a/e;->Yn()V

    .line 13
    invoke-interface {p2}, Le/a/f/a/a/g;->M0()V

    .line 14
    sget-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALLUI_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {v1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Le/a/f/a/a/g;->V1(Le/a/k/a/k/l;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2}, Le/a/f/a/a/g;->jd()V

    :cond_6
    return-object v0
.end method

.method public final Uj(Ljava/lang/String;ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 2
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Le/a/f/a/a/g;->k9(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final Wj(Le/a/b0/p/c;ZZ)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2}, Le/a/f/a/a/g;->P0()V

    .line 3
    iget-object p3, p1, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 5
    invoke-interface {p2, p3, p1}, Le/a/f/a/a/g;->Bz(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2}, Le/a/f/a/a/g;->b5()V

    .line 8
    iget-object p3, p1, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 10
    invoke-interface {p2, p3, p1}, Le/a/f/a/a/g;->A2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Xj(Lcom/truecaller/data/entity/Contact;)V
    .locals 6

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/f/a/e;->z()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Le/a/f/a/a/i$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/f/a/a/i$d;-><init>(Le/a/f/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/f/a/a/g;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    iget-object v0, p0, Le/a/f/a/a/i;->j:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Le/a/f/y/c;->p(Ljava/lang/String;Le/a/f/y/b;)V

    const/16 p1, 0xa

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    .line 6
    iget-object p1, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/f/a/a/g;->M2()V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/f/a/a/g;->nv()V

    .line 9
    :cond_2
    :goto_1
    iget-object p1, p0, Le/a/f/a/a/i;->r:Le/a/f/z/m0/a;

    iget-object v1, p0, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Le/a/f/z/m0/a;->f(Lq3/a/w2/h;)V

    return-void

    :cond_3
    const-string p1, "uiEventsChannel"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final Yj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/f/a/a/i$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/a/a/i$e;

    iget v1, v0, Le/a/f/a/a/i$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/a/i$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/a/i$e;

    invoke-direct {v0, p0, p2}, Le/a/f/a/a/i$e;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/a/a/i$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/a/a/i$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/a/a/i$e;->h:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/g;

    iget-object v0, v0, Le/a/f/a/a/i$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/i;

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
    iget-object p2, p0, Le/a/f/a/a/i;->s:Le/a/f/z/b;

    iget-object v2, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->c()Z

    move-result v2

    iput-object p0, v0, Le/a/f/a/a/i$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/f/a/a/i$e;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/f/a/a/i$e;->e:I

    check-cast p2, Le/a/f/z/c;

    invoke-virtual {p2, p1, v2, v0}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    iget-boolean p2, v0, Le/a/f/a/a/i;->o:Z

    if-eqz p2, :cond_8

    .line 5
    :cond_4
    iget-boolean p2, p1, Le/a/f/a/g;->u:Z

    if-eqz p2, :cond_5

    .line 6
    sget p1, Lcom/truecaller/incallui/R$drawable;->cred_incall_badge:I

    .line 7
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-static {p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_tcx_badge_gold_24dp:I

    .line 9
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    .line 10
    :cond_6
    invoke-static {p1}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_premium_user_badge_24dp:I

    .line 11
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_8

    .line 12
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/f/a/e;->EA(I)V

    .line 13
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
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

.method public final Zj(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/f/a/a/i$f;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/f/a/a/i$f;

    iget v2, v1, Le/a/f/a/a/i$f;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/a/i$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/a/i$f;

    invoke-direct {v1, p0, p3}, Le/a/f/a/a/i$f;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    :goto_0
    move-object v6, v1

    iget-object p3, v6, Le/a/f/a/a/i$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v6, Le/a/f/a/a/i$f;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v10, :cond_1

    iget-object p1, v6, Le/a/f/a/a/i$f;->h:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/g;

    iget-object p2, v6, Le/a/f/a/a/i$f;->g:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/i;

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
    iget-object p3, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    if-eqz p3, :cond_8

    .line 5
    iget-object v2, p0, Le/a/f/a/a/i;->t:Le/a/k/h;

    invoke-interface {v2}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v2

    .line 6
    iget-object v3, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 7
    invoke-interface {v2, p3, v3}, Le/a/k/c/c2;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object v2

    instance-of v3, v2, Le/a/k/a/k/l$c;

    if-nez v3, :cond_3

    move-object v2, v9

    :cond_3
    check-cast v2, Le/a/k/a/k/l$c;

    if-eqz v2, :cond_4

    .line 8
    iget-object p1, p0, Le/a/f/a/a/i;->t:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->j()Lq3/a/w2/h;

    move-result-object p1

    .line 9
    iget-object v1, v2, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    .line 10
    new-instance v2, Le/a/f/a/a/m;

    invoke-direct {v2, p0, p3, p2, v9}, Le/a/f/a/a/m;-><init>(Le/a/f/a/a/i;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V

    const-string p2, "$this$subscribeVideoCallerIdPlaying"

    .line 11
    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "downloadChannel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "callback"

    invoke-static {v2, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p2, Le/a/k/c/x0;

    invoke-direct {p2, v1, v2, v9}, Le/a/k/c/x0;-><init>(Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)V

    invoke-static {p0, p1, p2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    goto :goto_2

    .line 13
    :cond_4
    iget-object p2, p0, Le/a/f/a/a/i;->t:Le/a/k/h;

    invoke-interface {p2}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v2

    invoke-virtual {p3}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v3

    .line 14
    iget-object v4, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 15
    iput-object p0, v6, Le/a/f/a/a/i$f;->g:Ljava/lang/Object;

    iput-object p1, v6, Le/a/f/a/a/i$f;->h:Ljava/lang/Object;

    iput v10, v6, Le/a/f/a/a/i$f;->e:I

    invoke-static/range {v2 .. v8}, Le/a/p5/s0/g;->v1(Le/a/k/c/c2;ZLjava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 16
    iget-object p3, p2, Le/a/f/a/a/i;->i:Lq3/a/p1;

    if-eqz p3, :cond_6

    invoke-static {p3, v9, v10, v9}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 17
    :cond_6
    iget-object p3, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/f/a/a/g;

    if-eqz p3, :cond_7

    .line 18
    invoke-interface {p3}, Le/a/f/a/e;->getVideoPlayingState()Lq3/a/x2/i1;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance v1, Le/a/f/a/a/n;

    invoke-direct {v1, p2, p1, v9}, Le/a/f/a/a/n;-><init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V

    .line 19
    new-instance p1, Lq3/a/x2/u0;

    invoke-direct {p1, p3, v1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 20
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object v9

    :cond_7
    iput-object v9, p2, Le/a/f/a/a/i;->i:Lq3/a/p1;

    :cond_8
    :goto_2
    return-object v0
.end method

.method public ak(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v3, Le/a/f/a/a/i$g;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/f/a/a/i$g;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final bk()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->p0(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1

    sget v1, Lcom/truecaller/incallui/R$dimen;->incallui_name_font_size:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->S0(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_2

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->F1(I)V

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_3

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/a/g;->s4(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_4

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/a/g;->Wg(I)V

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_5

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    sget v2, Lcom/truecaller/incallui/R$drawable;->background_tcx_tag_dark:I

    invoke-interface {v0, v1, v2}, Le/a/f/a/a/g;->Zq(II)V

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_6

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    sget v2, Lcom/truecaller/incallui/R$drawable;->background_tcx_tag_dark:I

    invoke-interface {v0, v1, v2}, Le/a/f/a/a/g;->Cp(II)V

    .line 8
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_7

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/a/g;->Y6(I)V

    .line 9
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_8

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i4(I)V

    .line 10
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_9

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i1(I)V

    .line 11
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_a

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->Hy(I)V

    :cond_a
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/a/g;->M0()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    iget-object v1, p0, Le/a/f/a/a/i;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Le/a/f/y/c;->b(Ljava/lang/String;Le/a/f/y/b;)V

    .line 3
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 4
    iget-object v0, p0, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, v1}, Lq3/a/w2/h;->d(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_1
    const-string v0, "uiEventsChannel"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final ck()Le/a/f/w/f$b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/a/a/i;->q:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/f/w/f$b;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/f/w/f$b;

    return-object v0
.end method

.method public final dk()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/g;

    if-eqz v1, :cond_0

    new-instance v15, Le/a/f/z/k0;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3ffd

    move-object v2, v15

    move-object/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    move-object/from16 v2, v19

    invoke-interface {v1, v2}, Le/a/f/a/e;->C3(Le/a/f/z/k0;)V

    sget-object v1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/g;

    if-eqz v1, :cond_2

    new-instance v15, Le/a/f/z/k0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3fff

    move-object v2, v15

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Le/a/f/a/e;->C3(Le/a/f/z/k0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final ek(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Ls1/s;->a:Ls1/s;

    instance-of v4, v2, Le/a/f/a/a/i$h;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/f/a/a/i$h;

    iget v5, v4, Le/a/f/a/a/i$h;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/f/a/a/i$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/f/a/a/i$h;

    invoke-direct {v4, v0, v2}, Le/a/f/a/a/i$h;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    :goto_0
    move-object v10, v4

    iget-object v2, v10, Le/a/f/a/a/i$h;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v10, Le/a/f/a/a/i$h;->e:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1
    iget-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/g;

    iget-object v5, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/a/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    iget-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/g;

    iget-object v5, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/a/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    iget-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/g;

    iget-object v5, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/a/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    iget-boolean v1, v10, Le/a/f/a/a/i$h;->j:Z

    iget-object v5, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/g;

    iget-object v7, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    check-cast v7, Le/a/f/a/a/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-boolean v1, v10, Le/a/f/a/a/i$h;->j:Z

    iget-object v5, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/g;

    iget-object v7, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    check-cast v7, Le/a/f/a/a/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v1, v10, Le/a/f/a/a/i$h;->i:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/i;

    iget-object v5, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/g;

    iget-object v7, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    check-cast v7, Le/a/f/a/a/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v17, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, v17

    goto :goto_1

    :pswitch_7
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/f/a/a/i;->s:Le/a/f/z/b;

    iget-object v5, v0, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v5}, Le/a/f/y/c;->c()Z

    move-result v5

    iput-object v0, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    iput-object v0, v10, Le/a/f/a/a/i$h;->i:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v10, Le/a/f/a/a/i$h;->e:I

    check-cast v2, Le/a/f/z/c;

    invoke-virtual {v2, v1, v5, v10}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :cond_1
    move-object v7, v0

    move-object v5, v2

    move-object v2, v7

    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Le/a/f/a/a/i;->m:Z

    .line 5
    invoke-virtual {v7, v1}, Le/a/f/a/f;->Oj(Le/a/f/a/g;)Z

    move-result v2

    .line 6
    invoke-virtual {v7, v1}, Le/a/f/a/f;->Lj(Le/a/f/a/g;)V

    .line 7
    iget-boolean v5, v7, Le/a/f/a/a/i;->m:Z

    invoke-virtual {v7, v1, v5}, Le/a/f/a/f;->Ij(Le/a/f/a/g;Z)V

    .line 8
    invoke-static {v1}, Le/a/m0/a1$k;->L0(Le/a/f/a/g;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/truecaller/incallui/R$color;->tcx_verifiedBusinessGreen:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 9
    :cond_2
    invoke-static {v1}, Le/a/m0/a1$k;->z0(Le/a/f/a/g;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v5, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 10
    :cond_3
    iget-boolean v5, v1, Le/a/f/a/g;->k:Z

    if-nez v5, :cond_a

    .line 11
    iget-object v5, v1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v5, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-boolean v5, v1, Le/a/f/a/g;->u:Z

    if-eqz v5, :cond_5

    .line 13
    sget v5, Lcom/truecaller/incallui/R$color;->credCallRippleColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 14
    :cond_5
    invoke-static {v1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 15
    :cond_6
    iget-boolean v5, v1, Le/a/f/a/g;->r:Z

    if-eqz v5, :cond_7

    .line 16
    sget v5, Lcom/truecaller/incallui/R$color;->incallui_priority_color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 17
    :cond_7
    iget-boolean v5, v1, Le/a/f/a/g;->t:Z

    if-eqz v5, :cond_8

    .line 18
    sget v5, Lcom/truecaller/incallui/R$color;->tcx_verifiedBusinessGreen:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    .line 19
    :cond_8
    iget-boolean v5, v1, Le/a/f/a/g;->p:Z

    if-nez v5, :cond_9

    .line 20
    iget-boolean v5, v1, Le/a/f/a/g;->o:Z

    if-nez v5, :cond_9

    .line 21
    sget v5, Lcom/truecaller/incallui/R$color;->incallui_identified_color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_9
    move-object v5, v6

    goto :goto_3

    .line 22
    :cond_a
    :goto_2
    sget v5, Lcom/truecaller/incallui/R$color;->incallui_spam_color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_b

    .line 23
    iget-object v8, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v8, Le/a/f/a/a/g;

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v8, v5}, Le/a/f/a/a/g;->L0(I)V

    .line 24
    :cond_b
    iget-object v5, v1, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 25
    iget-boolean v8, v1, Le/a/f/a/g;->o:Z

    if-eqz v8, :cond_c

    .line 26
    iget-object v5, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/a/g;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Le/a/f/a/e;->ic()V

    goto :goto_4

    .line 27
    :cond_c
    iget-object v8, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v8, Le/a/f/a/a/g;

    if-eqz v8, :cond_d

    invoke-interface {v8, v5}, Le/a/f/a/e;->setProfileName(Ljava/lang/String;)V

    .line 28
    :cond_d
    new-instance v14, Le/a/f/a/a/k;

    invoke-direct {v14, v7, v6}, Le/a/f/a/a/k;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v11, v7

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 29
    :cond_e
    :goto_4
    iget-boolean v5, v1, Le/a/f/a/g;->q:Z

    if-eqz v5, :cond_f

    .line 30
    iget-object v5, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/a/g;

    if-eqz v5, :cond_f

    sget v8, Lcom/truecaller/incallui/R$drawable;->ic_tcx_verified_badge:I

    invoke-interface {v5, v8}, Le/a/f/a/e;->EA(I)V

    .line 31
    :cond_f
    iput-object v7, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    iput-object v6, v10, Le/a/f/a/a/i$h;->i:Ljava/lang/Object;

    iput-boolean v2, v10, Le/a/f/a/a/i$h;->j:Z

    const/4 v5, 0x2

    iput v5, v10, Le/a/f/a/a/i$h;->e:I

    invoke-virtual {v7, v1, v10}, Le/a/f/a/a/i;->Yj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_10

    return-object v4

    :cond_10
    move-object v5, v1

    move v1, v2

    .line 32
    :goto_5
    invoke-virtual {v7, v5}, Le/a/f/a/f;->Jj(Le/a/f/a/g;)V

    .line 33
    iput-object v7, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v5, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    iput-boolean v1, v10, Le/a/f/a/a/i$h;->j:Z

    const/4 v2, 0x3

    iput v2, v10, Le/a/f/a/a/i$h;->e:I

    invoke-virtual {v7, v5, v10}, Le/a/f/a/f;->Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_11

    return-object v4

    .line 34
    :cond_11
    :goto_6
    iget-object v2, v5, Le/a/f/a/g;->h:Ljava/lang/String;

    .line 35
    iget-boolean v8, v5, Le/a/f/a/g;->p:Z

    .line 36
    iget-boolean v9, v5, Le/a/f/a/g;->s:Z

    .line 37
    invoke-virtual {v7, v2, v8, v9}, Le/a/f/a/a/i;->Uj(Ljava/lang/String;ZZ)V

    .line 38
    iget-object v2, v5, Le/a/f/a/g;->g:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 39
    invoke-static {v7, v2, v1, v8, v9}, Le/a/f/a/a/i;->Vj(Le/a/f/a/a/i;Ljava/lang/String;ZZI)V

    .line 40
    iget-object v2, v5, Le/a/f/a/g;->j:Le/a/b0/p/c;

    .line 41
    iget-boolean v8, v5, Le/a/f/a/g;->p:Z

    .line 42
    invoke-virtual {v7, v2, v8, v1}, Le/a/f/a/a/i;->Wj(Le/a/b0/p/c;ZZ)V

    .line 43
    iput-object v7, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v5, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    iput v9, v10, Le/a/f/a/a/i$h;->e:I

    invoke-virtual {v7, v5, v10}, Le/a/f/a/a/i;->Qj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_12

    return-object v4

    :cond_12
    move-object v1, v5

    move-object v5, v7

    .line 44
    :goto_7
    iget-object v2, v5, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/a/g;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Le/a/f/a/e;->r1()V

    .line 45
    :cond_13
    iget-object v2, v1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 46
    invoke-virtual {v5, v2}, Le/a/f/a/a/i;->Xj(Lcom/truecaller/data/entity/Contact;)V

    .line 47
    iget-boolean v2, v5, Le/a/f/a/a/i;->m:Z

    iput-object v5, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v10, Le/a/f/a/a/i$h;->e:I

    invoke-virtual {v5, v1, v2, v10}, Le/a/f/a/a/i;->Zj(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    return-object v4

    .line 48
    :cond_14
    :goto_8
    iput-object v5, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v1, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v10, Le/a/f/a/a/i$h;->e:I

    invoke-virtual {v5, v1, v10}, Le/a/f/a/a/i;->Tj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_15

    return-object v4

    .line 49
    :cond_15
    :goto_9
    iget-object v2, v5, Le/a/f/a/a/i;->r:Le/a/f/z/m0/a;

    const-string v7, "FullCallerID"

    invoke-interface {v2, v1, v7}, Le/a/f/z/m0/a;->j(Le/a/f/a/g;Ljava/lang/String;)V

    .line 50
    iput-object v6, v10, Le/a/f/a/a/i$h;->g:Ljava/lang/Object;

    iput-object v6, v10, Le/a/f/a/a/i$h;->h:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, v10, Le/a/f/a/a/i$h;->e:I

    .line 51
    iget-object v2, v5, Le/a/f/a/a/i;->y:Le/a/o/c;

    invoke-interface {v2}, Le/a/o/c;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 52
    iget-object v2, v1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v2, :cond_16

    goto :goto_a

    .line 53
    :cond_16
    iget-object v2, v5, Le/a/f/a/a/i;->y:Le/a/o/c;

    .line 54
    invoke-interface {v2}, Le/a/o/c;->w()Lq3/a/x2/i1;

    move-result-object v2

    .line 55
    new-instance v7, Le/a/f/a/a/l;

    invoke-direct {v7, v5, v1, v6}, Le/a/f/a/a/l;-><init>(Le/a/f/a/a/i;Le/a/f/a/g;Ls1/w/d;)V

    .line 56
    new-instance v1, Lq3/a/x2/u0;

    invoke-direct {v1, v2, v7}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 57
    invoke-static {v1, v5}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object v1

    if-ne v1, v4, :cond_18

    goto :goto_b

    .line 58
    :cond_17
    :goto_a
    iget-boolean v7, v5, Le/a/f/a/a/i;->m:Z

    iget-boolean v8, v5, Le/a/f/a/a/i;->n:Z

    const/4 v9, 0x0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Le/a/f/a/f;->Mj(Le/a/f/a/g;ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_18

    goto :goto_b

    :cond_18
    move-object v1, v3

    :goto_b
    if-ne v1, v4, :cond_19

    return-object v4

    :cond_19
    :goto_c
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public od()V
    .locals 0

    return-void
.end method

.method public q7(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/a/a/i;->q:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/f/w/f$b;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/f/w/f$b;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, v0, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/f/a/a/g;->b9()V

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/f/a/a/g;->w5()V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/a/a/g;->P0()V

    .line 6
    :cond_3
    invoke-static {v0}, Le/a/m0/a1$k;->K0(Le/a/f/a/g;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/f/a/a/g;->b5()V

    .line 8
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/f/a/e;->z()V

    goto :goto_0

    .line 9
    :cond_5
    iget-object p1, v0, Le/a/f/a/g;->g:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 10
    invoke-static {p0, p1, v2, v2, v1}, Le/a/f/a/a/i;->Vj(Le/a/f/a/a/i;Ljava/lang/String;ZZI)V

    .line 11
    iget-object p1, v0, Le/a/f/a/g;->h:Ljava/lang/String;

    .line 12
    iget-boolean v1, v0, Le/a/f/a/g;->p:Z

    .line 13
    iget-boolean v2, v0, Le/a/f/a/g;->s:Z

    .line 14
    invoke-virtual {p0, p1, v1, v2}, Le/a/f/a/a/i;->Uj(Ljava/lang/String;ZZ)V

    .line 15
    iget-object p1, v0, Le/a/f/a/g;->j:Le/a/b0/p/c;

    .line 16
    iget-boolean v1, v0, Le/a/f/a/g;->p:Z

    .line 17
    invoke-static {v0}, Le/a/m0/a1$k;->K0(Le/a/f/a/g;)Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Le/a/f/a/a/i;->Wj(Le/a/b0/p/c;ZZ)V

    .line 18
    iget-object p1, v0, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 19
    invoke-virtual {p0, p1}, Le/a/f/a/a/i;->Xj(Lcom/truecaller/data/entity/Contact;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public sc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zj(Le/a/f/y/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/f/a/a/g;->M0()V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/f/a/a/i;->y:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->u()V

    .line 3
    iget-boolean p1, p0, Le/a/f/a/a/i;->n:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/f/a/a/g;->zt()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/f/a/a/g;->q()V

    :cond_2
    :goto_0
    return-void
.end method
