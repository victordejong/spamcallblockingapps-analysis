.class public abstract Le/a/d5/g/o;
.super Le/a/b0/a/a/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Le/a/d5/g/o;",
        "Le/a/b0/a/a/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "bB",
        "()V",
        "aB",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "onDismiss",
        "Le/a/d5/g/l;",
        "j",
        "Le/a/d5/g/l;",
        "analytics",
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
.field public j:Le/a/d5/g/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/b0/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public aB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d5/g/o;->cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/d5/g/o;->j:Le/a/d5/g/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d5/g/m;

    .line 2
    sget-object v1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {v0, v1}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    goto :goto_0

    :cond_0
    const-string v0, "analytics"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public bB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d5/g/o;->cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/d5/g/o;->j:Le/a/d5/g/l;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d5/g/m;

    .line 2
    sget-object v1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {v0, v1}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    goto :goto_0

    :cond_0
    const-string v0, "analytics"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d5/g/o;->cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/d5/g/o;->j:Le/a/d5/g/l;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/d5/g/m;

    .line 2
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Cancelled:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p1, v0}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    goto :goto_0

    :cond_0
    const-string p1, "analytics"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le/a/b0/a/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->B5()Le/a/d5/g/l;

    move-result-object p1

    const-string v1, "(context?.applicationCon\u2026.startupDialogAnalytics()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/d5/g/o;->j:Le/a/d5/g/l;

    .line 3
    invoke-virtual {p0}, Le/a/d5/g/o;->cB()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Le/a/d5/g/o;->j:Le/a/d5/g/l;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/d5/g/m;

    const-string v2, "type"

    .line 4
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, v1, Le/a/d5/g/m;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    .line 6
    iput-object v0, v1, Le/a/d5/g/m;->a:Ljava/lang/Boolean;

    .line 7
    sget-object p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {v1, p1}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    goto :goto_1

    :cond_1
    const-string p1, "analytics"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "StartupDialogType"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/truecaller/startup_dialogs/StartupDialogType;->valueOf(Ljava/lang/String;)Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "StartupDialogDismissReason"

    .line 3
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->valueOf(Ljava/lang/String;)Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    instance-of v4, v2, Le/a/d5/a;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    check-cast v3, Le/a/d5/a;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1, v0}, Le/a/d5/a;->M2(Lcom/truecaller/startup_dialogs/StartupDialogType;Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V

    .line 5
    :cond_3
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
