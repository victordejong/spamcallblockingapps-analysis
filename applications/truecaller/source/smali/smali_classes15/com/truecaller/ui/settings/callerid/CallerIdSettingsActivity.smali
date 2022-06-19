.class public final Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;
.super Le/a/e/b/j/p;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/j/i;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008P\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0016J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\nJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\nJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\nJ\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0016J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0016J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008&\u0010\u0016J\u0017\u0010\'\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0016J\u000f\u0010(\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008*\u0010\u0016J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008+\u0010\u0016J\u000f\u0010,\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008,\u0010)J\u000f\u0010-\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010\nJ\u000f\u0010.\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008.\u0010\nJ\u000f\u0010/\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008/\u0010\nJ\u0017\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00080\u0010\u0016J\u0017\u00101\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00081\u0010\u0016R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010O\u001a\u00020H8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010N\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;",
        "Ln3/b/a/h;",
        "Le/a/e/b/j/i;",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "enabled",
        "g2",
        "(Z)V",
        "visible",
        "B9",
        "o1",
        "a7",
        "f7",
        "n3",
        "G7",
        "Lcom/truecaller/premium/PremiumLaunchContext;",
        "launchContext",
        "",
        "page",
        "y4",
        "(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V",
        "ja",
        "s1",
        "X8",
        "w3",
        "Q0",
        "()Z",
        "T9",
        "D3",
        "E0",
        "S5",
        "t4",
        "onDestroy",
        "d4",
        "R3",
        "Le/a/m3/e;",
        "g",
        "Ls1/g;",
        "pa",
        "()Le/a/m3/e;",
        "binding",
        "Le/a/e/b/j/h;",
        "d",
        "Le/a/e/b/j/h;",
        "qa",
        "()Le/a/e/b/j/h;",
        "setPresenter",
        "(Le/a/e/b/j/h;)V",
        "presenter",
        "Le/a/f/b;",
        "e",
        "Le/a/f/b;",
        "getInCallUI",
        "()Le/a/f/b;",
        "setInCallUI",
        "(Le/a/f/b;)V",
        "inCallUI",
        "Le/a/l/a2;",
        "f",
        "Le/a/l/a2;",
        "getPremiumScreenNavigator",
        "()Le/a/l/a2;",
        "setPremiumScreenNavigator",
        "(Le/a/l/a2;)V",
        "premiumScreenNavigator",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/e/b/j/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/f/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/l/a2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final g:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/e/b/j/p;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public B9(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->j:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    const-string v1, "binding.viewCallerIdStyle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public D3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->f:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchAfterCallPbContacts"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public E0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/b0/g/a;

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    return v0
.end method

.method public G7()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;->SETTINGS:Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;

    invoke-static {v0, v1}, Le/a/f/a/u/i;->hB(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/incallui/callui/enablePromo/InCallUIEnableAnalyticsContext;)V

    return-void
.end method

.method public Q0()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public R3(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->i:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->setShouldShowRecommendation(Z)V

    return-void
.end method

.method public S5()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le/a/m3/e;->d:Le/a/m3/z0;

    const-string v2, "signup"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Le/a/m3/z0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "signup.root"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 5
    iget-object v0, v0, Le/a/m3/e;->c:Landroid/view/View;

    const-string v1, "signUpOverlayMask"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public T9(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->e:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchAfterCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public X8(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->e:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchAfterCall"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public a7(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->b:Le/a/m3/q0;

    iget-object v0, v0, Le/a/m3/q0;->b:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.announceCallerId\u2026er.announceCallerIdSwitch"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public d4(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->i:Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;

    const-string v1, "binding.videoCallerIdSettings"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public f7()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->j:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    .line 2
    iget-object v1, v0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->t:Le/a/m3/y0;

    .line 3
    iget-object v2, v1, Le/a/m3/y0;->e:Landroid/widget/RadioButton;

    const-string v3, "radiobuttonCallerIdStyleFullscreen"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->x:Z

    .line 5
    iget-object v1, v1, Le/a/m3/y0;->e:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6
    iput-boolean v2, v0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->x:Z

    :goto_0
    return-void
.end method

.method public g2(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->e:Le/a/f/b;

    const/4 v1, 0x0

    const-string v2, "inCallUI"

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/f/b;->e(Z)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->e:Le/a/f/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Le/a/f/b;->q(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public ja(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->g:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchPbContacts"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public n3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->j:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    .line 2
    iget-object v1, v0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->t:Le/a/m3/y0;

    .line 3
    iget-object v2, v1, Le/a/m3/y0;->d:Landroid/widget/RadioButton;

    const-string v3, "radiobuttonCallerIdStyleClassic"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->x:Z

    .line 5
    iget-object v1, v1, Le/a/m3/y0;->d:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6
    iput-boolean v2, v0, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->x:Z

    :goto_0
    return-void
.end method

.method public o1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->b:Le/a/m3/q0;

    const-string v1, "binding.announceCallerIdSettingContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Le/a/m3/q0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.announceCallerIdSettingContainer.root"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    const-string v1, "binding"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/m3/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 7
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0a07e9

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    const v1, 0x7f12064a

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    .line 9
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->DRAW_OVER:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 10
    sget-object v3, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->CALLER_ID_APP:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    .line 11
    sget-object v5, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->DISABLE_BATTERY_OPT:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 12
    sget-object v5, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->DEFAULT_DIALER:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 13
    sget-object v5, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;->CALLER_ID_VISIT_HELP_CENTER:Lcom/truecaller/ui/settings/troubleshoot/TroubleshootOption;

    aput-object v5, v2, v3

    .line 14
    invoke-static {v2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "options"

    .line 15
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p1, p1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->a:Le/a/e/b/p/e;

    const-string v3, "presenter"

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, v1, v2}, Le/a/e/b/p/e;->Jg(ILjava/util/Set;)V

    .line 17
    iget-object p1, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->d:Le/a/e/b/j/h;

    if-eqz p1, :cond_1

    check-cast p1, Le/a/e/b/j/l;

    invoke-virtual {p1, p0}, Le/a/e/b/j/l;->Y0(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->d:Le/a/m3/z0;

    const-string v1, "binding.signup"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Le/a/m3/z0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    new-instance v1, Le/a/e/b/j/f;

    invoke-direct {v1, p0}, Le/a/e/b/j/f;-><init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->j:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    new-instance v1, Lp1;

    invoke-direct {v1, v4, p0}, Lp1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->setFullScreenSelectedListener(Ls1/z/b/a;)V

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->j:Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;

    new-instance v1, Lp1;

    invoke-direct {v1, v0, p0}, Lp1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;->setClassicSelectedListener(Ls1/z/b/a;)V

    .line 23
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->g:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Le/a/e/b/j/e;

    invoke-direct {v0, p0}, Le/a/e/b/j/e;-><init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->e:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Le/a/e/b/j/a;

    invoke-direct {v0, p0}, Le/a/e/b/j/a;-><init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->f:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Le/a/e/b/j/b;

    invoke-direct {v0, p0}, Le/a/e/b/j/b;-><init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/e;->b:Le/a/m3/q0;

    .line 27
    iget-object v0, p1, Le/a/m3/q0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    new-instance v1, Le/a/e/b/j/d;

    invoke-direct {v1, p1}, Le/a/e/b/j/d;-><init>(Le/a/m3/q0;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p1, Le/a/m3/q0;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Le/a/e/b/j/c;

    invoke-direct {v0, p0}, Le/a/e/b/j/c;-><init>(Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    .line 30
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 31
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->d:Le/a/e/b/j/h;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->d:Le/a/e/b/j/h;

    if-eqz p1, :cond_1

    check-cast p1, Le/a/e/b/j/l;

    .line 2
    iget-boolean v0, p1, Le/a/e/b/j/l;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Le/a/e/b/j/l;->j:Le/a/f/b;

    invoke-interface {v0}, Le/a/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;->STYLE_FULLSCREEN:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;

    const-string v2, "settingsCallerId"

    invoke-virtual {v0, v2, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->d(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    iget-object v1, p1, Le/a/e/b/j/l;->k:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Le/a/e/b/j/l;->d:Z

    .line 5
    invoke-virtual {p1}, Le/a/e/b/j/l;->z5()V

    return-void

    :cond_1
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->d:Le/a/e/b/j/h;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/e/b/j/l;

    .line 3
    invoke-virtual {v0}, Le/a/e/b/j/l;->z5()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final pa()Le/a/m3/e;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/m3/e;

    return-object v0
.end method

.method public final qa()Le/a/e/b/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->d:Le/a/e/b/j/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public s1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->g:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchPbContacts"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public t4()V
    .locals 3

    .line 1
    const-class v0, Lcom/truecaller/ui/WizardActivity;

    sget-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->CALLER_ID_SETTING:Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "settings_screen"

    invoke-static {p0, v0, v2, v1}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    return-void
.end method

.method public w3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->pa()Le/a/m3/e;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/e;->f:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.switchAfterCallPbContacts"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public y4(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V
    .locals 1

    const-string v0, "launchContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;->f:Le/a/l/a2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Le/a/l/a2;->a(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "premiumScreenNavigator"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
