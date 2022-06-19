.class public final Le/a/d5/g/h;
.super Le/a/d5/g/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u000c\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Le/a/d5/g/h;",
        "Le/a/d5/g/e;",
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
    sget-object v0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->RegionC:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iput-object v0, p0, Le/a/d5/g/h;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-void
.end method


# virtual methods
.method public PA()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/g/h;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "context ?: return super.\u2026ialog(savedInstanceState)"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ln3/r/a/k;->setCancelable(Z)V

    .line 3
    new-instance p1, Le/a/d5/g/h$a;

    invoke-direct {p1, p0, v0}, Le/a/d5/g/h$a;-><init>(Le/a/d5/g/h;Landroid/content/Context;)V

    invoke-static {v0, p1}, Le/a/p5/s0/g;->m(Landroid/content/Context;Ls1/z/b/l;)Ln3/b/a/g$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    const-string v0, "dialog.create()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Ln3/b/a/q;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
