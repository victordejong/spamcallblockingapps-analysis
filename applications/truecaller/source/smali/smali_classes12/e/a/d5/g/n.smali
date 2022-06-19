.class public abstract Le/a/d5/g/n;
.super Ln3/b/a/q;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Le/a/d5/g/n;",
        "Ln3/b/a/q;",
        "Landroid/content/DialogInterface;",
        "dialog",
        "Ls1/s;",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/q;-><init>()V

    return-void
.end method


# virtual methods
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
