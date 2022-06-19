.class public final Le/a/e/b/k/x;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/k/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/e/b/k/u;",
        ">;",
        "Le/a/e/b/k/t;"
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public final d:Le/a/e/b/g;

.field public final e:Le/a/e/b/k/s;

.field public final f:Le/a/b0/o/a;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/u3/g;

.field public final i:Le/a/p5/a0;

.field public final j:Le/a/h/q0/a;

.field public final k:Le/a/o5/e2/a;

.field public final l:Le/a/q2/a;

.field public final m:Le/a/d4/c;

.field public final n:Le/a/f5/a;

.field public final o:Le/a/h3/b/a;

.field public final p:Le/a/h/t0/b;

.field public final q:Lcom/truecaller/settings/CallingSettings;

.field public final r:Le/a/o/j;

.field public final s:Le/a/z4/d;

.field public final t:Z

.field public final u:Le/a/q5/d;

.field public final v:Le/a/l/a/c0;

.field public final w:Le/a/q5/k/a;

.field public final x:Le/a/n5/c;


# direct methods
.method public constructor <init>(Le/a/e/b/g;Le/a/e/b/k/s;Le/a/b0/o/a;Le/a/p5/c0;Le/a/u3/g;Le/a/p5/a0;Le/a/h/q0/a;Le/a/o5/e2/a;Le/a/q2/a;Le/a/d4/c;Le/a/f5/a;Le/a/h3/b/a;Le/a/h/t0/b;Lcom/truecaller/settings/CallingSettings;Le/a/o/j;Le/a/z4/d;ZLe/a/q5/d;Le/a/l/a/c0;Le/a/q5/k/a;Le/a/n5/c;)V
    .locals 16
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

    const-string v0, "settingsUIPref"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettingsHelper"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missedCallReminderManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortcutHelper"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishManager"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipboardDataManager"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppInCallLog"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallUtils"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppCallerIdManager"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumTabDeeplinkHelper"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppCallerIdEventLogger"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcManager"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Le/a/u2/a/b;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    iput-object v2, v0, Le/a/e/b/k/x;->e:Le/a/e/b/k/s;

    iput-object v3, v0, Le/a/e/b/k/x;->f:Le/a/b0/o/a;

    iput-object v4, v0, Le/a/e/b/k/x;->g:Le/a/p5/c0;

    iput-object v5, v0, Le/a/e/b/k/x;->h:Le/a/u3/g;

    iput-object v6, v0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    iput-object v7, v0, Le/a/e/b/k/x;->j:Le/a/h/q0/a;

    iput-object v8, v0, Le/a/e/b/k/x;->k:Le/a/o5/e2/a;

    iput-object v9, v0, Le/a/e/b/k/x;->l:Le/a/q2/a;

    iput-object v10, v0, Le/a/e/b/k/x;->m:Le/a/d4/c;

    iput-object v11, v0, Le/a/e/b/k/x;->n:Le/a/f5/a;

    iput-object v12, v0, Le/a/e/b/k/x;->o:Le/a/h3/b/a;

    iput-object v13, v0, Le/a/e/b/k/x;->p:Le/a/h/t0/b;

    iput-object v14, v0, Le/a/e/b/k/x;->q:Lcom/truecaller/settings/CallingSettings;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/e/b/k/x;->r:Le/a/o/j;

    iput-object v15, v0, Le/a/e/b/k/x;->s:Le/a/z4/d;

    move/from16 v1, p17

    iput-boolean v1, v0, Le/a/e/b/k/x;->t:Z

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    iput-object v1, v0, Le/a/e/b/k/x;->u:Le/a/q5/d;

    iput-object v2, v0, Le/a/e/b/k/x;->v:Le/a/l/a/c0;

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    iput-object v1, v0, Le/a/e/b/k/x;->w:Le/a/q5/k/a;

    iput-object v2, v0, Le/a/e/b/k/x;->x:Le/a/n5/c;

    .line 2
    invoke-interface/range {p6 .. p6}, Le/a/p5/a0;->b()Z

    move-result v1

    iput-boolean v1, v0, Le/a/e/b/k/x;->c:Z

    return-void
.end method


# virtual methods
.method public I4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0, p1}, Le/a/e/b/g;->b1(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/e/b/k/x;->j:Le/a/h/q0/a;

    invoke-interface {p1}, Le/a/h/q0/a;->d()V

    :cond_0
    return-void
.end method

.method public Id(Z)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Le/a/e/b/k/x;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/u;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/e/b/k/u;->Qs()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/e/b/k/x;->r:Le/a/o/j;

    invoke-interface {v0, p1}, Le/a/o/j;->o(Z)V

    const-string v0, "settings_screen"

    const-string v1, "context"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/a/e/b/f;

    invoke-static {p1}, Le/a/e/a2;->e(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "OnBoardingContextCallSettings"

    invoke-direct {v1, v0, v2, p1}, Le/a/e/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/e/b/k/x;->l:Le/a/q2/a;

    invoke-static {v1, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public K3(ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/e/b/k/x;->x:Le/a/n5/c;

    invoke-interface {p2, p1}, Le/a/n5/c;->b(Z)V

    return-void
.end method

.method public M0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->o:Le/a/h3/b/a;

    invoke-interface {v0, p1}, Le/a/h3/b/a;->j(Z)V

    return-void
.end method

.method public Mi(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->n:Le/a/f5/a;

    invoke-interface {v0, p1}, Le/a/f5/a;->e(Z)V

    return-void
.end method

.method public O5()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->k:Le/a/o5/e2/a;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Le/a/o5/e2/a;->a(I)V

    return-void
.end method

.method public Wa()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->u:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/b/k/x;->v:Le/a/l/a/c0;

    const-string v1, "premiumWhatsappCallerId"

    invoke-interface {v0, v1}, Le/a/l/a/c0;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/e/b/k/u;->Yu()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/e/b/k/x;->u:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->u()Le/a/q5/c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le/a/q5/c;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 6
    iget-object v2, p0, Le/a/e/b/k/x;->u:Le/a/q5/d;

    invoke-interface {v2, v1}, Le/a/q5/d;->s(Z)V

    .line 7
    instance-of v0, v0, Le/a/q5/c$c;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/e/b/k/u;->ui()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->Cd(Z)V

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/e/b/k/x;->w:Le/a/q5/k/a;

    sget-object v2, Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;->WHATSAPP_CALLERID_SETTINGS:Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;

    const/4 v3, -0x1

    .line 11
    invoke-interface {v0, v1, v2, v3}, Le/a/q5/k/a;->b(ZLcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public X0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0, p1}, Le/a/e/b/g;->X0(Z)V

    return-void
.end method

.method public final Yc()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->m:Le/a/d4/c;

    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/b/k/x;->f:Le/a/b0/o/a;

    const-string v2, "featureFlash"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/e/b/k/x;->h:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public Zi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "selectedItemId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0, p1}, Le/a/e/b/g;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method public d7()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->k:Le/a/o5/e2/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/o5/e2/a;->a(I)V

    return-void
.end method

.method public k3()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/e/b/k/x;->q:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "whatsAppCallsEnabled"

    invoke-interface {v1, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->Wz(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1

    const v1, 0x7f1206b3

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->ne(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k8(ZLandroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/e/b/k/x;->f:Le/a/b0/o/a;

    xor-int/lit8 v2, p1, 0x1

    const-string v3, "flash_disabled"

    invoke-interface {v1, v3, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v1, p0, Le/a/e/b/k/x;->e:Le/a/e/b/k/s;

    invoke-virtual {v1, p2}, Le/a/e/b/k/s;->a(Landroid/content/Context;)V

    const-string p2, "settings_screen"

    .line 3
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Le/a/e/b/f;

    invoke-static {p1}, Le/a/e/a2;->e(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "flashEnabled"

    invoke-direct {v0, p2, v1, p1}, Le/a/e/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/e/b/k/x;->l:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public l1(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x79e69aed

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "show_notification"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/k/u;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/e/b/k/u;->G7()V

    :cond_2
    :goto_0
    return-void
.end method

.method public m7(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->s:Le/a/z4/d;

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "default_tab_on_launch"

    invoke-interface {v0, v2, v1}, Le/a/z4/d;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Le/a/e/b/k/x;->l:Le/a/q2/a;

    .line 3
    invoke-static {}, Le/a/l5/a/a2;->a()Le/a/l5/a/a2$b;

    move-result-object v1

    const-string v2, "defaultTabAtStartup"

    .line 4
    invoke-virtual {v1, v2}, Le/a/l5/a/a2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/a2$b;

    if-eqz p1, :cond_0

    const-string p1, "calls"

    goto :goto_0

    :cond_0
    const-string p1, "messages"

    .line 5
    :goto_0
    invoke-virtual {v1, p1}, Le/a/l5/a/a2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/a2$b;

    .line 6
    invoke-virtual {v1}, Le/a/l5/a/a2$b;->a()Le/a/l5/a/a2;

    move-result-object p1

    const-string v1, "AppSettingState.newBuild\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public ng()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->k:Le/a/o5/e2/a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Le/a/o5/e2/a;->a(I)V

    return-void
.end method

.method public onResume()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/e/b/k/x;->c:Z

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le/a/e/b/k/x;->c:Z

    .line 3
    iget-object v0, p0, Le/a/e/b/k/x;->u:Le/a/q5/d;

    invoke-interface {v0, v1}, Le/a/q5/d;->s(Z)V

    .line 4
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0, v1}, Le/a/e/b/g;->X0(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/e/b/k/x;->g:Le/a/p5/c0;

    const v2, 0x7f03001f

    invoke-interface {v0, v2}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026ial_pad_feedback_entries)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    .line 8
    new-instance v9, Le/a/e/c2/i0;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-direct {v9, v4, v7, v10, v6}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_2

    iget-object v3, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v3}, Le/a/e/b/g;->f1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Le/a/e/b/k/u;->jh(Ljava/util/List;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Wm(Z)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_4

    iget-object v2, p0, Le/a/e/b/k/x;->x:Le/a/n5/c;

    invoke-interface {v2}, Le/a/n5/c;->c()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->ii(Z)V

    .line 13
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_5

    iget-object v2, p0, Le/a/e/b/k/x;->x:Le/a/n5/c;

    invoke-interface {v2}, Le/a/n5/c;->a()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->Wm(Z)V

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_6

    iget-object v2, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v2}, Le/a/e/b/g;->m1()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->cw(Z)V

    .line 15
    :cond_6
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Le/a/e/b/k/x;->Yc()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_8

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->Qv(Z)V

    .line 17
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_a

    iget-object v2, p0, Le/a/e/b/k/x;->f:Le/a/b0/o/a;

    const-string v3, "flash_disabled"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->ai(Z)V

    goto :goto_3

    .line 18
    :cond_9
    :goto_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_a

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Qv(Z)V

    .line 19
    :cond_a
    :goto_3
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_e

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Rw(Z)V

    goto :goto_4

    .line 21
    :cond_b
    iget-object v0, p0, Le/a/e/b/k/x;->n:Le/a/f5/a;

    invoke-interface {v0}, Le/a/f5/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Le/a/e/b/k/x;->Yc()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_c

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->Rw(Z)V

    .line 23
    :cond_c
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_e

    iget-object v2, p0, Le/a/e/b/k/x;->n:Le/a/f5/a;

    invoke-interface {v2}, Le/a/f5/a;->c()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->Aw(Z)V

    goto :goto_4

    .line 24
    :cond_d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_e

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Rw(Z)V

    .line 25
    :cond_e
    :goto_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_f

    iget-object v2, p0, Le/a/e/b/k/x;->o:Le/a/h3/b/a;

    invoke-interface {v2}, Le/a/h3/b/a;->d()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->Up(Z)V

    .line 26
    :cond_f
    iget-object v0, p0, Le/a/e/b/k/x;->p:Le/a/h/t0/b;

    invoke-interface {v0}, Le/a/h/t0/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 27
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_10

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Fo(Z)V

    .line 28
    :cond_10
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_13

    iget-object v2, p0, Le/a/e/b/k/x;->p:Le/a/h/t0/b;

    invoke-interface {v2}, Le/a/h/t0/b;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->Wz(Z)V

    goto :goto_5

    .line 29
    :cond_11
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_12

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Hh(Z)V

    .line 30
    :cond_12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_13

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->Ox(Z)V

    .line 31
    :cond_13
    :goto_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_14

    iget-boolean v2, p0, Le/a/e/b/k/x;->t:Z

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->s9(Z)V

    .line 32
    :cond_14
    iget-object v0, p0, Le/a/e/b/k/x;->s:Le/a/z4/d;

    const-string v2, "default_tab_on_launch"

    invoke-interface {v0, v2, v4}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_15

    .line 33
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_16

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->Sy(Z)V

    goto :goto_6

    .line 34
    :cond_15
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_16

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->kb(Z)V

    .line 35
    :cond_16
    :goto_6
    iget-boolean v0, p0, Le/a/e/b/k/x;->t:Z

    if-eqz v0, :cond_17

    .line 36
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_17

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->F8(Z)V

    .line 37
    :cond_17
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_19

    iget-object v2, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v2}, Le/a/e/b/g;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Le/a/e/b/k/x;->h:Le/a/u3/g;

    .line 38
    iget-object v3, v2, Le/a/u3/g;->J:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x20

    aget-object v5, v5, v6

    invoke-virtual {v3, v2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_7

    :cond_18
    move v2, v4

    :goto_7
    invoke-interface {v0, v2}, Le/a/e/b/k/u;->Qd(Z)V

    .line 40
    :cond_19
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1a

    iget-object v2, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v2}, Le/a/e/b/g;->a1()Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/e/b/k/u;->Na(Z)V

    .line 41
    :cond_1a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v2}, Le/a/e/b/g;->i1()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    invoke-interface {v2}, Le/a/p5/a0;->b()Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v1

    goto :goto_8

    :cond_1b
    move v2, v4

    :goto_8
    invoke-interface {v0, v2}, Le/a/e/b/k/u;->M9(Z)V

    .line 42
    :cond_1c
    iget-object v0, p0, Le/a/e/b/k/x;->u:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->u()Le/a/q5/c;

    move-result-object v0

    .line 43
    sget-object v2, Le/a/q5/c$c;->a:Le/a/q5/c$c;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1e

    const v2, 0x7f120663

    invoke-interface {v0, v2, v4}, Le/a/e/b/k/u;->Wb(IZ)V

    goto :goto_9

    .line 44
    :cond_1d
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/k/u;

    if-eqz v2, :cond_1e

    const v3, 0x7f120664

    .line 45
    invoke-virtual {v0}, Le/a/q5/c;->a()Z

    move-result v0

    .line 46
    invoke-interface {v2, v3, v0}, Le/a/e/b/k/u;->Wb(IZ)V

    .line 47
    :cond_1e
    :goto_9
    iget-object v0, p0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 48
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_20

    const v2, 0x7f1206b2

    .line 49
    iget-object v3, p0, Le/a/e/b/k/x;->q:Lcom/truecaller/settings/CallingSettings;

    const-string v5, "whatsAppCallsEnabled"

    invoke-interface {v3, v5}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 50
    invoke-interface {v0, v2, v3}, Le/a/e/b/k/u;->rk(IZ)V

    goto :goto_a

    .line 51
    :cond_1f
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_20

    const v2, 0x7f1206b1

    invoke-interface {v0, v2, v4}, Le/a/e/b/k/u;->rk(IZ)V

    .line 52
    :cond_20
    :goto_a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_22

    iget-object v2, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v2}, Le/a/e/b/g;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Le/a/e/b/k/x;->h:Le/a/u3/g;

    .line 53
    iget-object v3, v2, Le/a/u3/g;->h0:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x39

    aget-object v5, v5, v6

    invoke-virtual {v3, v2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 54
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v1

    goto :goto_b

    :cond_21
    move v2, v4

    :goto_b
    invoke-interface {v0, v2}, Le/a/e/b/k/u;->ls(Z)V

    .line 55
    :cond_22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_23

    iget-object v2, p0, Le/a/e/b/k/x;->q:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "showIncomingCallNotifications"

    invoke-interface {v2, v3, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->u9(Z)V

    .line 56
    :cond_23
    iget-object v0, p0, Le/a/e/b/k/x;->r:Le/a/o/j;

    invoke-interface {v0}, Le/a/o/j;->isSupported()Z

    move-result v0

    if-nez v0, :cond_24

    .line 57
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_25

    invoke-interface {v0, v4}, Le/a/e/b/k/u;->vs(Z)V

    goto :goto_c

    .line 58
    :cond_24
    iget-object v0, p0, Le/a/e/b/k/x;->r:Le/a/o/j;

    new-instance v1, Le/a/e/b/k/v;

    invoke-direct {v1, p0}, Le/a/e/b/k/v;-><init>(Le/a/e/b/k/x;)V

    invoke-interface {v0, v1}, Le/a/o/j;->h(Ls1/z/b/l;)V

    .line 59
    iget-object v0, p0, Le/a/e/b/k/x;->r:Le/a/o/j;

    new-instance v1, Le/a/e/b/k/w;

    invoke-direct {v1, p0}, Le/a/e/b/k/w;-><init>(Le/a/e/b/k/x;)V

    invoke-interface {v0, v1}, Le/a/o/j;->g(Ls1/z/b/l;)V

    :cond_25
    :goto_c
    return-void
.end method

.method public q3()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v1}, Le/a/e/b/g;->i1()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->M9(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/k/u;

    if-eqz v0, :cond_1

    const v1, 0x7f120fa9

    invoke-interface {v0, v1}, Le/a/e/b/k/u;->ne(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public qf(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/b/k/x;->q:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "whatsAppCallsEnabled"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "Setting"

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le/a/e/b/f;

    invoke-static {p1}, Le/a/e/a2;->e(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "WhatsApp"

    invoke-direct {v1, v0, v2, p1}, Le/a/e/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/e/b/k/x;->l:Le/a/q2/a;

    invoke-static {v1, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public rh(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->q:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "showIncomingCallNotifications"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public ve()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;->MANAGE_CALL_REASON:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;

    const-string v2, "settings_screen"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/e/b/k/x;->l:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public w0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/k/x;->d:Le/a/e/b/g;

    invoke-interface {v0, p1}, Le/a/e/b/g;->w0(Z)V

    return-void
.end method
