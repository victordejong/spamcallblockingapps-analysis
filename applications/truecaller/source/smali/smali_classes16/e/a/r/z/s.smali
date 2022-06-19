.class public final Le/a/r/z/s;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r/z/y;",
        ">;",
        "Le/a/r/z/r;"
    }
.end annotation


# instance fields
.field public final A:Ls1/w/f;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/Integer;

.field public final E:Ljava/lang/String;

.field public final J:Le/a/r/z/z;

.field public final K:Le/a/r/z/n;

.field public final L:Le/a/r/m;

.field public final M:Le/a/r/c/z;

.field public final N:Le/a/r/h;

.field public final O:Le/a/b0/q/z;

.field public final P:Le/a/b0/e/r/a;

.field public final Q:Le/a/p5/q0/e;

.field public final R:Le/a/b0/q/e;

.field public final S:Le/a/r/q/c;

.field public final T:Le/a/p5/c;

.field public final U:Le/a/r/z/d0/d;

.field public final V:Le/a/e4/p;

.field public final W:Le/a/p5/g;

.field public final X:Le/a/r/z/b0;

.field public final Y:Le/a/b0/b/f/b;

.field public final Z:Le/a/u3/g;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public final g0:Lcom/truecaller/wizard/WizardVerificationMode;

.field public h:Ljava/lang/String;

.field public final h0:Le/a/v2/s;

.field public i:Ljava/lang/Long;

.field public final i0:Le/a/r/p/a;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lq3/a/p1;

.field public final o:Ls1/f0/h;

.field public p:Ljava/lang/String;

.field public q:Z

.field public final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/a/r/z/z;Le/a/r/z/n;Le/a/r/m;Le/a/r/c/z;Le/a/r/h;Le/a/b0/q/z;Le/a/b0/e/r/a;Le/a/p5/q0/e;Le/a/b0/q/e;Le/a/r/q/c;Le/a/p5/c;Le/a/r/z/d0/d;Le/a/e4/p;Le/a/p5/g;Le/a/r/z/b0;Le/a/b0/b/f/b;Le/a/u3/g;Lcom/truecaller/wizard/WizardVerificationMode;Le/a/v2/s;Le/a/r/p/a;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "verificationPhoneNumber"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "verificationCountry"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Ljavax/inject/Named;
            value = "verificationDialingCode"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "verificationNumberSource"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v0, p17

    const-string v0, "asyncCoroutineContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberSource"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationRequestHelper"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationHelper"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationCallRemover"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardSettingsHelper"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRejecter"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardErrorTracker"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardContactSupportHelper"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoProvider"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationManager"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readPhoneNumberABTestManager"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p17

    iput-object v1, v0, Le/a/r/z/s;->z:Ls1/w/f;

    iput-object v2, v0, Le/a/r/z/s;->A:Ls1/w/f;

    iput-object v3, v0, Le/a/r/z/s;->B:Ljava/lang/String;

    iput-object v4, v0, Le/a/r/z/s;->C:Ljava/lang/String;

    move-object/from16 v1, p5

    iput-object v1, v0, Le/a/r/z/s;->D:Ljava/lang/Integer;

    iput-object v5, v0, Le/a/r/z/s;->E:Ljava/lang/String;

    iput-object v6, v0, Le/a/r/z/s;->J:Le/a/r/z/z;

    iput-object v7, v0, Le/a/r/z/s;->K:Le/a/r/z/n;

    iput-object v8, v0, Le/a/r/z/s;->L:Le/a/r/m;

    iput-object v9, v0, Le/a/r/z/s;->M:Le/a/r/c/z;

    iput-object v10, v0, Le/a/r/z/s;->N:Le/a/r/h;

    iput-object v11, v0, Le/a/r/z/s;->O:Le/a/b0/q/z;

    iput-object v12, v0, Le/a/r/z/s;->P:Le/a/b0/e/r/a;

    iput-object v13, v0, Le/a/r/z/s;->Q:Le/a/p5/q0/e;

    iput-object v14, v0, Le/a/r/z/s;->R:Le/a/b0/q/e;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/r/z/s;->S:Le/a/r/q/c;

    iput-object v15, v0, Le/a/r/z/s;->T:Le/a/p5/c;

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    iput-object v1, v0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    iput-object v2, v0, Le/a/r/z/s;->V:Le/a/e4/p;

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    iput-object v1, v0, Le/a/r/z/s;->W:Le/a/p5/g;

    iput-object v2, v0, Le/a/r/z/s;->X:Le/a/r/z/b0;

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    iput-object v1, v0, Le/a/r/z/s;->Y:Le/a/b0/b/f/b;

    iput-object v2, v0, Le/a/r/z/s;->Z:Le/a/u3/g;

    move-object/from16 v1, p24

    move-object/from16 v2, p25

    iput-object v1, v0, Le/a/r/z/s;->g0:Lcom/truecaller/wizard/WizardVerificationMode;

    iput-object v2, v0, Le/a/r/z/s;->h0:Le/a/v2/s;

    move-object/from16 v1, p26

    iput-object v1, v0, Le/a/r/z/s;->i0:Le/a/r/p/a;

    .line 2
    new-instance v1, Ls1/f0/h;

    const-string v2, "Truecaller code (\\d{6})"

    invoke-direct {v1, v2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Le/a/r/z/s;->o:Ls1/f0/h;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Le/a/r/z/s;->r:Ljava/util/HashSet;

    .line 4
    new-instance v1, Lw2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lw2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->s:Ls1/g;

    .line 5
    new-instance v1, Lw2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lw2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->t:Ls1/g;

    .line 6
    new-instance v1, Le/a/r/z/w;

    invoke-direct {v1, v0}, Le/a/r/z/w;-><init>(Le/a/r/z/s;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->u:Ls1/g;

    .line 7
    new-instance v1, Lw2;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lw2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->v:Ls1/g;

    .line 8
    new-instance v1, Lw2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lw2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->w:Ls1/g;

    .line 9
    new-instance v1, Lw2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lw2;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->x:Ls1/g;

    .line 10
    new-instance v1, Le/a/r/z/t;

    invoke-direct {v1, v0}, Le/a/r/z/t;-><init>(Le/a/r/z/s;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/r/z/s;->y:Ls1/g;

    return-void
.end method

.method public static final Ij(Le/a/r/z/s;Le/a/r/r/a;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/a/r/z/o$h;->e:Le/a/r/z/o$h;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3
    :cond_0
    iget-object v2, v0, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getDomain()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v5, v7, Le/a/r/z/s;->g0:Lcom/truecaller/wizard/WizardVerificationMode;

    sget-object v6, Lcom/truecaller/wizard/WizardVerificationMode;->PRIMARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    if-ne v5, v6, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 6
    iget-object v5, v7, Le/a/r/z/s;->P:Le/a/b0/e/r/a;

    const-string v6, "networkDomain"

    invoke-interface {v5, v6, v0}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getStatus()I

    move-result v0

    const/16 v5, 0xb

    if-eq v0, v5, :cond_b

    const/16 v5, 0xc

    if-eq v0, v5, :cond_a

    const/16 v5, 0x11

    const/4 v6, 0x0

    if-eq v0, v5, :cond_6

    const/16 v5, 0x15

    if-eq v0, v5, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 8
    iget-object v0, v7, Le/a/r/z/s;->S:Le/a/r/q/c;

    const-string v3, "Unknown success status "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Le/a/r/z/o$i;->e:Le/a/r/z/o$i;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 10
    :pswitch_0
    invoke-virtual {v7, v2, v6}, Le/a/r/z/s;->Tj(Lcom/truecaller/account/network/TokenResponseDto;Z)V

    goto/16 :goto_a

    .line 11
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Le/a/r/z/s;->Rj()V

    goto/16 :goto_a

    .line 12
    :pswitch_2
    sget-object v0, Le/a/r/z/o$g;->e:Le/a/r/z/o$g;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 13
    :pswitch_3
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getTokenTtl()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Sj(Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 14
    :pswitch_4
    invoke-virtual {v7, v2, v4}, Le/a/r/z/s;->Tj(Lcom/truecaller/account/network/TokenResponseDto;Z)V

    goto/16 :goto_a

    .line 15
    :pswitch_5
    sget-object v0, Le/a/r/z/o$k;->e:Le/a/r/z/o$k;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 16
    :pswitch_6
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getTtl()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Sj(Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 17
    :pswitch_7
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedPhoneNumber()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "NumberVerification"

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, v7, Le/a/r/z/s;->h0:Le/a/v2/s;

    check-cast v2, Le/a/v2/u;

    .line 21
    iget-object v2, v2, Le/a/v2/u;->e:Le/a/v2/a;

    invoke-interface {v2}, Le/a/v2/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 23
    new-instance v8, Le/a/r/z/x;

    const/4 v9, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Le/a/r/z/x;-><init>(Le/a/r/z/s;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_a

    .line 24
    :cond_3
    sget-object v0, Le/a/r/z/o$d;->e:Le/a/r/z/o$d;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 25
    :cond_4
    :goto_0
    sget-object v0, Le/a/r/z/o$i;->e:Le/a/r/z/o$i;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 26
    :cond_5
    sget-object v0, Le/a/r/z/o$a;->e:Le/a/r/z/o$a;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 27
    :cond_6
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getUserId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 28
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getRequestId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 29
    invoke-virtual {v2}, Lcom/truecaller/account/network/TokenResponseDto;->getBackupTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 30
    invoke-virtual/range {p0 .. p0}, Le/a/r/z/s;->Uj()V

    .line 31
    new-instance v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    .line 32
    iget-object v14, v7, Le/a/r/z/s;->B:Ljava/lang/String;

    .line 33
    iget-object v15, v7, Le/a/r/z/s;->C:Ljava/lang/String;

    .line 34
    iget-object v1, v7, Le/a/r/z/s;->D:Ljava/lang/Integer;

    move-object v8, v0

    move-object/from16 v16, v1

    .line 35
    invoke-direct/range {v8 .. v16}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    iget-object v1, v7, Le/a/r/z/s;->N:Le/a/r/h;

    invoke-interface {v1, v0}, Le/a/r/h;->k(Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;)V

    .line 37
    iput-boolean v6, v7, Le/a/r/z/s;->q:Z

    .line 38
    iget-object v1, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r/z/y;

    if-eqz v1, :cond_26

    invoke-interface {v1, v0}, Le/a/r/z/y;->Qc(Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;)V

    goto/16 :goto_a

    .line 39
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 41
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 42
    :cond_a
    :pswitch_8
    new-instance v4, Le/a/r/z/u;

    invoke-direct {v4, v7, v2, v1, v3}, Le/a/r/z/u;-><init>(Le/a/r/z/s;Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/String;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_a

    .line 43
    :cond_b
    iget-object v0, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/wizard/R$string;->VerificationError_tokenInvalid:I

    invoke-interface {v0, v1}, Le/a/r/z/y;->a(I)V

    .line 44
    :cond_c
    iget-object v0, v7, Le/a/r/z/s;->e:Ljava/lang/String;

    const-string v1, "call"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    iput-object v3, v7, Le/a/r/z/s;->k:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_d
    iget-object v0, v7, Le/a/r/z/s;->e:Ljava/lang/String;

    const-string v1, "sms"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    iput-object v3, v7, Le/a/r/z/s;->l:Ljava/lang/String;

    .line 48
    :cond_e
    :goto_1
    invoke-virtual/range {p0 .. p0}, Le/a/r/z/s;->Jj()V

    goto/16 :goto_a

    .line 49
    :cond_f
    iget-object v0, v0, Le/a/r/r/a;->b:Lcom/truecaller/account/network/TokenErrorResponseDto;

    .line 50
    iget-object v2, v7, Le/a/r/z/s;->S:Le/a/r/q/c;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_10
    move-object v4, v3

    :goto_2
    const v5, 0x9caa

    const v6, 0x9c4c

    const v8, 0x9c43

    if-nez v4, :cond_11

    const-string v4, "null"

    goto :goto_3

    .line 51
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_12

    const-string v4, "Invalid phone number"

    goto :goto_3

    :cond_12
    const v9, 0x9c41

    .line 52
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_13

    const-string v4, "Invalid body format"

    goto :goto_3

    :cond_13
    const v9, 0x9c42

    .line 53
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_14

    const-string v4, "Application not supported"

    goto :goto_3

    :cond_14
    const v9, 0x9c44

    .line 54
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_15

    const-string v4, "Client secret wrong"

    goto :goto_3

    :cond_15
    const v9, 0xc352

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_16

    const-string v4, "Internal server error"

    goto :goto_3

    .line 56
    :cond_16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_17

    const-string v4, "invalid_region"

    goto :goto_3

    .line 57
    :cond_17
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_18

    const-string v4, "Blacklisted number"

    goto :goto_3

    .line 58
    :cond_18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    :goto_3
    invoke-interface {v2, v1, v4}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_19

    .line 60
    invoke-virtual {v0}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_19
    if-nez v3, :cond_1a

    goto :goto_4

    .line 61
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_1b

    sget-object v0, Le/a/r/z/o$b;->e:Le/a/r/z/o$b;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    .line 62
    iget-object v0, v7, Le/a/r/z/s;->g0:Lcom/truecaller/wizard/WizardVerificationMode;

    sget-object v1, Lcom/truecaller/wizard/WizardVerificationMode;->PRIMARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    if-ne v0, v1, :cond_26

    iget-object v0, v7, Le/a/r/z/s;->i0:Le/a/r/p/a;

    .line 63
    iget-object v0, v0, Le/a/r/p/a;->a:Le/a/q2/d1/d;

    const-string v1, "readPhoneNumber_38745_number_invalid"

    invoke-interface {v0, v1}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    goto :goto_a

    :cond_1b
    :goto_4
    if-nez v3, :cond_1c

    goto :goto_5

    .line 64
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_1d

    .line 65
    sget-object v0, Le/a/r/z/o$f;->e:Le/a/r/z/o$f;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_a

    :cond_1d
    :goto_5
    if-nez v3, :cond_1e

    goto :goto_6

    .line 66
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1f

    sget-object v0, Le/a/r/z/o$a;->e:Le/a/r/z/o$a;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    :goto_6
    const v0, 0x9c4b

    if-nez v3, :cond_20

    goto :goto_7

    .line 67
    :cond_20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_21

    sget-object v0, Le/a/r/z/o$e;->e:Le/a/r/z/o$e;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_a

    :cond_21
    :goto_7
    const v0, 0xb02d

    if-nez v3, :cond_22

    goto :goto_8

    .line 68
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_23

    sget-object v0, Le/a/r/z/o$c;->e:Le/a/r/z/o$c;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_a

    :cond_23
    :goto_8
    const v0, 0x9d6e

    if-nez v3, :cond_24

    goto :goto_9

    .line 69
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_25

    sget-object v0, Le/a/r/z/o$d;->e:Le/a/r/z/o$d;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    goto :goto_a

    .line 70
    :cond_25
    :goto_9
    sget-object v0, Le/a/r/z/o$i;->e:Le/a/r/z/o$i;

    invoke-virtual {v7, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    :cond_26
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e21
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final Jj()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/r/z/s;->q:Z

    .line 2
    iget-wide v1, p0, Le/a/r/z/s;->g:J

    iget-object v3, p0, Le/a/r/z/s;->T:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/r/z/s;->Rj()V

    return-void

    .line 4
    :cond_0
    iget-object v3, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1bd59

    const/4 v6, 0x0

    if-eq v4, v5, :cond_6

    const v5, 0x2e7a5e

    if-eq v4, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v4, "call"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/r/z/y;

    if-eqz v3, :cond_3

    invoke-interface {v3, v0}, Le/a/r/z/y;->ex(Z)V

    .line 7
    :cond_3
    iget-object v0, p0, Le/a/r/z/s;->O:Le/a/b0/q/z;

    iget-object v3, p0, Le/a/r/z/s;->B:Ljava/lang/String;

    iget-object v4, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Le/a/b0/q/z;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/r/z/y;

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Le/a/r/z/y;->V2(Ljava/lang/String;)V

    .line 9
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/r/z/y;->if()V

    .line 10
    :cond_5
    iget-object v0, p0, Le/a/r/z/s;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0, v0}, Le/a/r/z/s;->Vj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 12
    iput-object v6, p0, Le/a/r/z/s;->k:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v0}, Le/a/r/z/s;->Xj(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v4, "sms"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 15
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/r/z/y;

    if-eqz v3, :cond_7

    invoke-interface {v3, v0}, Le/a/r/z/y;->Tm(Z)V

    .line 16
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_8

    invoke-interface {v0, v1, v2}, Le/a/r/z/y;->AA(J)V

    .line 17
    :cond_8
    iget-object v0, p0, Le/a/r/z/s;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 18
    iput-object v6, p0, Le/a/r/z/s;->l:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r/z/y;

    if-eqz v1, :cond_9

    invoke-interface {v1, v0}, Le/a/r/z/y;->jc(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 20
    :cond_a
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/r/z/s;->A:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/r/z/s$a;

    invoke-direct {v5, p0, v1, v2, v6}, Le/a/r/z/s$a;-><init>(Le/a/r/z/s;JLs1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/r/z/s;->n:Lq3/a/p1;

    return-void

    .line 21
    :cond_b
    :goto_0
    iget-object v0, p0, Le/a/r/z/s;->S:Le/a/r/q/c;

    const-string v1, "NumberVerification"

    const-string v2, "Client fault. Unknown method"

    invoke-interface {v0, v1, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Le/a/r/z/o$i;->e:Le/a/r/z/o$i;

    invoke-virtual {p0, v0, v1}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    return-void
.end method

.method public final Kj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r/z/s;->n:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iput-object v1, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    .line 3
    iput-object v1, p0, Le/a/r/z/s;->f:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Le/a/r/z/s;->g:J

    .line 5
    iput-object v1, p0, Le/a/r/z/s;->h:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Le/a/r/z/s;->k:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Le/a/r/z/s;->l:Ljava/lang/String;

    return-void
.end method

.method public final Lj()Z
    .locals 1

    iget-object v0, p0, Le/a/r/z/s;->s:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Mj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/multisim/SimInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/r/z/s;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final Nj()Z
    .locals 1

    iget-object v0, p0, Le/a/r/z/s;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Oj(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1bd59

    if-eq v0, v1, :cond_2

    const v1, 0x2e7a5e

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "call"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Le/a/r/z/s;->w:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    const-string v0, "sms"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/r/z/s;->x:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public Pj(Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 1
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/r/z/s;->r:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    .line 5
    sget-object v1, Lcom/truecaller/wizard/verification/analytics/CallAction;->RINGING:Lcom/truecaller/wizard/verification/analytics/CallAction;

    .line 6
    iget-object v2, p0, Le/a/r/z/s;->B:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v4, p2

    .line 9
    invoke-static/range {v0 .. v9}, Le/a/p5/s0/g;->N0(Le/a/r/z/d0/d;Lcom/truecaller/wizard/verification/analytics/CallAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 10
    iput-object p2, p0, Le/a/r/z/s;->k:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0, p2}, Le/a/r/z/s;->Vj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iput-object p3, p0, Le/a/r/z/s;->m:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p1}, Le/a/r/z/s;->Xj(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    :goto_0
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/r/z/s;->z:Ls1/w/f;

    new-instance v3, Le/a/r/z/v;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p2, p1}, Le/a/r/z/v;-><init>(Le/a/r/z/s;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_5
    :goto_1
    return-void
.end method

.method public final Qj(Le/a/r/z/o;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/z/s;->Kj()V

    .line 2
    iget-object v0, p0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    check-cast v0, Le/a/r/z/d0/e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v2, Le/a/r/z/d0/h;

    iget-object v0, v0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-direct {v2, p1, p2, v0}, Le/a/r/z/d0/h;-><init>(Le/a/r/z/o;Ljava/lang/String;Lcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 5
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/z/y;

    if-eqz p2, :cond_0

    iget-object v0, p0, Le/a/r/z/s;->X:Le/a/r/z/b0;

    iget-object v1, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    check-cast v0, Le/a/r/z/c0;

    invoke-virtual {v0, p1, v1}, Le/a/r/z/c0;->b(Le/a/r/z/o;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p2, p1, v0}, Le/a/r/z/y;->rA(Le/a/r/z/o;Z)V

    :cond_0
    return-void
.end method

.method public final Rj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    const-string v1, "call"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Le/a/r/z/s;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/r/z/y;->ex(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/r/z/s;->Wj()V

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v1, p0, Le/a/r/z/s;->q:Z

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/r/z/y;->d0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Sj(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    long-to-double v0, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 2
    new-instance v0, Le/a/r/z/o$j;

    invoke-direct {v0, p1}, Le/a/r/z/o$j;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Le/a/r/z/s;->Qj(Le/a/r/z/o;Ljava/lang/String;)V

    return-void
.end method

.method public final Tj(Lcom/truecaller/account/network/TokenResponseDto;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Le/a/r/z/s;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Le/a/r/z/s;->d:I

    .line 2
    iget-object v0, p0, Le/a/r/z/s;->M:Le/a/r/c/z;

    invoke-interface {v0, p2}, Le/a/r/c/z;->a(I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getMethod()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getRequestId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/a/r/z/s;->f:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Le/a/r/z/s;->T:Le/a/p5/c;

    invoke-interface {p2}, Le/a/p5/c;->c()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getTokenTtl()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Le/a/r/z/s;->g:J

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getPattern()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/a/r/z/s;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedCountryCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/a/r/z/s;->j:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedPhoneNumber()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le/a/r/z/s;->i:Ljava/lang/Long;

    .line 9
    invoke-virtual {p0}, Le/a/r/z/s;->Jj()V

    return-void
.end method

.method public final Uj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/r/z/s;->e:Ljava/lang/String;

    const-string v1, "call"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/z/s;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/r/z/s;->L:Le/a/r/m;

    .line 3
    iget-object v2, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "number"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "countryCode"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {v3, v0}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 6
    iput v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v4, 0x5

    .line 7
    iput v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    iput-wide v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 10
    invoke-static {v0, v2}, Le/a/b0/q/b0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    iput-object v2, v3, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 12
    iget-object v1, v1, Le/a/r/m;->a:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    invoke-interface {v1, v3}, Le/a/l0/c;->n(Lcom/truecaller/data/entity/HistoryEvent;)V

    .line 13
    iput-object v0, p0, Le/a/r/z/s;->p:Ljava/lang/String;

    .line 14
    :cond_0
    iget-object v0, p0, Le/a/r/z/s;->K:Le/a/r/z/n;

    invoke-interface {v0}, Le/a/r/z/n;->b()V

    .line 15
    iget-object v0, p0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    invoke-virtual {p0}, Le/a/r/z/s;->Lj()Z

    move-result v1

    check-cast v0, Le/a/r/z/d0/e;

    .line 16
    iget-object v2, v0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v3, Le/a/r/z/d0/g;

    iget-object v0, v0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-direct {v3, v1, v0}, Le/a/r/z/d0/g;-><init>(ZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v2, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public final Vj(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/r/z/s;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/16 v4, 0x2c

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/4 v4, 0x6

    .line 2
    invoke-static {v0, v3, v5, v5, v4}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v2

    invoke-static {p1, v5}, Ls1/f0/w;->m0(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v4, ""

    .line 8
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final Wj()V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/r/z/s;->Kj()V

    .line 3
    new-instance v0, Le/a/r/z/f;

    .line 4
    iget-object v3, p0, Le/a/r/z/s;->B:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Le/a/r/z/s;->D:Ljava/lang/Integer;

    .line 7
    iget v6, p0, Le/a/r/z/s;->d:I

    add-int/2addr v6, v2

    .line 8
    invoke-direct {v0, v3, v4, v5, v6}, Le/a/r/z/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 9
    new-instance v10, Le/a/r/z/s$b;

    invoke-direct {v10, p0, v0, v1}, Le/a/r/z/s$b;-><init>(Le/a/r/z/s;Le/a/r/z/f;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Xj(Ljava/lang/String;)V
    .locals 15

    move-object v6, p0

    .line 1
    iget-object v0, v6, Le/a/r/z/s;->n:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v8, v6, Le/a/r/z/s;->f:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 3
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    iget-object v3, v6, Le/a/r/z/s;->m:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 4
    invoke-virtual {p0}, Le/a/r/z/s;->Mj()Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/truecaller/multisim/SimInfo;

    .line 6
    iget-object v7, v7, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    iget-object v9, v6, Le/a/r/z/s;->m:Ljava/lang/String;

    invoke-static {v7, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v2

    .line 7
    :goto_0
    move-object v3, v5

    check-cast v3, Lcom/truecaller/multisim/SimInfo;

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    move-object v10, v5

    check-cast v10, Lcom/truecaller/multisim/SimInfo;

    if-eqz v10, :cond_5

    .line 8
    sget-object v9, Lcom/truecaller/account/network/SimDto;->Companion:Lcom/truecaller/account/network/SimDto$a;

    .line 9
    iget-object v11, v6, Le/a/r/z/s;->O:Le/a/b0/q/z;

    .line 10
    iget-object v12, v6, Le/a/r/z/s;->Y:Le/a/b0/b/f/b;

    .line 11
    iget-object v3, v6, Le/a/r/z/s;->Z:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->I()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v13

    .line 12
    invoke-virtual {p0}, Le/a/r/z/s;->Nj()Z

    move-result v14

    .line 13
    invoke-static/range {v9 .. v14}, Le/a/n/g0;->z(Lcom/truecaller/account/network/SimDto$a;Lcom/truecaller/multisim/SimInfo;Le/a/b0/q/z;Le/a/b0/b/f/b;ZZ)Lcom/truecaller/account/network/SimDto;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v2

    .line 14
    :goto_3
    iput-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 15
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/r/z/y;

    if-eqz v3, :cond_6

    .line 16
    invoke-interface {v3, v4}, Le/a/r/z/y;->ex(Z)V

    .line 17
    invoke-interface {v3, v4}, Le/a/r/z/y;->Tm(Z)V

    const/4 v5, 0x2

    .line 18
    invoke-static {v3, v1, v4, v5, v2}, Le/a/p5/s0/g;->s1(Le/a/r/z/y;ZZILjava/lang/Object;)V

    const-string v1, ""

    .line 19
    invoke-interface {v3, v1}, Le/a/r/z/y;->jc(Ljava/lang/String;)V

    .line 20
    :cond_6
    new-instance v1, Lcom/truecaller/account/network/VerifyTokenRequestDto;

    .line 21
    iget-object v9, v6, Le/a/r/z/s;->B:Ljava/lang/String;

    .line 22
    iget-object v10, v6, Le/a/r/z/s;->C:Ljava/lang/String;

    .line 23
    iget-object v11, v6, Le/a/r/z/s;->D:Ljava/lang/Integer;

    .line 24
    iget-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Lcom/truecaller/account/network/SimDto;

    move-object v7, v1

    move-object/from16 v12, p1

    .line 25
    invoke-direct/range {v7 .. v13}, Lcom/truecaller/account/network/VerifyTokenRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/truecaller/account/network/SimDto;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 26
    new-instance v5, Le/a/r/z/s$c;

    invoke-direct {v5, p0, v1, v0, v2}, Le/a/r/z/s$c;-><init>(Le/a/r/z/s;Lcom/truecaller/account/network/VerifyTokenRequestDto;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v7

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 27
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/r/z/y;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/r/z/s;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/a/r/z/s;->Mj()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/truecaller/multisim/SimInfo;

    .line 9
    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v3, "info.simToken"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 11
    invoke-interface {p1, v1}, Le/a/r/z/y;->ki(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1}, Le/a/r/z/y;->U9()V

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    iget-object v0, p0, Le/a/r/z/s;->E:Ljava/lang/String;

    invoke-virtual {p0}, Le/a/r/z/s;->Lj()Z

    move-result v1

    check-cast p1, Le/a/r/z/d0/e;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "numberSource"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, p1, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v3, Le/a/r/z/d0/i;

    iget-object p1, p1, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-direct {v3, v0, v1, p1}, Le/a/r/z/d0/i;-><init>(Ljava/lang/String;ZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v2, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 16
    iget-object p1, p0, Le/a/r/z/s;->g0:Lcom/truecaller/wizard/WizardVerificationMode;

    sget-object v0, Lcom/truecaller/wizard/WizardVerificationMode;->PRIMARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Le/a/r/z/s;->i0:Le/a/r/p/a;

    iget-object v0, p0, Le/a/r/z/s;->E:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SIM"

    .line 18
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object p1, p1, Le/a/r/p/a;->a:Le/a/q2/d1/d;

    const-string v0, "readPhoneNumber_38745_sim"

    invoke-interface {p1, v0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "ManualEntry"

    .line 20
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object p1, p1, Le/a/r/p/a;->a:Le/a/q2/d1/d;

    const-string v0, "readPhoneNumber_38745_manual_entry"

    invoke-interface {p1, v0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_2
    iget-object p1, p0, Le/a/r/z/s;->M:Le/a/r/c/z;

    invoke-interface {p1}, Le/a/r/c/z;->b()I

    move-result p1

    iput p1, p0, Le/a/r/z/s;->d:I

    .line 23
    invoke-virtual {p0}, Le/a/r/z/s;->Wj()V

    return-void
.end method

.method public c()V
    .locals 12

    const-string v0, "call"

    .line 1
    invoke-virtual {p0, v0}, Le/a/r/z/s;->Oj(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/r/z/s;->r:Ljava/util/HashSet;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    .line 5
    sget-object v2, Lcom/truecaller/wizard/verification/analytics/CallAction;->ANSWERED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    .line 6
    iget-object v3, p0, Le/a/r/z/s;->B:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    const/4 v7, 0x0

    .line 8
    iget-object v6, p0, Le/a/r/z/s;->p:Ljava/lang/String;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v9, 0x20

    const/4 v10, 0x0

    move v6, v0

    .line 9
    invoke-static/range {v1 .. v10}, Le/a/p5/s0/g;->N0(Le/a/r/z/d0/d;Lcom/truecaller/wizard/verification/analytics/CallAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Le/a/r/z/s;->q:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    iget-object v1, p0, Le/a/r/z/s;->B:Ljava/lang/String;

    iget-object v2, p0, Le/a/r/z/s;->C:Ljava/lang/String;

    check-cast v0, Le/a/r/z/d0/e;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "enteredPhoneNumber"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "enteredCountryCode"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, v0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    .line 14
    new-instance v4, Le/a/r/z/d0/c;

    .line 15
    iget-object v5, v0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    .line 16
    iget-object v0, v0, Le/a/r/z/d0/e;->c:Le/a/u3/g;

    .line 17
    iget-object v6, v0, Le/a/u3/g;->m4:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v8, 0x114

    aget-object v7, v7, v8

    invoke-virtual {v6, v0, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 19
    invoke-direct {v4, v1, v2, v5, v0}, Le/a/r/z/d0/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/wizard/WizardVerificationMode;Z)V

    .line 20
    invoke-interface {v3, v4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 21
    :cond_1
    invoke-virtual {p0}, Le/a/r/z/s;->Kj()V

    .line 22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/y;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/r/z/y;->Z9()V

    .line 23
    :cond_2
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
