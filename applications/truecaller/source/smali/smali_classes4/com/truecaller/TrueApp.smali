.class public Lcom/truecaller/TrueApp;
.super Le/a/y1;
.source "SourceFile"

# interfaces
.implements Le/a/w1;
.implements Le/a/y/c/i;
.implements Le/a/z3/b;
.implements Le/a/n/e0;
.implements Le/a/q2/w0/h/g;
.implements Ln3/m0/c$b;
.implements Le/a/y2/o;
.implements Le/a/a/k/s;
.implements Le/a/p/k;
.implements Le/a/v3/b;
.implements Le/a/g0/b;
.implements Le/a/k0/k/c;
.implements Le/a/h4/q/g;
.implements Le/a/p4/a;
.implements Le/a/q3/g;
.implements Le/a/e3/d;
.implements Le/a/l/g2;
.implements Le/a/v/l/b;
.implements Le/a/b0/q/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/TrueApp$b;
    }
.end annotation


# static fields
.field public static r:Z


# instance fields
.field public final c:Lcom/google/firebase/perf/metrics/Trace;

.field public d:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ln3/s/a/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/i/m/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/b/g/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/z0/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public volatile j:Le/a/a/k/r;

.field public volatile k:Le/a/p/j;

.field public volatile l:Le/a/k0/k/b;

.field public volatile m:Le/a/q3/f;

.field public volatile n:Le/a/d0/b/h;

.field public volatile o:Le/a/v/l/a;

.field public p:Le/a/j2;

.field public final q:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/y1;-><init>()V

    const-string v0, "TrueApp#init"

    .line 2
    invoke-static {v0}, Le/m/d/z/c;->a(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/TrueApp;->c:Lcom/google/firebase/perf/metrics/Trace;

    .line 3
    new-instance v1, Le/a/o5/w1;

    new-instance v2, Le/a/o0;

    invoke-direct {v2, p0}, Le/a/o0;-><init>(Lcom/truecaller/TrueApp;)V

    invoke-direct {v1, v2}, Le/a/o5/w1;-><init>(Ls1/z/b/a;)V

    .line 4
    sget-object v2, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    .line 5
    sput-object v1, Le/m/f/a/c;->a:Le/m/f/a/b;

    .line 6
    new-instance v1, Lcom/truecaller/TrueApp$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/truecaller/TrueApp$b;-><init>(Lcom/truecaller/TrueApp;Lcom/truecaller/TrueApp$a;)V

    iput-object v1, p0, Lcom/truecaller/TrueApp;->q:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->setIsDebugBuild(Z)V

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public static b0()Lcom/truecaller/TrueApp;
    .locals 1

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    check-cast v0, Lcom/truecaller/TrueApp;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 3

    const-string v0, "calls"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/truecaller/ui/TruecallerInit;->Va(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public B()Le/a/q3/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->m:Le/a/q3/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/q3/f;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/TrueApp;->m:Le/a/q3/f;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->l()Le/a/q3/f;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/TrueApp;->m:Le/a/q3/f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/TrueApp;->m:Le/a/q3/f;

    return-object v0
.end method

.method public C()Ln3/m0/c;
    .locals 2

    .line 1
    new-instance v0, Ln3/m0/c$a;

    invoke-direct {v0}, Ln3/m0/c$a;-><init>()V

    iget-object v1, p0, Lcom/truecaller/TrueApp;->e:Ln3/s/a/a;

    .line 2
    iput-object v1, v0, Ln3/m0/c$a;->a:Ln3/m0/b0;

    const/16 v1, 0x4e20

    .line 3
    iput v1, v0, Ln3/m0/c$a;->b:I

    const/16 v1, 0x7530

    .line 4
    iput v1, v0, Ln3/m0/c$a;->c:I

    const/16 v1, 0x32

    .line 5
    invoke-static {v1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Ln3/m0/c$a;->d:I

    .line 6
    new-instance v1, Ln3/m0/c;

    invoke-direct {v1, v0}, Ln3/m0/c;-><init>(Ln3/m0/c$a;)V

    return-object v1
.end method

.method public D()Le/a/l/f2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->O6()Le/a/l/f2;

    move-result-object v0

    return-object v0
.end method

.method public E()Le/a/e3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->r3()Le/a/e3/c;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    const v0, 0x12a18e

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    const-string v0, "12.21.6"

    return-object v0
.end method

.method public H()I
    .locals 1

    const v0, 0x12a18e

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    const-string v0, "12.21.6"

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    const-string v0, "GOOGLE_PLAY"

    return-object v0
.end method

.method public M(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/TrueApp;->R()Le/a/u3/g;

    move-result-object v0

    invoke-virtual {v0}, Le/a/u3/g;->n()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;->c:I

    const-string v0, "context"

    .line 3
    const-class v1, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;

    .line 4
    invoke-static {p1, v0, p1, v1}, Le/d/c/a/a;->q0(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->qa(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public O()Ljava/lang/String;
    .locals 1

    const-string v0, "tc.settings"

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "language"

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Le/a/l0/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->D6()Le/a/l0/k;

    move-result-object v0

    return-object v0
.end method

.method public R()Le/a/u3/g;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    return-object v0
.end method

.method public S()Le/a/m0/d1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i4()Le/a/m0/d1/a;

    move-result-object v0

    return-object v0
.end method

.method public U()Le/a/b4/a/d;
    .locals 1

    .line 1
    new-instance v0, Le/a/b4/a/e;

    invoke-direct {v0, p0}, Le/a/b4/a/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public W()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    .line 2
    invoke-static {}, Le/a/r/t/c;->qa()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x3

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "\n"

    const-string v3, "$this$getStacktraceString"

    .line 5
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "separator"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v3, "stackTrace"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v1

    sget-object v3, Le/a/p5/s0/t;->j:Le/a/p5/s0/t;

    invoke-static {v1, v3}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 7
    sget-object v3, Lv1;->c:Lv1;

    const-string v5, "$this$dropWhile"

    .line 8
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "predicate"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v7, Ls1/e0/f;

    invoke-direct {v7, v1, v3}, Ls1/e0/f;-><init>(Ls1/e0/k;Ls1/z/b/l;)V

    .line 10
    sget-object v1, Lv1;->d:Lv1;

    .line 11
    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Ls1/e0/f;

    invoke-direct {v3, v7, v1}, Ls1/e0/f;-><init>(Ls1/e0/k;Ls1/z/b/l;)V

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Ls1/e0/x;->o(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object v1

    move-object v3, v1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    .line 15
    invoke-static/range {v3 .. v10}, Ls1/e0/x;->j(Ls1/e0/k;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    :cond_2
    return v0
.end method

.method public X()Z
    .locals 1

    .line 1
    invoke-static {}, Le/a/j4/b/a/h;->p()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v0

    return v0
.end method

.method public Z(Ljava/lang/String;ZLcom/truecaller/common/account/analytics/LogoutContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/truecaller/TrueApp;->d0(Ljava/lang/String;ZZLcom/truecaller/common/account/analytics/LogoutContext;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/f/b;->m(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o7()Le/a/o5/j;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Le/a/o5/j;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/n2/c/a;->a(Le/a/o5/j;Landroid/app/Activity;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->A5()Le/a/n2/c/b/b;

    move-result-object v1

    .line 5
    iget-object v2, v1, Le/a/n2/c/b/b;->c:Le/a/i4/e;

    const v3, 0x7f0a0046

    invoke-interface {v2, v3}, Le/a/i4/e;->f(I)V

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v1, Le/a/n2/c/b/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/h;

    sget-object v1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->IMMEDIATE:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    invoke-interface {v0, v1}, Le/a/g0/h;->a(Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v1, Le/a/n2/c/b/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/h;

    invoke-interface {v0}, Le/a/g0/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v1}, Le/a/n2/c/b/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a0(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le/a/b0/c;->Y()Le/a/b0/e/r/a;

    move-result-object v2

    const-string v3, "profileNumber"

    .line 4
    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profileCountryIso"

    .line 5
    invoke-interface {v2, v4}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v5}, Le/a/q2/e;->D3()Le/a/q2/d1/a;

    move-result-object v5

    invoke-interface {v5}, Le/a/q2/d1/a;->a()Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Le/a/j4/b/a/d;

    invoke-direct {v6, p0}, Le/a/j4/b/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Le/a/j4/b/a/d;->b()V

    .line 8
    new-instance v6, Le/a/j4/b/a/f;

    invoke-direct {v6, p0}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    .line 9
    sget-object v7, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    monitor-enter v7

    .line 10
    :try_start_0
    invoke-virtual {v6}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TreeSet;->clear()V

    .line 11
    invoke-virtual {v6}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v8

    check-cast v8, Le/a/m0/c1/b0;

    invoke-virtual {v8}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    check-cast v8, Le/a/m0/c1/b0$e;

    :try_start_1
    invoke-virtual {v8}, Le/a/m0/c1/b0$e;->clear()Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {v8}, Le/a/m0/c1/b0$e;->apply()V

    .line 14
    iget-object v6, v6, Le/a/j4/b/a/b;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V

    .line 15
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    sget-object v6, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    sget-object v6, Le/a/j4/b/a/h;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 18
    sget-boolean v6, Le/a/j4/b/a/h;->a:Z

    if-eqz v6, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Le/a/j4/b/a/h;->a()V

    .line 20
    :goto_0
    new-instance v6, Le/a/j4/b/a/j;

    invoke-direct {v6, p0}, Le/a/j4/b/a/j;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 21
    invoke-virtual {v6, v7}, Le/a/j4/b/a/a;->c(Z)V

    .line 22
    invoke-static {p0}, Le/a/e/a2;->k(Landroid/content/Context;)Z

    .line 23
    invoke-static {p0}, Le/a/i/w/e;->a(Landroid/content/Context;)Le/a/i/w/d;

    move-result-object v6

    invoke-interface {v6}, Le/a/i/w/d;->reset()V

    .line 24
    invoke-static {p0}, Le/a/j4/b/a/h;->n(Landroid/content/Context;)V

    .line 25
    invoke-interface {v0, p0}, Le/a/b0/o/a;->c(Landroid/content/Context;)V

    .line 26
    invoke-interface {v2, p0}, Le/a/b0/e/r/a;->c(Landroid/content/Context;)V

    .line 27
    iget-object v0, p0, Lcom/truecaller/TrueApp;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/m/c;

    invoke-interface {v0}, Le/a/c/i/m/c;->a()V

    .line 28
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->B2()Le/a/w3/i;

    move-result-object v0

    sget-object v6, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->c()Le/a/i5/d;

    move-result-object v6

    invoke-interface {v0, v6}, Le/a/w3/i;->a(Le/a/i5/d;)V

    .line 29
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->D3()Le/a/q2/d1/a;

    move-result-object v0

    invoke-interface {v0, v5}, Le/a/q2/d1/a;->b(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->z()Le/a/d/f;

    move-result-object v0

    invoke-interface {v0}, Le/a/d/f;->f()V

    .line 31
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->y()Le/a/k/h;

    move-result-object v0

    invoke-interface {v0}, Le/a/k/h;->f()V

    if-nez p1, :cond_1

    const-string p1, "profileNumber"

    .line 32
    invoke-interface {v2, p1, v3}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "profileCountryIso"

    .line 33
    invoke-interface {v2, p1, v4}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/f/b;->m(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Le/a/r/t/c;->Ba()V

    .line 36
    invoke-interface {v1}, Le/a/b0/c;->U7()Le/a/b0/l/a;

    move-result-object p1

    invoke-interface {p1}, Le/a/b0/l/a;->b()V

    .line 37
    iget-object p1, p0, Lcom/truecaller/TrueApp;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f4/b/g/b;

    invoke-interface {p1}, Le/a/f4/b/g/b;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    sget p1, Le/a/r3/g;->a:I

    const-string p1, "application"

    .line 3
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Le/m/a/h/a/f/a;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public b(Landroid/net/Uri;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "pbid"

    .line 2
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/g0;->L(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 3
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "tcphoto"

    .line 4
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o7()Le/a/o5/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/a/o5/j;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Le/a/n2/c/a;->a(Le/a/o5/j;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 5
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v3

    const-string v4, "profileFirstName"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 6
    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v3

    const-string v4, "profileLastName"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, " "

    .line 7
    invoke-static {v2, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v2

    const-string v3, "profileEmail"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/truecaller/suspension/ui/SuspensionActivity;->f:Lcom/truecaller/suspension/ui/SuspensionActivity$b;

    const-string v3, "context"

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/suspension/ui/SuspensionActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.extra.USER"

    .line 12
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    .line 13
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public c0()Le/a/d0/b/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->n:Le/a/d0/b/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/d0/b/h;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/TrueApp;->n:Le/a/d0/b/h;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->c()Le/a/d0/b/h;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/TrueApp;->n:Le/a/d0/b/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/TrueApp;->n:Le/a/d0/b/h;

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/f/b;->q(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A5()Le/a/n2/c/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->o7()Le/a/o5/j;

    move-result-object v1

    invoke-virtual {v1}, Le/a/o5/j;->b()Z

    move-result v1

    .line 3
    iget-object v2, v0, Le/a/n2/c/b/b;->c:Le/a/i4/e;

    const v3, 0x7f0a0046

    invoke-interface {v2, v3}, Le/a/i4/e;->f(I)V

    if-nez v1, :cond_0

    const v1, 0x7f12080f

    const v2, 0x7f12080d

    const-string v3, "notificationAccountUnsuspended"

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Le/a/n2/c/b/b;->b(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d0(Ljava/lang/String;ZZLcom/truecaller/common/account/analytics/LogoutContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    invoke-interface {v0, p1, p4}, Le/a/b0/e/l;->i(Ljava/lang/String;Lcom/truecaller/common/account/analytics/LogoutContext;)Z

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/truecaller/TrueApp;->a0(Z)V

    .line 3
    iget-object p4, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p4}, Le/a/j2;->M7()Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->j()V

    .line 4
    sget-object p4, Le/a/j4/b/c/d;->b:[I

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p4, v1

    if-eq v2, p1, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Le/a/o5/f2/b;

    invoke-direct {v2, p0}, Le/a/o5/f2/b;-><init>(Landroid/app/Application;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Le/a/o5/f2/a;

    invoke-direct {v2, p0}, Le/a/o5/f2/a;-><init>(Landroid/app/Application;)V

    .line 7
    :goto_1
    invoke-virtual {v2}, Le/a/o5/f2/c;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 8
    iget-object p2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p2}, Le/a/j2;->o7()Le/a/o5/j;

    move-result-object p2

    invoke-virtual {p2}, Le/a/o5/j;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    .line 9
    const-class p2, Lcom/truecaller/ui/WizardActivity;

    sget-object p3, Lcom/truecaller/wizard/framework/WizardStartContext;->CHANGE_PHONE:Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {p0, p2, p3}, Le/a/r/t/c;->Ga(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    goto :goto_2

    .line 10
    :cond_4
    const-class p2, Lcom/truecaller/ui/WizardActivity;

    sget-object p3, Lcom/truecaller/wizard/framework/WizardStartContext;->LOGOUT:Lcom/truecaller/wizard/framework/WizardStartContext;

    invoke-static {p0, p2, p3}, Le/a/r/t/c;->Ha(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    :cond_5
    :goto_2
    return p1
.end method

.method public e()Le/a/n/d2;
    .locals 1

    .line 1
    sget-object v0, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v0}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v0

    invoke-interface {v0}, Le/a/l2;->f()Le/a/n/g;

    move-result-object v0

    check-cast v0, Le/a/t1$c;

    .line 2
    iget-object v0, v0, Le/a/t1$c;->y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n/d2;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 11

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    invoke-static {v2, v3}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-static {v2, v0}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p1

    .line 8
    invoke-interface/range {v4 .. v10}, Le/a/h0/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 10
    sget-object v0, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public g()Le/a/k0/k/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->l:Le/a/k0/k/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/k0/k/b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/TrueApp;->l:Le/a/k0/k/b;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->d()Le/a/k0/k/b;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/TrueApp;->l:Le/a/k0/k/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/TrueApp;->l:Le/a/k0/k/b;

    return-object v0
.end method

.method public h()Lcom/truecaller/flashsdk/models/FlashContact;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v1

    const-string v2, "profileFirstName"

    .line 3
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profileNumber"

    .line 4
    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "profileLastName"

    .line 6
    invoke-interface {v0, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v3, Lcom/truecaller/flashsdk/models/FlashContact;

    invoke-direct {v3, v1, v2, v0}, Lcom/truecaller/flashsdk/models/FlashContact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    sget-object v2, Lcom/truecaller/details_view/analytics/SourceType;->GovernmentServices:Lcom/truecaller/details_view/analytics/SourceType;

    const/16 v3, 0xa

    const-string v4, "context"

    .line 4
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "source"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ARG_TC_ID"

    .line 6
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME"

    .line 7
    invoke-virtual {v5, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "NORMALIZED_NUMBER"

    .line 8
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RAW_NUMBER"

    .line 9
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COUNTRY_CODE"

    .line 10
    invoke-virtual {v5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "ARG_SOURCE_TYPE"

    invoke-virtual {v5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    const/4 p2, 0x1

    .line 12
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 13
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SEARCH_TYPE"

    .line 14
    invoke-virtual {v5, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 15
    invoke-virtual {v5, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x20000000

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 17
    invoke-static {p0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intentWithExtras"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public j(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    const-string v1, "+"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-static {v1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p3, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p3, v2

    .line 4
    :goto_0
    sget-object v0, Lcom/truecaller/details_view/analytics/SourceType;->External:Lcom/truecaller/details_view/analytics/SourceType;

    const/16 v1, 0xa

    const-string v3, "context"

    .line 5
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "source"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "ARG_TC_ID"

    .line 7
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "NAME"

    .line 8
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "NORMALIZED_NUMBER"

    .line 9
    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RAW_NUMBER"

    .line 10
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COUNTRY_CODE"

    .line 11
    invoke-virtual {v4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "ARG_SOURCE_TYPE"

    invoke-virtual {v4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    const/4 p2, 0x1

    .line 13
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 14
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SEARCH_TYPE"

    .line 15
    invoke-virtual {v4, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 16
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x20000000

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 18
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intentWithExtras"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v3

    new-instance p1, Ls1/k;

    invoke-static {v1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x0

    sget-object v9, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    sget-object v10, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->PERSON:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v11, 0x0

    const-string v5, "PHONE_NUMBER"

    const-string v7, "quickReply"

    move-object v6, p3

    invoke-interface/range {v3 .. v11}, Le/a/h0/j;->i(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const-string p3, "callMeBackNotifications"

    .line 22
    invoke-virtual {p0, p3, p1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    const-string p2, "key_last_call_origin"

    const-string p3, "callMeBackNotification"

    .line 25
    invoke-interface {p1, p2, p3}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public k(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->E7()Le/a/w3/e;

    move-result-object v2

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "flash"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/flashsdk/models/Flash;->c()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v14, v5

    goto :goto_0

    :cond_0
    move v14, v4

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v3

    const-string v6, "flash.history"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const-string v6, " "

    invoke-static {v3, v6, v15, v4}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/flashsdk/models/Flash;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v4, "flash.sender"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v3, v1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 10
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-wide v6, v1, Lcom/truecaller/flashsdk/models/Flash;->g:J

    :goto_1
    move-wide v10, v6

    .line 12
    iget-object v2, v2, Le/a/w3/e;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l0/c;

    new-instance v4, Lcom/truecaller/data/entity/HistoryEvent;

    new-instance v21, Lcom/truecaller/data/entity/CallLogFlashItem;

    .line 13
    iget-wide v7, v1, Lcom/truecaller/flashsdk/models/Flash;->g:J

    const/16 v1, 0x2b

    .line 14
    invoke-static {v1, v3}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1e0

    const/16 v20, 0x0

    move-object/from16 v6, v21

    move v3, v15

    move v15, v1

    invoke-direct/range {v6 .. v20}, Lcom/truecaller/data/entity/CallLogFlashItem;-><init>(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;ILs1/z/c/f;)V

    .line 15
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getTimestamp()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 17
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getDuration()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 18
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getType()I

    move-result v1

    iput v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 19
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getAction()I

    move-result v1

    iput v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 20
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getFeatures()I

    move-result v1

    iput v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 21
    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/data/entity/CallLogFlashItem;->getComponentName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    .line 22
    iput v3, v4, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    .line 23
    iput v5, v4, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    const/4 v1, 0x3

    .line 24
    iput v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 26
    invoke-interface {v2, v4}, Le/a/l0/c;->n(Lcom/truecaller/data/entity/HistoryEvent;)V

    :cond_2
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "photo"

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v0, "com.truecaller"

    return-object v0
.end method

.method public n()Le/a/h4/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v0

    return-object v0
.end method

.method public o()Le/a/y2/o$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 13

    const-string v0, "TrueApp#onCreate"

    .line 1
    invoke-static {v0}, Le/m/d/z/c;->a(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Le/a/c4/m;->a:Z

    const-string v2, "portrait"

    const-string v3, "orientation"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sput-object v2, Le/a/c3/f;->a:Ljava/lang/String;

    .line 5
    sget-object v2, Le/a/r0;->a:Le/a/r0;

    sput-object v2, Le/a/b4/a/c;->e:Ls1/z/b/a;

    .line 6
    sget-object v2, Le/a/p0;->a:Le/a/p0;

    sput-object v2, Le/a/b4/a/c;->f:Ls1/z/b/a;

    .line 7
    invoke-super {p0}, Le/a/y1;->onCreate()V

    .line 8
    const-class v2, Le/a/j2;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Le/a/j2;

    iput-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 11
    invoke-interface {v2}, Le/a/j2;->i6()Le/a/f/z/k;

    .line 12
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->m0()Le/a/f/z/x;

    .line 13
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->r7()Le/a/f/q;

    .line 14
    const-class v2, Lcom/truecaller/callerid/CallerIdService;

    new-instance v3, Le/a/n0;

    invoke-direct {v3, v2}, Le/a/n0;-><init>(Ljava/lang/Class;)V

    .line 15
    sput-object v3, Le/a/f/b$a;->a:Le/a/f/z/j;

    .line 16
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->s7()Le/a/f/z/f;

    .line 17
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->k2()Le/a/f/t;

    .line 18
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->R5()Le/a/f/z/d;

    .line 19
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->K4()Le/a/f/s;

    .line 20
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->j3()Le/a/f/z/c0;

    .line 21
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->Y1()Le/a/f/p;

    .line 22
    new-instance v2, Le/a/p/f;

    invoke-direct {v2, p0}, Le/a/p/f;-><init>(Landroid/content/Context;)V

    .line 23
    sput-object v2, Le/a/p/b$a;->a:Le/a/p/e;

    .line 24
    new-instance v2, Le/a/p/d;

    invoke-direct {v2, p0}, Le/a/p/d;-><init>(Landroid/content/Context;)V

    .line 25
    sput-object v2, Le/a/p/b$a;->b:Le/a/p/c;

    .line 26
    sget-object v2, Le/a/b0/b/a/a;->f:Le/a/b0/b/a/a;

    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->F3()Le/a/f4/i/d;

    move-result-object v2

    const-string v3, "<set-?>"

    .line 27
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sput-object v2, Le/a/b0/b/a/a;->c:Le/a/f4/i/d;

    .line 29
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->u0()Le/a/f4/c/a;

    move-result-object v2

    .line 30
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sput-object v2, Le/a/b0/b/a/a;->d:Le/a/f4/c/a;

    .line 32
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->K7()Le/a/a4/e;

    move-result-object v2

    invoke-interface {v2, p0}, Le/a/a4/e;->c(Landroid/app/Application;)V

    .line 33
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->p1()Le/a/a4/j0;

    move-result-object v2

    const-string v3, "com.truecaller.wizard.ACTION_WIZARD_COMPLETED"

    .line 34
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Le/a/p5/s0/g;->Y0(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 35
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.truecaller.ACTION_PERMISSIONS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v3

    new-instance v4, Lcom/truecaller/TrueApp$a;

    invoke-direct {v4, p0}, Lcom/truecaller/TrueApp$a;-><init>(Lcom/truecaller/TrueApp;)V

    invoke-virtual {v3, v4, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 37
    iget-object v2, p0, Lcom/truecaller/TrueApp;->q:Landroid/content/BroadcastReceiver;

    const-string v3, "com.truecaller.datamanager.STATUSES_CHANGED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Le/a/p5/s0/g;->Y0(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    const-string v2, "VERSION_CODE"

    .line 38
    invoke-static {v2, v1}, Le/a/j4/b/a/h;->j(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "osVersion"

    const v5, 0x12a18e

    const/4 v6, 0x1

    if-ne v5, v3, :cond_0

    .line 39
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 40
    invoke-static {v4}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .line 41
    :cond_0
    sget-object v7, Lcom/truecaller/buildinfo/BuildName;->Companion:Lcom/truecaller/buildinfo/BuildName$a;

    const-string v8, "GOOGLE_PLAY"

    invoke-virtual {v7, v8}, Lcom/truecaller/buildinfo/BuildName$a;->a(Ljava/lang/String;)Lcom/truecaller/buildinfo/BuildName;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 42
    invoke-virtual {v7}, Lcom/truecaller/buildinfo/BuildName;->getSingleApkPreload()Z

    move-result v7

    if-eqz v7, :cond_1

    if-le v3, v5, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v1

    .line 43
    :goto_0
    sput-boolean v3, Lcom/truecaller/TrueApp;->r:Z

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-wide/32 v7, 0x12a18e

    .line 44
    invoke-static {v2, v7, v8}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    .line 45
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4, v1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/truecaller/TrueApp;->i:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/z0/b;

    sget-object v2, Lcom/truecaller/analytics/heartbeat/HeartBeatType;->Upgrade:Lcom/truecaller/analytics/heartbeat/HeartBeatType;

    invoke-interface {v1, v2}, Le/a/q2/z0/b;->b(Lcom/truecaller/analytics/heartbeat/HeartBeatType;)V

    .line 47
    invoke-static {p0}, Le/a/q2/m;->h(Landroid/content/Context;)Ln3/m0/s;

    .line 48
    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->q()Le/a/y2/q/a;

    move-result-object v7

    const-wide/16 v1, 0x3c

    const-string v3, "backgroundWorkTrigger"

    .line 49
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v1, v2}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "AttestationWorkAction"

    .line 51
    invoke-static/range {v7 .. v12}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    .line 52
    invoke-virtual {p0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->L3()Le/a/r2/f;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i3/b;

    invoke-interface {v1}, Le/a/i3/b;->b()Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->g()V

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "key_upgrade_timestamp"

    invoke-interface {v1, v4, v2, v3}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 55
    invoke-virtual {p0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->m4()Le/a/l/a/y;

    move-result-object v1

    invoke-virtual {v1}, Le/a/l/a/y;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->z6()Le/a/l/a/b0;

    move-result-object v1

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_4

    .line 59
    invoke-virtual {v1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object v1

    const-string v2, "shortcut-premium"

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    :cond_4
    move v1, v6

    .line 60
    :goto_1
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object v2

    new-instance v3, Le/a/q0;

    invoke-direct {v3, p0}, Le/a/q0;-><init>(Lcom/truecaller/TrueApp;)V

    invoke-interface {v2, v3}, Le/a/h5/y;->g(Ls1/z/b/l;)V

    .line 61
    iget-object v2, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->D7()Le/a/o5/a2/g;

    move-result-object v2

    invoke-interface {v2, v1}, Le/a/o5/a2/g;->a(Z)V

    .line 62
    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v1

    sget-object v2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v1, v2}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    iget-object v1, p0, Lcom/truecaller/TrueApp;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v1

    const-string v2, "flash_disabled"

    invoke-interface {v1, v2, v6}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->E0()Le/a/q2/j;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/q2/j;->onTrimMemory(I)V

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object p1

    invoke-interface {p1}, Le/a/i/f0/d;->d()V

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "Truecaller"

    return-object v0
.end method

.method public q()Le/a/q2/w0/h/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n6()Le/a/q2/x0/e;

    move-result-object v0

    return-object v0
.end method

.method public r()Le/a/a/k/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->j:Le/a/a/k/r;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/a/k/r;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/TrueApp;->j:Le/a/a/k/r;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->a()Le/a/a/k/r;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/TrueApp;->j:Le/a/a/k/r;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/TrueApp;->j:Le/a/a/k/r;

    return-object v0
.end method

.method public s()Le/a/j2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "12.21.6"

    return-object v0
.end method

.method public u()Le/a/p/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->k:Le/a/p/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/p/j;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/TrueApp;->k:Le/a/p/j;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->j()Le/a/p/j;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/TrueApp;->k:Le/a/p/j;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/TrueApp;->k:Le/a/p/j;

    return-object v0
.end method

.method public v()Le/a/v/l/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->o:Le/a/v/l/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/v/l/a;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/TrueApp;->o:Le/a/v/l/a;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v1}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v1

    invoke-interface {v1}, Le/a/l2;->h()Le/a/v/l/a;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/TrueApp;->o:Le/a/v/l/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/TrueApp;->o:Le/a/v/l/a;

    return-object v0
.end method

.method public w(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-static {p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Le/a/j4/b/a/h;->s()Z

    move-result p1

    return p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {p1}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object p1

    const-string v0, "+"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/c/b;->b(Ljava/lang/String;)Le/a/y/g/d;

    move-result-object p1

    .line 4
    iget-boolean p1, p1, Le/a/y/g/d;->c:Z

    return p1
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->s4()Le/a/o5/l1;

    move-result-object v0

    invoke-interface {v0}, Le/a/o5/l1;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/y/g/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F7()Le/a/w3/c;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Le/a/w3/c;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/b0/q/n;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/dialogs/QMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
