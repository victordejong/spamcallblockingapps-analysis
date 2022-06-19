.class public final Le/a/e/b/j/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/j/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/b/j/i;",
        ">;",
        "Le/a/e/b/j/h;"
    }
.end annotation


# instance fields
.field public d:Z

.field public final e:Ls1/w/f;

.field public final f:Lcom/truecaller/settings/CallingSettings;

.field public final g:Le/a/p5/g;

.field public final h:Le/a/p5/a0;

.field public final i:Le/a/h5/y;

.field public final j:Le/a/f/b;

.field public final k:Le/a/q2/a;

.field public final l:Le/a/u3/g;

.field public final m:Le/a/k/h;

.field public final n:Le/a/s2/c;

.field public final o:Le/a/s2/g/a;

.field public final p:Le/a/l/c/n/d;

.field public final q:Le/a/h5/m;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/truecaller/settings/CallingSettings;Le/a/p5/g;Le/a/p5/a0;Le/a/h5/y;Le/a/f/b;Le/a/q2/a;Le/a/u3/g;Le/a/k/h;Le/a/s2/c;Le/a/s2/g/a;Le/a/l/c/n/d;Le/a/h5/m;)V
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

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsView"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUI"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdEventLogger"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumNewFeatureLabelHelper"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/e/b/j/l;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    iput-object p3, p0, Le/a/e/b/j/l;->g:Le/a/p5/g;

    iput-object p4, p0, Le/a/e/b/j/l;->h:Le/a/p5/a0;

    iput-object p5, p0, Le/a/e/b/j/l;->i:Le/a/h5/y;

    iput-object p6, p0, Le/a/e/b/j/l;->j:Le/a/f/b;

    iput-object p7, p0, Le/a/e/b/j/l;->k:Le/a/q2/a;

    iput-object p8, p0, Le/a/e/b/j/l;->l:Le/a/u3/g;

    iput-object p9, p0, Le/a/e/b/j/l;->m:Le/a/k/h;

    iput-object p10, p0, Le/a/e/b/j/l;->n:Le/a/s2/c;

    iput-object p11, p0, Le/a/e/b/j/l;->o:Le/a/s2/g/a;

    iput-object p12, p0, Le/a/e/b/j/l;->p:Le/a/l/c/n/d;

    iput-object p13, p0, Le/a/e/b/j/l;->q:Le/a/h5/m;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/e/b/j/l;->d:Z

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/j/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/e/b/j/i;->g2(Z)V

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    .line 3
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;->STYLE_CLASSIC:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;

    const-string v2, "settingsCallerId"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->d(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/e/b/j/l;->k:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 6
    invoke-virtual {p0}, Le/a/e/b/j/l;->z5()V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/e/b/j/i;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/e/b/j/l;->l:Le/a/u3/g;

    .line 5
    iget-object v1, v0, Le/a/u3/g;->T2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xc9

    aget-object v3, v2, v3

    invoke-virtual {v1, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 7
    iget-object v3, p0, Le/a/e/b/j/l;->l:Le/a/u3/g;

    .line 8
    iget-object v4, v3, Le/a/u3/g;->U2:Le/a/u3/g$a;

    const/16 v5, 0xca

    aget-object v2, v2, v5

    invoke-virtual {v4, v3, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    .line 10
    invoke-interface {p1, v0}, Le/a/e/b/j/i;->T9(Z)V

    .line 11
    invoke-interface {p1, v2}, Le/a/e/b/j/i;->D3(Z)V

    .line 12
    iget-object v0, p0, Le/a/e/b/j/l;->m:Le/a/k/h;

    invoke-interface {v0}, Le/a/k/h;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/e/b/j/l;->m:Le/a/k/h;

    invoke-interface {v0}, Le/a/k/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Le/a/e/b/j/i;->d4(Z)V

    .line 13
    iget-object v0, p0, Le/a/e/b/j/l;->n:Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->m()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/e/b/j/i;->a7(Z)V

    .line 14
    invoke-interface {p1}, Le/a/e/b/j/i;->E0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-interface {p1}, Le/a/e/b/j/i;->S5()V

    :cond_2
    return-void
.end method

.method public final z5()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e/b/j/l;->j:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->l()Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/e/b/j/l;->j:Le/a/f/b;

    invoke-interface {v1}, Le/a/f/b;->f()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/j/i;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Le/a/e/b/j/i;->f7()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/j/i;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Le/a/e/b/j/i;->n3()V

    .line 5
    :cond_1
    :goto_0
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/j/i;

    if-eqz v2, :cond_5

    .line 6
    invoke-interface {v2, v0}, Le/a/e/b/j/i;->B9(Z)V

    .line 7
    iget-object v3, p0, Le/a/e/b/j/l;->n:Le/a/s2/c;

    invoke-interface {v3}, Le/a/s2/c;->b()Z

    move-result v3

    invoke-interface {v2, v3}, Le/a/e/b/j/i;->o1(Z)V

    .line 8
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/e/b/j/i;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Le/a/e/b/j/i;->Q0()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-interface {v2, v3}, Le/a/e/b/j/i;->ja(Z)V

    .line 9
    iget-object v3, p0, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v6, "enabledCallerIDforPB"

    invoke-interface {v3, v6}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Le/a/e/b/j/i;->s1(Z)V

    .line 10
    iget-object v3, p0, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v6, "afterCall"

    invoke-interface {v3, v6}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Le/a/e/b/j/i;->X8(Z)V

    .line 11
    iget-object v3, p0, Le/a/e/b/j/l;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v6, "afterCallForPbContacts"

    invoke-interface {v3, v6}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Le/a/e/b/j/i;->w3(Z)V

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    .line 12
    :goto_3
    invoke-interface {v2, v4}, Le/a/e/b/j/i;->R3(Z)V

    :cond_5
    return-void
.end method
