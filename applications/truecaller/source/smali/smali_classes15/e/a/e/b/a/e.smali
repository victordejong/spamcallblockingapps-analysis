.class public final Le/a/e/b/a/e;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/e/b/a/d;",
        ">;",
        "Le/a/e/b/a/c;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/q2/d1/a;

.field public final d:Le/a/e/b/a/b;

.field public final e:Le/a/e/b/g;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/p5/c0;

.field public final h:Le/a/d4/a;

.field public final i:Le/a/b0/e/f;

.field public final j:Le/a/d4/c;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/q2/d1/a;Le/a/e/b/a/b;Le/a/e/b/g;Le/a/q2/a;Le/a/p5/c0;Le/a/d4/a;Le/a/b0/e/f;Le/a/d4/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aboutSettingsHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsUIPref"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMarketUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/e/b/a/e;->b:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/e/b/a/e;->c:Le/a/q2/d1/a;

    iput-object p3, p0, Le/a/e/b/a/e;->d:Le/a/e/b/a/b;

    iput-object p4, p0, Le/a/e/b/a/e;->e:Le/a/e/b/g;

    iput-object p5, p0, Le/a/e/b/a/e;->f:Le/a/q2/a;

    iput-object p6, p0, Le/a/e/b/a/e;->g:Le/a/p5/c0;

    iput-object p7, p0, Le/a/e/b/a/e;->h:Le/a/d4/a;

    iput-object p8, p0, Le/a/e/b/a/e;->i:Le/a/b0/e/f;

    iput-object p9, p0, Le/a/e/b/a/e;->j:Le/a/d4/c;

    return-void
.end method


# virtual methods
.method public C5()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/e/b/a/e;->Hj()V

    return-void
.end method

.method public Ej()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/b/a/e;->i:Le/a/b0/e/f;

    invoke-interface {v1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v1

    invoke-static {v1}, Le/a/n/g0;->U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Hj()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Le/a/e/b/a/e;->g:Le/a/p5/c0;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const v6, 0x7f12063a

    invoke-interface {v3, v6, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {p0}, Le/a/e/b/a/e;->Ij()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    iget-object v3, p0, Le/a/e/b/a/e;->g:Le/a/p5/c0;

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f120639

    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 5
    iget-object v3, p0, Le/a/e/b/a/e;->b:Le/a/b0/o/a;

    const-string v4, "profileUserId"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 7
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TC: %s %s - %s %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/e/b/a/e;->d:Le/a/e/b/a/b;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v1, Le/a/e/b/a/b;->c:Landroid/content/Context;

    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v0, v2}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    const v1, 0x7f120704

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->a(I)V

    :cond_0
    return-void
.end method

.method public final Ij()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Le/a/e/b/a/e;->d:Le/a/e/b/a/b;

    .line 2
    iget-object v3, v3, Le/a/e/b/a/b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "v%s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(locale, format, *args)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v5, p0, Le/a/e/b/a/e;->d:Le/a/e/b/a/b;

    .line 5
    iget-object v5, v5, Le/a/e/b/a/b;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_1

    .line 7
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Le/a/e/b/a/e;->d:Le/a/e/b/a/b;

    .line 8
    iget-object v6, v6, Le/a/e/b/a/b;->a:Ljava/lang/String;

    aput-object v6, v5, v4

    .line 9
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, " (%s)"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public Lh()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/e/b/a/e;->d:Le/a/e/b/a/b;

    iget-object v1, p0, Le/a/e/b/a/e;->g:Le/a/p5/c0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Le/a/e/b/a/e;->c:Le/a/q2/d1/a;

    invoke-interface {v3}, Le/a/q2/d1/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120632

    .line 3
    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026outDebugId_clip, debugId)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/a/e/b/a/b;->c:Landroid/content/Context;

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    const v1, 0x7f120704

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->a(I)V

    :cond_0
    return-void
.end method

.method public Oc()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/b/a/e;->h:Le/a/d4/a;

    invoke-interface {v0}, Le/a/d4/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/a/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/e/b/a/d;->b(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/b/a/e;->e:Le/a/e/b/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/e/b/g;->l1(Z)V

    .line 4
    iget-object v0, p0, Le/a/e/b/a/e;->e:Le/a/e/b/g;

    invoke-interface {v0, v1}, Le/a/e/b/g;->k1(Z)V

    :cond_1
    return-void
.end method

.method public R8()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    const-string v1, "https://blog.truecaller.com"

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public kg()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    const-string v1, "about"

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->am(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m1()V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->FEEDBACK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    const-string v2, "settings_screen"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->o(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p0, Le/a/e/b/a/e;->f:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/b/a/d;->yc()V

    :cond_0
    return-void
.end method

.method public nh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/e/b/a/e;->Hj()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    new-instance v0, Le/a/e/c2/i0;

    invoke-virtual {p0}, Le/a/e/b/a/e;->Ij()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    .line 2
    invoke-direct {v0, v2, v1, v3, v3}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/a/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/e/b/a/d;->su(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/e/b/a/e;->e:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Le/a/e/b/a/d;->Wi(Z)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Le/a/e/c2/i0;

    .line 8
    iget-object v1, p0, Le/a/e/b/a/e;->b:Le/a/b0/o/a;

    const-wide/16 v4, 0x0

    const-string v6, "profileUserId"

    invoke-interface {v1, v6, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 9
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-direct {v0, v2, v1, v3, v3}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/a/d;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Le/a/e/b/a/d;->z7(Ljava/util/List;)V

    .line 13
    :cond_2
    :goto_0
    new-instance v0, Le/a/e/c2/i0;

    .line 14
    iget-object v1, p0, Le/a/e/b/a/e;->c:Le/a/q2/d1/a;

    invoke-interface {v1}, Le/a/q2/d1/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-direct {v0, v2, v1, v3, v3}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/e/b/a/d;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Le/a/e/b/a/d;->ut(Ljava/util/List;)V

    .line 18
    :cond_3
    iget-object v0, p0, Le/a/e/b/a/e;->e:Le/a/e/b/g;

    invoke-interface {v0}, Le/a/e/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Le/a/e/b/a/d;->vr(Z)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Le/a/e/b/a/e;->j:Le/a/d4/c;

    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Le/a/e/b/a/e;->j:Le/a/d4/c;

    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_6

    const v1, 0x7f120634

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->cm(I)V

    goto :goto_1

    .line 23
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Le/a/e/b/a/d;->N6(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public sj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/b/a/d;

    if-eqz v0, :cond_0

    const-string v1, "file:///android_asset/third-party-acknowledgement.html"

    invoke-interface {v0, v1}, Le/a/e/b/a/d;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
