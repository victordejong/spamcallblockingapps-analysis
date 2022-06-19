.class public final Le/a/f/a/b/j;
.super Le/a/f/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f/a/f<",
        "Le/a/f/a/b/i;",
        ">;",
        "Le/a/f/a/b/h;"
    }
.end annotation


# instance fields
.field public final A:Le/a/f/p;

.field public final B:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final C:Le/a/k/h;

.field public final i:Ljava/lang/String;

.field public j:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lq3/a/p1;

.field public l:Z

.field public m:I

.field public volatile n:Z

.field public final o:Ls1/w/f;

.field public final p:Le/a/f/y/c;

.field public final q:Le/a/f/y/v;

.field public final r:Le/a/p5/c;

.field public final s:Le/a/p5/c0;

.field public final t:Le/a/f/w/c;

.field public final u:Le/a/f/z/m0/a;

.field public final v:Le/a/f/z/b;

.field public final w:Le/a/f/t;

.field public final x:Le/a/o/c;

.field public final y:Le/a/f/z/c0;

.field public final z:Le/a/f/z/y;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/f/y/c;Le/a/f/y/v;Le/a/p5/c;Le/a/p5/c0;Le/a/f/w/c;Le/a/f/z/m0/a;Le/a/f/z/b;Le/a/f/t;Le/a/o/c;Le/a/f/z/c0;Le/a/f/z/y;Le/a/f/p;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k/h;Le/a/e4/p;Le/a/f/z/m;Le/a/f/z/a0;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ongoingCallHelper"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerInfoRepository"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullScreenProfilePictureHelper"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezoneHelper"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerLabelFactory"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trueContextPresenterProvider"

    move-object/from16 v14, p18

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v13, p16

    .line 1
    invoke-direct {v0, v1, v13, v15, v14}, Le/a/f/a/f;-><init>(Ls1/w/f;Le/a/e4/p;Le/a/f/z/m;Le/a/f/z/a0;)V

    iput-object v1, v0, Le/a/f/a/b/j;->o:Ls1/w/f;

    iput-object v2, v0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    iput-object v3, v0, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    iput-object v4, v0, Le/a/f/a/b/j;->r:Le/a/p5/c;

    iput-object v5, v0, Le/a/f/a/b/j;->s:Le/a/p5/c0;

    iput-object v6, v0, Le/a/f/a/b/j;->t:Le/a/f/w/c;

    iput-object v7, v0, Le/a/f/a/b/j;->u:Le/a/f/z/m0/a;

    iput-object v8, v0, Le/a/f/a/b/j;->v:Le/a/f/z/b;

    iput-object v9, v0, Le/a/f/a/b/j;->w:Le/a/f/t;

    iput-object v10, v0, Le/a/f/a/b/j;->x:Le/a/o/c;

    iput-object v11, v0, Le/a/f/a/b/j;->y:Le/a/f/z/c0;

    iput-object v12, v0, Le/a/f/a/b/j;->z:Le/a/f/z/y;

    move-object/from16 v1, p13

    iput-object v1, v0, Le/a/f/a/b/j;->A:Le/a/f/p;

    move-object/from16 v1, p14

    iput-object v1, v0, Le/a/f/a/b/j;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/f/a/b/j;->C:Le/a/k/h;

    const-string v1, "OngoingCallPresenter-"

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/a/f/a/b/j;->i:Ljava/lang/String;

    .line 3
    sget v1, Lcom/truecaller/incallui/R$color;->incallui_call_status_neutral_color:I

    iput v1, v0, Le/a/f/a/b/j;->m:I

    return-void
.end method

.method public static final Pj(Le/a/f/a/b/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/incallui/R$dimen;->incallui_ongoing_name_font_size:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->S0(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-interface {v0, v1}, Le/a/f/a/e;->setProfileName(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/f/a/e;->G()V

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/f/a/e;->P2()V

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_4

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_gray_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->U0(I)V

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/f/a/e;->T1()V

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/f/a/e;->re()V

    .line 8
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/f/a/e;->z()V

    .line 9
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/f/a/b/i;->M1()V

    .line 10
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le/a/f/a/e;->Xc()V

    .line 11
    :cond_9
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->n()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 12
    :cond_a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Le/a/f/a/b/i;->xv()V

    .line 13
    :cond_b
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Le/a/f/a/b/i;->Tb()V

    .line 14
    :cond_c
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Le/a/f/a/b/i;->wc()V

    .line 15
    :cond_d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Le/a/f/a/b/i;->Cx()V

    .line 16
    :cond_e
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Le/a/f/a/b/i;->dx()V

    .line 17
    :cond_f
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Le/a/f/a/b/i;->Bf()V

    .line 18
    :cond_10
    :goto_0
    sget v0, Lcom/truecaller/incallui/R$color;->incallui_call_status_neutral_color:I

    iput v0, p0, Le/a/f/a/b/j;->m:I

    .line 19
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_11

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_title_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->p0(I)V

    .line 20
    :cond_11
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_12

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->F1(I)V

    .line 21
    :cond_12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_13

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/f/a/b/i;->L4(I)V

    .line 22
    :cond_13
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_14

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/f/a/b/i;->D3(I)V

    .line 23
    :cond_14
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_15

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i4(I)V

    .line 24
    :cond_15
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_16

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i1(I)V

    .line 25
    :cond_16
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/f/a/b/i;

    if-eqz p0, :cond_17

    sget v0, Lcom/truecaller/incallui/R$color;->incallui_white_color:I

    invoke-interface {p0, v0}, Le/a/f/a/e;->Hy(I)V

    :cond_17
    return-void
.end method

.method public static final Qj(Le/a/f/a/b/j;Lcom/truecaller/data/entity/CallContextMessage;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    .line 2
    new-instance v8, Le/a/k/a/j/a$a;

    .line 3
    iget-object p0, p0, Le/a/f/a/b/j;->s:Le/a/p5/c0;

    sget v1, Lcom/truecaller/incallui/R$string;->context_call_outgoing_call_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    aput-object p1, v2, v3

    .line 5
    invoke-interface {p0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "resourceProvider.getStri\u2026llContextMessage.message)"

    invoke-static {v2, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v1, v8

    .line 6
    invoke-direct/range {v1 .. v7}, Le/a/k/a/j/a$a;-><init>(Ljava/lang/String;ZJLe/a/k/a/k/a;I)V

    .line 7
    invoke-interface {v0, v8}, Le/a/f/a/b/i;->Qb(Le/a/k/a/j/a$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final Rj(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/e;->Y3()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/e;->v5()V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/f/a/e;->M4()V

    :cond_2
    if-nez p1, :cond_8

    .line 4
    iget-boolean p1, p0, Le/a/f/a/b/j;->n:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget p1, Lcom/truecaller/themes/R$color;->tcx_goldTextPrimary:I

    .line 6
    iput p1, p0, Le/a/f/a/b/j;->m:I

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Le/a/f/a/b/i;->L4(I)V

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Le/a/f/a/e;->i4(I)V

    .line 9
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Le/a/f/a/b/i;->D3(I)V

    .line 10
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Le/a/f/a/e;->i1(I)V

    .line 11
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Le/a/f/a/e;->Hy(I)V

    goto :goto_1

    :cond_8
    :goto_0
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Le/a/f/a/b/j;->m:I

    .line 13
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/f/a/b/i;->Of()V

    .line 14
    :cond_9
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Le/a/f/a/e;->Nl()V

    .line 15
    :cond_a
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Le/a/f/a/b/i;->Bj()V

    .line 16
    :cond_b
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/f/a/e;->Ur()V

    .line 17
    :cond_c
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Le/a/f/a/e;->sz()V

    :cond_d
    :goto_1
    return-void
.end method

.method public final Sj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v1, p2, Le/a/f/a/b/j$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/f/a/b/j$a;

    iget v2, v1, Le/a/f/a/b/j$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/b/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/b/j$a;

    invoke-direct {v1, p0, p2}, Le/a/f/a/b/j$a;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/f/a/b/j$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/b/j$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/f/a/b/j$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/f/a/b/j$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/j;

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
    iget-object p2, p0, Le/a/f/a/b/j;->v:Le/a/f/z/b;

    .line 7
    iget-object v3, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->c()Z

    move-result v3

    iput-object p0, v1, Le/a/f/a/b/j$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/f/a/b/j$a;->e:I

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
    invoke-virtual {p1, p2}, Le/a/f/a/b/j;->Rj(Z)V

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

    return-object v0

    .line 14
    :cond_9
    invoke-static {p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 15
    iget-object p2, p0, Le/a/f/a/b/j;->v:Le/a/f/z/b;

    .line 16
    iget-object v3, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->c()Z

    move-result v3

    iput-object p0, v1, Le/a/f/a/b/j$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/b/j$a;->e:I

    .line 17
    check-cast p2, Le/a/f/z/c;

    invoke-virtual {p2, p1, v3, v1}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_a

    return-object v2

    :cond_a
    move-object p1, p0

    .line 18
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Le/a/f/a/b/j;->Rj(Z)V

    :cond_b
    :goto_3
    return-object v0
.end method

.method public final Tj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/e;->r1()V

    :cond_0
    return-void
.end method

.method public final Uj(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v1, p1, Le/a/f/a/b/j$b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/f/a/b/j$b;

    iget v2, v1, Le/a/f/a/b/j$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/b/j$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/b/j$b;

    invoke-direct {v1, p0, p1}, Le/a/f/a/b/j$b;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/f/a/b/j$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/b/j$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/f/a/b/j$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/j;

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
    iget-object p1, p0, Le/a/f/a/b/j;->t:Le/a/f/w/c;

    invoke-interface {p1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/w/f;

    .line 5
    instance-of v3, p1, Le/a/f/w/f$b;

    if-eqz v3, :cond_5

    .line 6
    iget-object v3, p0, Le/a/f/a/b/j;->v:Le/a/f/z/b;

    check-cast p1, Le/a/f/w/f$b;

    .line 7
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 8
    iget-object v5, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v5}, Le/a/f/y/c;->c()Z

    move-result v5

    iput-object p0, v1, Le/a/f/a/b/j$b;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/b/j$b;->e:I

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
    invoke-virtual {v1}, Le/a/f/a/b/j;->ck()V

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p0}, Le/a/f/a/b/j;->ck()V

    :goto_2
    return-object v0
.end method

.method public final Vj(Le/a/f/a/g;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Lcom/truecaller/incallui/service/CallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/f/a/b/j$c;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/f/a/b/j$c;

    iget v2, v1, Le/a/f/a/b/j$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/b/j$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/b/j$c;

    invoke-direct {v1, p0, p3}, Le/a/f/a/b/j$c;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/f/a/b/j$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/b/j$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/f/a/b/j$c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v1, Le/a/f/a/b/j$c;->h:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/g;

    iget-object v1, v1, Le/a/f/a/b/j$c;->g:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/j;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget-object p2, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object p2

    invoke-static {p2}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/incallui/service/CallState;

    :goto_1
    const/4 p3, 0x0

    if-eqz p1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    iget-object p1, p0, Le/a/f/a/b/j;->t:Le/a/f/w/c;

    invoke-interface {p1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Le/a/f/w/f$b;

    if-nez v3, :cond_5

    move-object p1, p3

    :cond_5
    check-cast p1, Le/a/f/w/f$b;

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    goto :goto_2

    :cond_6
    move-object p1, p3

    .line 7
    :goto_2
    iget-object v3, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v3

    .line 8
    sget-object v5, Lcom/truecaller/incallui/service/CallState;->STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

    if-ne p2, v5, :cond_c

    if-eqz p1, :cond_c

    if-nez v3, :cond_7

    goto :goto_4

    .line 9
    :cond_7
    iget-object p2, p0, Le/a/f/a/b/j;->x:Le/a/o/c;

    .line 10
    new-instance v11, Lcom/truecaller/contextcall/utils/SecondCallContext$a;

    .line 11
    iget-object v5, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v5}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-boolean v7, p1, Le/a/f/a/g;->k:Z

    .line 13
    invoke-static {p1}, Le/a/m0/a1$k;->K0(Le/a/f/a/g;)Z

    move-result v8

    .line 14
    iget-object v5, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v5}, Le/a/f/y/c;->c()Z

    move-result v10

    .line 15
    iget-object v5, p0, Le/a/f/a/f;->f:Le/a/e4/p;

    invoke-interface {v5}, Le/a/e4/p;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 16
    iget-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/b/i;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Le/a/f/a/e;->f8()Ljava/lang/Integer;

    move-result-object p3

    :cond_8
    move-object v9, p3

    move-object v5, v11

    .line 17
    invoke-direct/range {v5 .. v10}, Lcom/truecaller/contextcall/utils/SecondCallContext$a;-><init>(Ljava/lang/String;ZZLjava/lang/Integer;Z)V

    iput-object p0, v1, Le/a/f/a/b/j$c;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/f/a/b/j$c;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/b/j$c;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/b/j$c;->e:I

    .line 18
    invoke-interface {p2, v11, v1}, Le/a/o/c;->A(Lcom/truecaller/contextcall/utils/SecondCallContext;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_9

    return-object v2

    :cond_9
    move-object v1, p0

    move-object p2, p1

    move-object p1, v3

    .line 19
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 20
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/i;

    if-eqz v2, :cond_a

    .line 21
    new-instance v3, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    .line 22
    iget-object p2, p2, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 23
    sget-object v4, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v4}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-direct {v3, p1, p2, v4}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {v2, v3}, Le/a/f/a/b/i;->O3(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V

    .line 26
    :cond_a
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_b

    invoke-interface {p1, p3}, Le/a/f/a/b/i;->fl(Z)V

    :cond_b
    return-object v0

    .line 27
    :cond_c
    :goto_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_d

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/f/a/b/i;->fl(Z)V

    :cond_d
    return-object v0
.end method

.method public final synthetic Wj(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p3, Le/a/f/a/b/j$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/f/a/b/j$d;

    iget v1, v0, Le/a/f/a/b/j$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/b/j$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/b/j$d;

    invoke-direct {v0, p0, p3}, Le/a/f/a/b/j$d;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Le/a/f/a/b/j$d;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/f/a/b/j$d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

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
    iget-object p3, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p3}, Le/a/f/y/c;->x()Lcom/truecaller/incallui/service/CallType;

    move-result-object p3

    sget-object v1, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    if-ne p3, v1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 5
    iput v2, v6, Le/a/f/a/b/j$d;->e:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Le/a/f/a/f;->Mj(Le/a/f/a/g;ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Xj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/f/a/b/j$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/a/b/j$e;

    iget v1, v0, Le/a/f/a/b/j$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/b/j$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/b/j$e;

    invoke-direct {v0, p0, p2}, Le/a/f/a/b/j$e;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/a/b/j$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/a/b/j$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/a/b/j$e;->h:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/g;

    iget-object v0, v0, Le/a/f/a/b/j$e;->g:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/j;

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
    iget-object p2, p0, Le/a/f/a/b/j;->v:Le/a/f/z/b;

    iget-object v2, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->c()Z

    move-result v2

    iput-object p0, v0, Le/a/f/a/b/j$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/f/a/b/j$e;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/f/a/b/j$e;->e:I

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

    if-eqz p2, :cond_7

    .line 5
    iget-boolean p2, p1, Le/a/f/a/g;->u:Z

    if-eqz p2, :cond_4

    .line 6
    sget p1, Lcom/truecaller/incallui/R$drawable;->cred_incall_badge:I

    .line 7
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_tcx_badge_gold_24dp:I

    .line 9
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {p1}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_premium_badge_24dp:I

    .line 11
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_7

    .line 12
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/f/a/e;->EA(I)V

    .line 13
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/f/a/b/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    iget-object v0, p0, Le/a/f/a/b/j;->i:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Le/a/f/y/c;->p(Ljava/lang/String;Le/a/f/y/b;)V

    .line 5
    new-instance v4, Le/a/f/a/b/t;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/f/a/b/t;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/16 v0, 0xa

    .line 6
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object v0

    iput-object v0, p0, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    .line 7
    iget-object v0, p0, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->s()Lq3/a/w2/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Le/a/f/a/b/k;

    invoke-direct {v1, p0, p1}, Le/a/f/a/b/k;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    invoke-static {p0, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/f/a/b/j;->u:Le/a/f/z/m0/a;

    iget-object v1, p0, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Le/a/f/z/m0/a;->h(Lq3/a/w2/h;)V

    return-void

    :cond_1
    const-string v0, "uiEventsChannel"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1
.end method

.method public final Yj()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/f/a/b/j;->Tj()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/b/i;->s1()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/b/i;->Dg()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/f/a/f;->Nj()V

    .line 5
    invoke-virtual {p0}, Le/a/f/a/b/j;->bk()V

    .line 6
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_2

    sget v1, Lcom/truecaller/incallui/R$string;->incallui_conference_call:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i3(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/i;

    if-eqz v2, :cond_3

    .line 10
    iget-object v3, p0, Le/a/f/a/b/j;->r:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->a()J

    move-result-wide v3

    iget-object v5, p0, Le/a/f/a/b/j;->r:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v5

    sub-long/2addr v5, v0

    sub-long/2addr v3, v5

    .line 11
    invoke-interface {v2, v3, v4}, Le/a/f/a/b/i;->t5(J)V

    :cond_3
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

.method public Zj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->k()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/b/i;->Tb()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/b/i;->hg()V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->SWAP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string v0, "uiEventsChannel"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final ak(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/b/i;->Rg()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/f/a/b/i;->ry(I)V

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Le/a/f/a/b/i;->L4(I)V

    :cond_2
    return-void
.end method

.method public final bk()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/f/a/b/i;->O6(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/e;->J()V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/f/a/e;->Z()V

    :cond_2
    return-void

    :cond_3
    if-nez v0, :cond_8

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_4

    sget v1, Lcom/truecaller/incallui/R$string;->incallui_unknown_caller:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->q3(I)V

    .line 7
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_5

    sget v1, Lcom/truecaller/incallui/R$string;->incallui_hidden_number:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i3(I)V

    .line 8
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_6

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_unknown_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->p0(I)V

    .line 9
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    sget v1, Lcom/truecaller/incallui/R$dimen;->incallui_unknown_name_font_size:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->S0(I)V

    :cond_7
    return-void

    .line 10
    :cond_8
    iget-object v1, p0, Le/a/f/a/b/j;->t:Le/a/f/w/c;

    invoke-interface {v1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/w/f;

    .line 11
    instance-of v2, v1, Le/a/f/w/f$b;

    if-eqz v2, :cond_c

    .line 12
    check-cast v1, Le/a/f/w/f$b;

    .line 13
    iget-object v1, v1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 14
    iget-boolean v1, v1, Le/a/f/a/g;->p:Z

    if-eqz v1, :cond_a

    .line 15
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_9

    invoke-interface {v1, v0}, Le/a/f/a/e;->Ns(Ljava/lang/String;)V

    .line 16
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Le/a/f/a/e;->J()V

    goto :goto_0

    .line 17
    :cond_a
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Le/a/f/a/e;->setPhoneNumber(Ljava/lang/String;)V

    .line 18
    :cond_b
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Le/a/f/a/e;->Z()V

    goto :goto_0

    .line 19
    :cond_c
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Le/a/f/a/e;->setPhoneNumber(Ljava/lang/String;)V

    .line 20
    :cond_d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Le/a/f/a/e;->Z()V

    :cond_e
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    iget-object v1, p0, Le/a/f/a/b/j;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Le/a/f/y/c;->b(Ljava/lang/String;Le/a/f/y/b;)V

    .line 3
    iget-object v0, p0, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lq3/a/w2/h;->d(Ljava/util/concurrent/CancellationException;)V

    .line 5
    iget-object v0, p0, Le/a/f/a/b/j;->x:Le/a/o/c;

    invoke-interface {v0}, Le/a/o/c;->J()V

    return-void

    :cond_0
    const-string v0, "uiEventsChannel"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final ck()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

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

    check-cast v1, Le/a/f/a/b/i;

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

.method public final dk(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
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

    instance-of v1, p2, Le/a/f/a/b/j$f;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/f/a/b/j$f;

    iget v2, v1, Le/a/f/a/b/j$f;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/b/j$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/b/j$f;

    invoke-direct {v1, p0, p2}, Le/a/f/a/b/j$f;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/f/a/b/j$f;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/a/b/j$f;->e:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    iget-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    iget-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v4, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v4, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    iget-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    iget-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, v6

    goto/16 :goto_8

    :pswitch_3
    iget-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    iget-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, v6

    goto/16 :goto_7

    :pswitch_4
    iget-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    iget-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_1
    move-object p2, v6

    goto/16 :goto_5

    :pswitch_5
    iget-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    iget-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    iget-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    iget-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    iget-object p1, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/g;

    iget-object v3, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/f/a/b/j;->v:Le/a/f/z/b;

    iget-object v3, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->c()Z

    move-result v3

    iput-object p0, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/f/a/b/j$f;->e:I

    check-cast p2, Le/a/f/z/c;

    invoke-virtual {p2, p1, v3, v1}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_2

    return-object v2

    :cond_2
    move-object v3, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 5
    iput-object v3, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput-boolean p2, v1, Le/a/f/a/b/j$f;->i:Z

    const/4 v6, 0x2

    iput v6, v1, Le/a/f/a/b/j$f;->e:I

    invoke-virtual {v3, p1, v1}, Le/a/f/a/b/j;->Sj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_3

    return-object v2

    :cond_3
    move-object v6, v3

    move-object v3, p1

    move p1, p2

    .line 6
    :goto_2
    invoke-virtual {v6, v3, p1}, Le/a/f/a/f;->Ij(Le/a/f/a/g;Z)V

    .line 7
    iget-object p2, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->x()Lcom/truecaller/incallui/service/CallType;

    move-result-object p2

    sget-object v7, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    if-ne p2, v7, :cond_4

    .line 8
    invoke-virtual {v6, v3}, Le/a/f/a/f;->Lj(Le/a/f/a/g;)V

    .line 9
    :cond_4
    iget-boolean p2, v3, Le/a/f/a/g;->o:Z

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {v6}, Le/a/f/a/b/j;->ek()V

    goto :goto_3

    .line 11
    :cond_5
    iget-object p2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_6

    .line 12
    iget-object v7, v3, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 13
    invoke-interface {p2, v7}, Le/a/f/a/e;->setProfileName(Ljava/lang/String;)V

    .line 14
    :cond_6
    iget-object p2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Le/a/f/a/e;->D4()V

    .line 15
    :cond_7
    :goto_3
    iget-boolean p2, v3, Le/a/f/a/g;->q:Z

    if-eqz p2, :cond_8

    .line 16
    iget-object p2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_8

    sget v7, Lcom/truecaller/incallui/R$drawable;->ic_tcx_verified_badge:I

    invoke-interface {p2, v7}, Le/a/f/a/e;->EA(I)V

    .line 17
    :cond_8
    iput-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    const/4 p2, 0x3

    iput p2, v1, Le/a/f/a/b/j$f;->e:I

    invoke-virtual {v6, v3, v1}, Le/a/f/a/b/j;->Xj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_9

    return-object v2

    .line 18
    :cond_9
    :goto_4
    iput-object v6, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    const/4 p2, 0x4

    iput p2, v1, Le/a/f/a/b/j$f;->e:I

    invoke-virtual {v6, v3, v1}, Le/a/f/a/f;->Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_1

    return-object v2

    .line 19
    :goto_5
    iget-object v6, p2, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v6}, Le/a/f/y/c;->x()Lcom/truecaller/incallui/service/CallType;

    move-result-object v6

    sget-object v7, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    if-ne v6, v7, :cond_a

    .line 20
    invoke-virtual {p2, v3}, Le/a/f/a/f;->Jj(Le/a/f/a/g;)V

    .line 21
    :cond_a
    invoke-virtual {p2}, Le/a/f/a/b/j;->Tj()V

    .line 22
    invoke-virtual {p2}, Le/a/f/a/b/j;->bk()V

    .line 23
    iget-object v6, v3, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    if-eqz v6, :cond_c

    .line 24
    iget-object v7, p2, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v7}, Le/a/f/y/c;->n()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 25
    new-instance v9, Le/a/f/a/b/o;

    invoke-direct {v9, p2, v6, v5}, Le/a/f/a/b/o;-><init>(Le/a/f/a/b/j;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 26
    :cond_c
    :goto_6
    iput-object p2, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    const/4 v6, 0x5

    iput v6, v1, Le/a/f/a/b/j$f;->e:I

    .line 27
    invoke-virtual {p2, v3, v5, v1}, Le/a/f/a/b/j;->Vj(Le/a/f/a/g;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_d

    return-object v2

    .line 28
    :cond_d
    :goto_7
    iput-object p2, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    const/4 v6, 0x6

    iput v6, v1, Le/a/f/a/b/j$f;->e:I

    .line 29
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v9, Le/a/f/a/b/u;

    invoke-direct {v9, p2, v3, v5}, Le/a/f/a/b/u;-><init>(Le/a/f/a/b/j;Le/a/f/a/g;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v6

    if-ne v6, v2, :cond_e

    return-object v2

    .line 31
    :cond_e
    :goto_8
    iput-object p2, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    iput-boolean p1, v1, Le/a/f/a/b/j$f;->i:Z

    const/4 v6, 0x7

    iput v6, v1, Le/a/f/a/b/j$f;->e:I

    .line 32
    iget-object v6, p2, Le/a/f/a/b/j;->k:Lq3/a/p1;

    if-eqz v6, :cond_f

    invoke-static {v6, v5, v4, v5}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 33
    :cond_f
    iget-object v4, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/f/a/b/i;

    if-eqz v4, :cond_10

    .line 34
    invoke-interface {v4}, Le/a/f/a/e;->getVideoPlayingState()Lq3/a/x2/i1;

    move-result-object v4

    if-eqz v4, :cond_10

    new-instance v6, Le/a/f/a/b/n;

    invoke-direct {v6, p2, v3, v5}, Le/a/f/a/b/n;-><init>(Le/a/f/a/b/j;Le/a/f/a/g;Ls1/w/d;)V

    .line 35
    new-instance v7, Lq3/a/x2/u0;

    invoke-direct {v7, v4, v6}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 36
    invoke-static {v7, p2}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    move-result-object v4

    goto :goto_9

    :cond_10
    move-object v4, v5

    :goto_9
    iput-object v4, p2, Le/a/f/a/b/j;->k:Lq3/a/p1;

    if-ne v0, v2, :cond_11

    return-object v2

    :cond_11
    move-object v4, p2

    .line 37
    :goto_a
    iput-object v5, v1, Le/a/f/a/b/j$f;->g:Ljava/lang/Object;

    iput-object v5, v1, Le/a/f/a/b/j$f;->h:Ljava/lang/Object;

    const/16 p2, 0x8

    iput p2, v1, Le/a/f/a/b/j$f;->e:I

    invoke-virtual {v4, v3, p1, v1}, Le/a/f/a/b/j;->Wj(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_12

    return-object v2

    :cond_12
    :goto_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public final ek()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    sget v1, Lcom/truecaller/incallui/R$string;->incallui_conference_call:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i3(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/a/e;->J()V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/f/a/e;->Z()V

    :cond_2
    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_5

    sget v1, Lcom/truecaller/incallui/R$string;->incallui_hidden_number:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i3(I)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/f/a/e;->ic()V

    .line 8
    :cond_5
    :goto_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_6

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_unknown_text_color:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->p0(I)V

    .line 9
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    sget v1, Lcom/truecaller/incallui/R$dimen;->incallui_unknown_name_font_size:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->S0(I)V

    :cond_7
    return-void
.end method

.method public final fk(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 34
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

    move-object/from16 v1, p2

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/f/a/b/j$g;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/f/a/b/j$g;

    iget v4, v3, Le/a/f/a/b/j$g;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/f/a/b/j$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/f/a/b/j$g;

    invoke-direct {v3, v0, v1}, Le/a/f/a/b/j$g;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/f/a/b/j$g;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/f/a/b/j$g;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v4, v3, Le/a/f/a/b/j$g;->h:Ljava/lang/Object;

    check-cast v4, Le/a/k/a/k/a$c;

    iget-object v3, v3, Le/a/f/a/b/j$g;->g:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/j;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v4

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/f/a/b/j$g;->h:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/g;

    iget-object v9, v3, Le/a/f/a/b/j$g;->g:Ljava/lang/Object;

    check-cast v9, Le/a/f/a/b/j;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/f/a/b/j;->C:Le/a/k/h;

    const/4 v5, 0x0

    iput-object v0, v3, Le/a/f/a/b/j$g;->g:Ljava/lang/Object;

    move-object/from16 v9, p1

    iput-object v9, v3, Le/a/f/a/b/j$g;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/f/a/b/j$g;->e:I

    invoke-static {v1, v5, v3, v7, v8}, Le/a/p5/s0/g;->X(Le/a/k/h;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v9

    move-object v9, v0

    .line 5
    :goto_1
    check-cast v1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    if-eqz v1, :cond_9

    .line 6
    iget-object v1, v1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    if-eqz v1, :cond_9

    .line 7
    iget-object v12, v1, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 8
    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 9
    sget-object v10, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 10
    sget-object v11, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->PLAY_PARTLY_ONCE_THEN_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 11
    invoke-direct {v1, v10, v11}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 12
    new-instance v15, Le/a/k/a/k/a$c;

    .line 13
    new-instance v13, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v13, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 14
    new-instance v11, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object/from16 v16, v11

    const/4 v1, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v33, 0xffff

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v33}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x78

    move-object v10, v15

    move-object v8, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    .line 15
    invoke-direct/range {v10 .. v18}, Le/a/k/a/k/a$c;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    .line 16
    iget-boolean v1, v9, Le/a/f/a/b/j;->l:Z

    if-eqz v1, :cond_5

    return-object v2

    .line 17
    :cond_5
    iput-boolean v7, v9, Le/a/f/a/b/j;->l:Z

    .line 18
    iget-object v1, v9, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->x()Lcom/truecaller/incallui/service/CallType;

    move-result-object v1

    sget-object v7, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    if-ne v1, v7, :cond_9

    .line 19
    iget-object v1, v9, Le/a/f/a/b/j;->C:Le/a/k/h;

    .line 20
    iget-object v5, v5, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 21
    iput-object v9, v3, Le/a/f/a/b/j$g;->g:Ljava/lang/Object;

    iput-object v8, v3, Le/a/f/a/b/j$g;->h:Ljava/lang/Object;

    iput v6, v3, Le/a/f/a/b/j$g;->e:I

    invoke-interface {v1, v5, v3}, Le/a/k/h;->o(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    return-object v4

    :cond_6
    move-object v3, v9

    move-object v9, v8

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {v1}, Le/a/f/a/b/i;->jo()Z

    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    .line 24
    :goto_3
    invoke-static {v8}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 25
    :cond_8
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_9

    .line 26
    new-instance v10, Le/a/k/a/j/a$a;

    .line 27
    iget-object v3, v3, Le/a/f/a/b/j;->C:Le/a/k/h;

    invoke-interface {v3}, Le/a/k/h;->L()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x1388

    move-object v4, v10

    .line 28
    invoke-direct/range {v4 .. v9}, Le/a/k/a/j/a$a;-><init>(Ljava/lang/String;ZJLe/a/k/a/k/a;)V

    .line 29
    invoke-interface {v1, v10}, Le/a/f/a/b/i;->Qb(Le/a/k/a/j/a$a;)V

    :cond_9
    :goto_4
    return-object v2
.end method

.method public final synthetic gk(Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/incallui/service/CallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/f/a/b/j$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/a/b/j$h;

    iget v1, v0, Le/a/f/a/b/j$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/a/b/j$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/a/b/j$h;

    invoke-direct {v0, p0, p2}, Le/a/f/a/b/j$h;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/a/b/j$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/a/b/j$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/a/b/j$h;->g:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/j;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 6
    :pswitch_0
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallState;->DroppedCall:Lcom/truecaller/contextcall/utils/ContextCallState;

    goto :goto_1

    .line 7
    :pswitch_1
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallState;->Active:Lcom/truecaller/contextcall/utils/ContextCallState;

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x0

    goto :goto_1

    .line 8
    :pswitch_3
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallState;->Outgoing:Lcom/truecaller/contextcall/utils/ContextCallState;

    goto :goto_1

    .line 9
    :pswitch_4
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallState;->Initial:Lcom/truecaller/contextcall/utils/ContextCallState;

    :goto_1
    if-eqz p1, :cond_3

    .line 10
    iget-object p2, p0, Le/a/f/a/b/j;->x:Le/a/o/c;

    iput-object p0, v0, Le/a/f/a/b/j$h;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/f/a/b/j$h;->e:I

    invoke-interface {p2, p1, v0}, Le/a/o/c;->C(Lcom/truecaller/contextcall/utils/ContextCallState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_3
    iget-object p1, p0, Le/a/f/a/b/j;->x:Le/a/o/c;

    invoke-interface {p1}, Le/a/o/c;->J()V

    .line 11
    :cond_4
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hk(Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/incallui/service/CallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    sget-object v8, Ls1/s;->a:Ls1/s;

    instance-of v1, v0, Le/a/f/a/b/j$i;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/f/a/b/j$i;

    iget v2, v1, Le/a/f/a/b/j$i;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/a/b/j$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/a/b/j$i;

    invoke-direct {v1, v6, v0}, Le/a/f/a/b/j$i;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    :goto_0
    move-object v9, v1

    iget-object v0, v9, Le/a/f/a/b/j$i;->d:Ljava/lang/Object;

    sget-object v10, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v9, Le/a/f/a/b/j$i;->e:I

    const/4 v11, 0x1

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v11, :cond_2

    if-ne v1, v14, :cond_1

    iget-object v1, v9, Le/a/f/a/b/j$i;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/incallui/service/CallState;

    iget-object v2, v9, Le/a/f/a/b/j$i;->g:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/j;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v1, v9, Le/a/f/a/b/j$i;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/incallui/service/CallState;

    iget-object v2, v9, Le/a/f/a/b/j$i;->g:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/j;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v14, :cond_5

    .line 5
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/f/a/b/i;->Fq()V

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/f/a/b/i;->Cx()V

    goto :goto_1

    .line 8
    :cond_5
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->n()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/f/a/b/i;->Js()V

    goto :goto_1

    .line 9
    :cond_6
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/f/a/b/i;->Cx()V

    .line 10
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v14, :cond_a

    if-eq v0, v13, :cond_8

    .line 11
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Le/a/f/a/b/i;->Tb()V

    goto :goto_2

    .line 12
    :cond_8
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Le/a/f/a/b/i;->Vq()V

    goto :goto_2

    .line 14
    :cond_9
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Le/a/f/a/b/i;->Tb()V

    goto :goto_2

    .line 15
    :cond_a
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Le/a/f/a/b/i;->uu()V

    goto :goto_2

    .line 17
    :cond_b
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Le/a/f/a/b/i;->Tb()V

    .line 18
    :cond_c
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v13, :cond_e

    if-eq v0, v12, :cond_e

    .line 19
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->n()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Le/a/f/a/b/i;->dA()V

    goto :goto_3

    .line 20
    :cond_d
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Le/a/f/a/b/i;->dx()V

    goto :goto_3

    .line 21
    :cond_e
    iget-object v0, v6, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->E()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 22
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Le/a/f/a/b/i;->Sa()V

    goto :goto_3

    .line 23
    :cond_f
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Le/a/f/a/b/i;->dx()V

    .line 24
    :cond_10
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v14, :cond_13

    if-eq v0, v13, :cond_11

    if-eq v0, v12, :cond_11

    .line 25
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Le/a/f/a/b/i;->xv()V

    goto :goto_4

    .line 26
    :cond_11
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->w()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 27
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Le/a/f/a/b/i;->Vg()V

    goto :goto_4

    .line 28
    :cond_12
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Le/a/f/a/b/i;->xv()V

    goto :goto_4

    .line 29
    :cond_13
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Le/a/f/a/b/i;->an()V

    goto :goto_4

    .line 30
    :cond_14
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Le/a/f/a/b/i;->xv()V

    .line 31
    :cond_15
    :goto_4
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 32
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Le/a/f/a/b/i;->in()V

    goto :goto_5

    .line 33
    :cond_16
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Le/a/f/a/b/i;->wc()V

    .line 34
    :cond_17
    :goto_5
    new-instance v3, Le/a/f/a/b/p;

    const/4 v15, 0x0

    invoke-direct {v3, v6, v7, v15}, Le/a/f/a/b/p;-><init>(Le/a/f/a/b/j;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 35
    iget-object v0, v6, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->c()Z

    move-result v0

    if-nez v0, :cond_18

    .line 36
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Le/a/f/a/b/i;->X5()V

    goto :goto_6

    .line 37
    :cond_18
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Le/a/f/a/b/i;->Bf()V

    .line 38
    :cond_19
    :goto_6
    iget-object v0, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_1a

    iget-object v1, v6, Le/a/f/a/b/j;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v1}, Le/a/k0/a/e;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/f/a/b/i;->Ux(Z)V

    .line 39
    :cond_1a
    iput-object v6, v9, Le/a/f/a/b/j$i;->g:Ljava/lang/Object;

    iput-object v7, v9, Le/a/f/a/b/j$i;->h:Ljava/lang/Object;

    iput v11, v9, Le/a/f/a/b/j$i;->e:I

    .line 40
    invoke-virtual {v6, v15, v7, v9}, Le/a/f/a/b/j;->Vj(Le/a/f/a/g;Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1b

    return-object v10

    :cond_1b
    move-object v2, v6

    move-object v1, v7

    .line 41
    :goto_7
    iput-object v2, v9, Le/a/f/a/b/j$i;->g:Ljava/lang/Object;

    iput-object v1, v9, Le/a/f/a/b/j$i;->h:Ljava/lang/Object;

    iput v14, v9, Le/a/f/a/b/j$i;->e:I

    invoke-virtual {v2, v1, v9}, Le/a/f/a/b/j;->gk(Lcom/truecaller/incallui/service/CallState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1c

    return-object v10

    .line 42
    :cond_1c
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v14, :cond_20

    if-eq v0, v13, :cond_1f

    if-eq v0, v12, :cond_1d

    return-object v8

    .line 43
    :cond_1d
    iget-object v0, v2, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->G()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_9

    .line 44
    :cond_1e
    sget v0, Lcom/truecaller/incallui/R$string;->incallui_status_on_hold:I

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_call_status_warning_color:I

    invoke-virtual {v2, v0, v1}, Le/a/f/a/b/j;->ak(II)V

    .line 45
    iget-object v0, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Le/a/f/a/b/i;->di()V

    goto :goto_9

    .line 46
    :cond_1f
    invoke-virtual {v2}, Le/a/f/a/b/j;->Yj()V

    goto :goto_9

    .line 47
    :cond_20
    invoke-virtual {v2}, Le/a/f/a/f;->Nj()V

    .line 48
    invoke-virtual {v2}, Le/a/f/a/b/j;->bk()V

    .line 49
    iget v0, v2, Le/a/f/a/b/j;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 50
    sget v1, Lcom/truecaller/incallui/R$string;->incallui_status_dialing:I

    invoke-virtual {v2, v1, v0}, Le/a/f/a/b/j;->ak(II)V

    :cond_21
    :goto_9
    return-object v8
.end method

.method public od()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/b/i;->q()V

    :cond_0
    return-void
.end method

.method public q7(Z)V
    .locals 0

    return-void
.end method

.method public sc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/f/a/b/i;->H9(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zj(Le/a/f/y/a;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/f/y/a$a;->a:Le/a/f/y/a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/truecaller/incallui/R$string;->incallui_status_call_busy:I

    sget v0, Lcom/truecaller/incallui/R$color;->incallui_call_status_error_color:I

    invoke-virtual {p0, p1, v0}, Le/a/f/a/b/j;->ak(II)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/f/y/a$c;->a:Le/a/f/y/a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/truecaller/incallui/R$string;->incallui_status_call_missed:I

    sget v0, Lcom/truecaller/incallui/R$color;->incallui_call_status_error_color:I

    invoke-virtual {p0, p1, v0}, Le/a/f/a/b/j;->ak(II)V

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lcom/truecaller/incallui/R$string;->incallui_status_call_ended:I

    sget v0, Lcom/truecaller/incallui/R$color;->incallui_call_status_error_color:I

    invoke-virtual {p0, p1, v0}, Le/a/f/a/b/j;->ak(II)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/f/a/b/i;->Oc()V

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/a/b/i;->Ti()V

    :cond_3
    return-void
.end method
