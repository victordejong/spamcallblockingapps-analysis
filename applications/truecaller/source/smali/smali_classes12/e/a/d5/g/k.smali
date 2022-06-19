.class public final Le/a/d5/g/k;
.super Le/a/d5/g/e;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\r\u001a\u00020\u00088\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Le/a/d5/g/k;",
        "Le/a/d5/g/e;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "b",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "PA",
        "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "analyticsType",
        "<init>",
        "()V",
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
.field public final b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/d5/g/e;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->PinShortcutRequest:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iput-object v0, p0, Le/a/d5/g/k;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-void
.end method


# virtual methods
.method public PA()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/g/k;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ln3/b/a/g$a;

    invoke-direct {p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120855

    .line 3
    invoke-virtual {p1, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v0, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    const v0, 0x7f120854

    .line 5
    sget-object v1, Le/a/d5/g/k$a;->a:Le/a/d5/g/k$a;

    invoke-virtual {p1, v0, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v0, 0x7f120f25

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {p1}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Ln3/b/a/q;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
