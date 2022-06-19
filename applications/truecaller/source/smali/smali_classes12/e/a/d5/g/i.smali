.class public final Le/a/d5/g/i;
.super Le/a/d5/g/o;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008*\u0010\u0017J)\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001d\u001a\u00020\u001a8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010#\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010\u0010\"\u0004\u0008!\u0010\"R\u001c\u0010)\u001a\u00020$8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Le/a/d5/g/i;",
        "Le/a/d5/g/o;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "Ls1/s;",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "ZA",
        "()Ljava/lang/String;",
        "YA",
        "XA",
        "WA",
        "QA",
        "()Ljava/lang/Integer;",
        "bB",
        "()V",
        "aB",
        "eB",
        "",
        "dB",
        "()Z",
        "isSmsUser",
        "l",
        "Ljava/lang/String;",
        "getAnalyticsContext",
        "setAnalyticsContext",
        "(Ljava/lang/String;)V",
        "analyticsContext",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "k",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "cB",
        "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "analyticsType",
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
.field public final k:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/d5/g/o;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->MdauPromo:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iput-object v0, p0, Le/a/d5/g/i;->k:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const-string v0, "whatsNew"

    .line 3
    iput-object v0, p0, Le/a/d5/g/i;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public QA()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080533

    goto :goto_0

    :cond_0
    const v0, 0x7f080532

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public WA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f12071a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.StrMaybeLater)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public XA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120d13

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.mdau_promo_ok)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public YA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120d14

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.mdau_promo_subtitle)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public ZA()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120d15

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.mdau_promo_title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public aB()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/d5/g/o;->aB()V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->dismiss()V

    return-void
.end method

.method public bB()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/d5/g/o;->bB()V

    .line 2
    invoke-virtual {p0}, Le/a/d5/g/i;->dB()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/d5/g/i;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->pa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/a/d5/g/i;->eB()V

    :goto_0
    return-void
.end method

.method public cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/g/i;->k:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-object v0
.end method

.method public final dB()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v0

    const-string v1, "TrueApp.getApp().objectsGraph.deviceInfoHelper()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    return v0
.end method

.method public final eB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v0, v0, Lcom/truecaller/ui/TruecallerInit;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.ui.TruecallerInit"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ui/TruecallerInit;

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/truecaller/ui/TruecallerInit;->Qa(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/d5/g/i;->dB()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/d5/g/i;->eB()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/d5/g/o;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ln3/r/a/k;->setCancelable(Z)V

    return-void
.end method
