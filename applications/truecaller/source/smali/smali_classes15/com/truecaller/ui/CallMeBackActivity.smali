.class public Lcom/truecaller/ui/CallMeBackActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/graphics/drawable/ColorDrawable;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/truecaller/data/entity/Contact;

.field public g:Ljava/lang/String;

.field public h:Landroid/animation/ValueAnimator;

.field public i:Landroid/animation/ValueAnimator;

.field public j:Landroid/content/SharedPreferences;

.field public k:Le/a/j2;

.field public l:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

.field public m:Le/a/a/h1/i;

.field public final n:Le/a/q2/g$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xb2

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->a:Landroid/graphics/drawable/ColorDrawable;

    .line 3
    new-instance v0, Le/a/q2/g$b;

    const-string v1, "ANDROID_CallMeBack_DialogShown"

    invoke-direct {v0, v1}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "Dismiss"

    .line 4
    invoke-virtual {v0, v1, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    iput-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->n:Le/a/q2/g$b;

    return-void
.end method

.method public static synthetic pa(Lcom/truecaller/ui/CallMeBackActivity;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static qa(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ILjava/lang/String;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/CallMeBackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x800000

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "ARG_CONTACT"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "ARG_NUMBER"

    .line 6
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "ARG_REASON"

    .line 7
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "ARG_ANALYTICS_CONTEXT"

    .line 8
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "callContextOption"

    .line 10
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public finish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0485

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->close()V

    goto/16 :goto_2

    :cond_0
    const v0, 0x7f0a0198

    const-string v1, "Action"

    if-ne p1, v0, :cond_7

    .line 3
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->n:Le/a/q2/g$b;

    const-string v0, "AskToCallBack"

    invoke-virtual {p1, v1, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 4
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object p1

    invoke-virtual {p1}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/y/c/b;->b(Ljava/lang/String;)Le/a/y/g/d;

    move-result-object p1

    .line 6
    iget-boolean v0, p1, Le/a/y/g/d;->c:Z

    if-eqz v0, :cond_2

    .line 7
    iget p1, p1, Le/a/y/g/d;->b:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const v2, 0x7f120137

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Le/a/y/c/b;->y(JLjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const v2, 0x7f120919

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Le/a/y/c/b;->g(JLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->ta()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->sa()V

    .line 14
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->close()V

    return-void

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->m:Le/a/a/h1/i;

    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->d:Ljava/lang/String;

    new-instance v1, Le/a/e/h;

    invoke-direct {v1, p0}, Le/a/e/h;-><init>(Lcom/truecaller/ui/CallMeBackActivity;)V

    check-cast p1, Le/a/a/h1/k;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phoneNumber"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v2, p1, Le/a/a/h1/k;->b:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Le/a/e/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_4
    iget-object v2, p1, Le/a/a/h1/k;->a:Lq3/a/p1;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lq3/a/p1;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v5, p1, Le/a/a/h1/k;->i:Ls1/w/f;

    const/4 v6, 0x0

    new-instance v7, Le/a/a/h1/j;

    invoke-direct {v7, p1, v0, v1, v3}, Le/a/a/h1/j;-><init>(Le/a/a/h1/k;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p1, Le/a/a/h1/k;->a:Lq3/a/p1;

    goto :goto_2

    :cond_7
    const v0, 0x7f0a0346

    if-ne p1, v0, :cond_8

    .line 21
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->n:Le/a/q2/g$b;

    const-string v0, "Call"

    invoke-virtual {p1, v1, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 22
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->f3()Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    move-result-object p1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 23
    iget-object v1, p0, Lcom/truecaller/ui/CallMeBackActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/truecaller/ui/CallMeBackActivity;->g:Ljava/lang/String;

    const-string v0, "analyticsContext"

    .line 24
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 25
    iget-object v9, p0, Lcom/truecaller/ui/CallMeBackActivity;->l:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    const-string v0, "callContextOption"

    .line 26
    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v10, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 28
    invoke-interface {p1, v10}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->close()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    const p1, 0x7f0d0492

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->h:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->h:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->h:Landroid/animation/ValueAnimator;

    new-instance v1, Le/a/e/i;

    invoke-direct {v1, p0}, Le/a/e/i;-><init>(Lcom/truecaller/ui/CallMeBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, p1, [F

    .line 11
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    .line 12
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Le/a/e/j;

    invoke-direct {v1, p0}, Le/a/e/j;-><init>(Lcom/truecaller/ui/CallMeBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Le/a/e/q0;

    invoke-direct {v1, p0}, Le/a/e/q0;-><init>(Lcom/truecaller/ui/CallMeBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v0, "callMeBackNotifications"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->j:Landroid/content/SharedPreferences;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/truecaller/TrueApp;

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    .line 18
    invoke-interface {v0}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->S6()Le/a/a/h1/i;

    move-result-object v2

    iput-object v2, p0, Lcom/truecaller/ui/CallMeBackActivity;->m:Le/a/a/h1/i;

    const v2, 0x7f0a1245

    .line 20
    invoke-virtual {p0, v2}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a10de

    .line 21
    invoke-virtual {p0, v3}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a01b7

    .line 22
    invoke-virtual {p0, v4}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/truecaller/ui/components/AvatarView;

    const v5, 0x7f0a0198

    .line 23
    invoke-virtual {p0, v5}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0346

    .line 24
    invoke-virtual {p0, v6}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0b66

    .line 25
    invoke-virtual {p0, v7}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a1167

    .line 26
    invoke-virtual {p0, v8}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/truecaller/ui/CallMeBackActivity;->c:Landroid/view/View;

    const v8, 0x7f0a0485

    .line 27
    invoke-virtual {p0, v8}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/truecaller/ui/CallMeBackActivity;->b:Landroid/view/View;

    .line 28
    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v8, 0x7f0816a9

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "ARG_CONTACT"

    .line 35
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/truecaller/data/entity/Contact;

    iput-object v7, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    const-string v7, "ARG_NUMBER"

    .line 36
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/truecaller/ui/CallMeBackActivity;->d:Ljava/lang/String;

    const-string v7, "ARG_ANALYTICS_CONTEXT"

    .line 37
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/truecaller/ui/CallMeBackActivity;->g:Ljava/lang/String;

    const-string v7, "callContextOption"

    .line 38
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    iput-object v7, p0, Lcom/truecaller/ui/CallMeBackActivity;->l:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 39
    invoke-static {p0}, Le/a/b0/q/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 40
    iget-object v8, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/truecaller/ui/CallMeBackActivity;->d:Ljava/lang/String;

    if-nez v8, :cond_2

    goto/16 :goto_3

    .line 41
    :cond_2
    invoke-static {v8, v7}, Le/a/b0/q/b0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    const-string v7, "ARG_REASON"

    const/4 v8, 0x1

    .line 42
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    new-instance v7, Le/a/e/m0$b;

    invoke-direct {v7, p0}, Le/a/e/m0$b;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v8, v7, Le/a/e/m0$b;->c:Z

    const/16 v9, 0xa

    .line 45
    iput v9, v7, Le/a/e/m0$b;->f:I

    .line 46
    iput v9, v7, Le/a/e/m0$b;->e:I

    .line 47
    iget-object v9, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "Trigger"

    if-eqz v0, :cond_6

    if-eq v0, v8, :cond_3

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f120132

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p0}, Le/a/w4/t/b/b;->b(Landroid/content/Context;)Le/a/w4/t/b/b;

    move-result-object v0

    iget-object v4, p0, Lcom/truecaller/ui/CallMeBackActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Le/a/w4/t/b/b;->c(Ljava/lang/String;)Le/a/l4/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 50
    iget-object v4, v0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v4, :cond_5

    .line 51
    invoke-virtual {v0}, Le/a/l4/e;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 52
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v4, v0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 54
    invoke-virtual {v4}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v4

    sget-object v10, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-ne v4, v10, :cond_4

    move v4, v8

    goto :goto_0

    :cond_4
    move v4, v1

    .line 55
    :goto_0
    iput-boolean v4, v7, Le/a/e/m0$b;->b:Z

    const/4 v4, 0x6

    .line 56
    iput v4, v7, Le/a/e/m0$b;->f:I

    .line 57
    iput v4, v7, Le/a/e/m0$b;->e:I

    .line 58
    iget-object v4, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    .line 59
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {p0, v7, v4}, Lcom/truecaller/ui/CallMeBackActivity;->ra(Le/a/e/m0$b;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {v0, p0, v1, p1}, Le/a/l4/e;->d(Le/a/l4/e;Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const p1, 0x7f120130

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->n:Le/a/q2/g$b;

    const-string v0, "CallIncomplete"

    invoke-virtual {p1, v9, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    goto :goto_1

    .line 66
    :cond_6
    iput-boolean v1, v7, Le/a/e/m0$b;->b:Z

    .line 67
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    .line 68
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, v7, p1}, Lcom/truecaller/ui/CallMeBackActivity;->ra(Le/a/e/m0$b;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f120133

    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v0, v1

    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    invoke-static {p1, v8}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v2

    iget-object v7, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    .line 73
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v7

    .line 74
    invoke-virtual {v4, p1, v0, v2, v7}, Lcom/truecaller/ui/components/AvatarView;->b(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    const p1, 0x7f120131

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->n:Le/a/q2/g$b;

    const-string v0, "Busy"

    invoke-virtual {p1, v9, v0}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 77
    :goto_1
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->j:Landroid/content/SharedPreferences;

    const-wide/16 v9, 0x0

    invoke-interface {v0, p1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v6, v9

    const-wide/32 v9, 0x36ee80

    cmp-long p1, v6, v9

    if-gez p1, :cond_7

    goto :goto_2

    :cond_7
    move v8, v1

    :goto_2
    if-eqz v8, :cond_8

    const p1, 0x7f120138

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x8

    .line 81
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_8
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    const-string v0, "callMeBack"

    invoke-static {v0}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void

    .line 83
    :cond_9
    :goto_3
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->k:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/ui/CallMeBackActivity;->n:Le/a/q2/g$b;

    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/CallMeBackActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Le/a/e/r0;

    invoke-direct {v1, p0}, Le/a/e/r0;-><init>(Lcom/truecaller/ui/CallMeBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final ra(Le/a/e/m0$b;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Le/a/e/m0$b;->a()Le/a/e/m0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Le/a/e/m0;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Le/a/e/m0;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p2, "# "

    .line 4
    invoke-virtual {v0, v2, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    new-instance p2, Landroid/text/style/ImageSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    const/16 v1, 0x12

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final sa()V
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/ui/CallMeBackActivity$a;

    iget-object v1, p0, Lcom/truecaller/ui/CallMeBackActivity;->d:Ljava/lang/String;

    .line 2
    const-class v2, Le/a/f4/f/a;

    new-instance v3, Le/a/b0/b/a/b;

    invoke-direct {v3}, Le/a/b0/b/a/b;-><init>()V

    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->CALLMEBACK:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 3
    invoke-virtual {v3, v4}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 4
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 5
    invoke-virtual {v3, v2}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/f4/f/a;

    .line 6
    invoke-interface {v2, v1}, Le/a/f4/f/a;->a(Ljava/lang/String;)Lx3/b;

    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/truecaller/ui/CallMeBackActivity$a;-><init>(Lcom/truecaller/ui/CallMeBackActivity;Lx3/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 8
    sget-object v2, Le/a/j4/a/b;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/ui/CallMeBackActivity;->ta()V

    return-void
.end method

.method public final ta()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/truecaller/ui/CallMeBackActivity;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120134

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
