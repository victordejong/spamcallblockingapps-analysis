.class public abstract Le/a/d5/g/e;
.super Le/a/d5/g/n;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u0014J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Le/a/d5/g/e;",
        "Le/a/d5/g/n;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onClick",
        "(Landroid/view/View;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "",
        "OA",
        "()Z",
        "QA",
        "()V",
        "RA",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "PA",
        "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "analyticsType",
        "Le/a/d5/g/l;",
        "a",
        "Le/a/d5/g/l;",
        "analytics",
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
.field public a:Le/a/d5/g/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/d5/g/n;-><init>()V

    return-void
.end method


# virtual methods
.method public OA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract PA()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
.end method

.method public QA()V
    .locals 0

    return-void
.end method

.method public RA()V
    .locals 0

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/d5/g/e;->a:Le/a/d5/g/l;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/d5/g/m;

    .line 2
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Cancelled:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p1, v0}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void

    :cond_0
    const-string p1, "analytics"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "analytics"

    const v3, 0x7f0a02de

    if-ne v0, v3, :cond_1

    .line 2
    iget-object p1, p0, Le/a/d5/g/e;->a:Le/a/d5/g/l;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/d5/g/m;

    .line 3
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p1, v0}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 4
    invoke-virtual {p0}, Le/a/d5/g/e;->RA()V

    .line 5
    invoke-virtual {p0}, Le/a/d5/g/e;->OA()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02f1

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Le/a/d5/g/e;->a:Le/a/d5/g/l;

    if-eqz p1, :cond_2

    check-cast p1, Le/a/d5/g/m;

    .line 10
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedNegative:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p1, v0}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 11
    invoke-virtual {p0}, Le/a/d5/g/e;->QA()V

    .line 12
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "context ?: return"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->B5()Le/a/d5/g/l;

    move-result-object p1

    const-string v0, "(context.applicationCont\u2026.startupDialogAnalytics()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/d5/g/e;->a:Le/a/d5/g/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/d5/g/e;->PA()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    move-result-object v1

    .line 5
    check-cast p1, Le/a/d5/g/m;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v1, p1, Le/a/d5/g/m;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    .line 8
    iput-object v0, p1, Le/a/d5/g/m;->a:Ljava/lang/Boolean;

    .line 9
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->Shown:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {p1, v0}, Le/a/d5/g/m;->a(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    return-void

    :cond_0
    const-string p1, "analytics"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
