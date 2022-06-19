.class public final Le/a/h/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/calling/initiate_call/InitiateCallHelper;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o5/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/p5/a0;

.field public final h:Le/a/k3/l/f;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/h/b0;

.field public final k:Le/a/p5/g;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/h/r0/b;

.field public final n:Landroid/telephony/TelephonyManager;

.field public final o:Le/a/b0/q/h0;

.field public final p:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Landroid/content/Context;

.field public final s:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h/d/d;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Le/a/h/e/j;

.field public final w:Le/a/h/e/f;

.field public final x:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Le/a/p5/a0;Le/a/k3/l/f;Lo3/a;Le/a/h/b0;Le/a/p5/g;Lo3/a;Le/a/h/r0/b;Landroid/telephony/TelephonyManager;Le/a/b0/q/h0;Lo3/a;Lo3/a;Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Le/a/h/e/j;Le/a/h/e/f;Ls1/w/f;)V
    .locals 16
    .param p21    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/o5/q1;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Le/a/p5/a0;",
            "Le/a/k3/l/f;",
            "Lo3/a<",
            "Le/a/e4/p;",
            ">;",
            "Le/a/h/b0;",
            "Le/a/p5/g;",
            "Lo3/a<",
            "Lcom/truecaller/settings/CallingSettings;",
            ">;",
            "Le/a/h/r0/b;",
            "Landroid/telephony/TelephonyManager;",
            "Le/a/b0/q/h0;",
            "Lo3/a<",
            "Le/a/h/e/h;",
            ">;",
            "Lo3/a<",
            "Le/a/f/b;",
            ">;",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/q2/w0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/h/d/d;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Le/a/h/e/j;",
            "Le/a/h/e/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

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

    const-string v0, "specialCharSequenceManager"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simSelectionHelper"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneAccountsManager"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiateCallRouter"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUI"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAnalytics"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberForCallHelper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiateContextCallHandler"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneAccountUtil"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/h/e/a;->d:Lo3/a;

    iput-object v2, v0, Le/a/h/e/a;->e:Lo3/a;

    iput-object v3, v0, Le/a/h/e/a;->f:Lo3/a;

    iput-object v4, v0, Le/a/h/e/a;->g:Le/a/p5/a0;

    iput-object v5, v0, Le/a/h/e/a;->h:Le/a/k3/l/f;

    iput-object v6, v0, Le/a/h/e/a;->i:Lo3/a;

    iput-object v7, v0, Le/a/h/e/a;->j:Le/a/h/b0;

    iput-object v8, v0, Le/a/h/e/a;->k:Le/a/p5/g;

    iput-object v9, v0, Le/a/h/e/a;->l:Lo3/a;

    iput-object v10, v0, Le/a/h/e/a;->m:Le/a/h/r0/b;

    iput-object v11, v0, Le/a/h/e/a;->n:Landroid/telephony/TelephonyManager;

    iput-object v12, v0, Le/a/h/e/a;->o:Le/a/b0/q/h0;

    iput-object v13, v0, Le/a/h/e/a;->p:Lo3/a;

    iput-object v14, v0, Le/a/h/e/a;->q:Lo3/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/h/e/a;->r:Landroid/content/Context;

    iput-object v15, v0, Le/a/h/e/a;->s:Lo3/a;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/h/e/a;->t:Lo3/a;

    iput-object v2, v0, Le/a/h/e/a;->u:Lo3/a;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/h/e/a;->v:Le/a/h/e/j;

    iput-object v2, v0, Le/a/h/e/a;->w:Le/a/h/e/f;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/h/e/a;->x:Ls1/w/f;

    .line 2
    new-instance v1, Le/a/h/e/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Le/a/h/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/h/e/a;->a:Ls1/g;

    .line 3
    new-instance v1, Le/a/h/e/a$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Le/a/h/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/h/e/a;->b:Ls1/g;

    .line 4
    new-instance v1, Le/a/h/e/a$a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Le/a/h/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/h/e/a;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/e/a;->g:Le/a/p5/a0;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.CALL_PHONE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/h/e/a;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/h/e/a;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/e/h;

    invoke-interface {v0, p1}, Le/a/h/e/h;->a(Landroid/app/Activity;)V

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/h/e/a;->k:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 5
    iget-object v0, p0, Le/a/h/e/a;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/e/h;

    invoke-interface {v0, p1}, Le/a/h/e/h;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/h/e/a;->p:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/e/h;

    invoke-interface {v0, p1}, Le/a/h/e/h;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V
    .locals 8

    const-string v0, "callOptions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "analyticsContext must not be empty. Please report this flow to the Calling BU."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/h/e/a;->x:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/h/e/a$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/h/e/a$b;-><init>(Le/a/h/e/a;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
