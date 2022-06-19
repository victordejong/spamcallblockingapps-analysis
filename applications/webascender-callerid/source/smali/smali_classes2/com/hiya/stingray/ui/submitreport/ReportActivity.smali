.class public Lcom/hiya/stingray/ui/submitreport/ReportActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/error/b$c;


# instance fields
.field private r:Ljava/lang/String;

.field s:Lcom/hiya/stingray/manager/h4;

.field t:Lcom/hiya/stingray/ui/common/error/e;

.field u:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static O(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hiya/stingray/ui/submitreport/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "REPORT_ACTIVITY_PHONE"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private Q(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    const v1, 0x7f090408

    .line 2
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method


# virtual methods
.method public P()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->u:Lcom/hiya/stingray/util/a0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->t:Lcom/hiya/stingray/ui/common/error/e;

    iget-object v2, p0, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->u:Lcom/hiya/stingray/util/a0;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->L()Li/c/b0/b/v;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/hiya/stingray/t/e1/a;

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/common/error/e;->h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public R()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;->h1()Lcom/hiya/stingray/ui/submitreport/SpamCategoryFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->Q(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public S(Lcom/hiya/stingray/t/b1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->h1(Ljava/lang/String;Lcom/hiya/stingray/t/b1;)Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->Q(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public a(Lcom/hiya/stingray/exception/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/exception/HiyaGenericException;

    sget-object v1, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    const-string v2, "Something went wrong in ReportActivity"

    invoke-direct {v0, v1, v2, p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/exception/a;->getErrorCodeCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Something went wrong in ReportActivity: %s"

    .line 3
    invoke-static {v0, p1, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "REPORT_ACTIVITY_PHONE"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->r:Ljava/lang/String;

    const p1, 0x7f0c0135

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    const-string p1, "keyguard"

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->t0(Lcom/hiya/stingray/ui/submitreport/ReportActivity;)V

    .line 14
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 15
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->R()V

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent must contain phone number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/submitreport/ReportActivity;->P()V

    return-void
.end method
