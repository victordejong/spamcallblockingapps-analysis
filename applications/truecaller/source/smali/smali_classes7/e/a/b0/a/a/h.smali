.class public Le/a/b0/a/a/h;
.super Le/a/b0/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/a/a/h$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\rJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Le/a/b0/a/a/h;",
        "Le/a/b0/a/a/a;",
        "",
        "ZA",
        "()Ljava/lang/String;",
        "YA",
        "XA",
        "WA",
        "",
        "QA",
        "()Ljava/lang/Integer;",
        "Ls1/s;",
        "aB",
        "()V",
        "bB",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Le/a/b0/a/a/i;",
        "j",
        "Ls1/g;",
        "cB",
        "()Le/a/b0/a/a/i;",
        "viewModel",
        "<init>",
        "k",
        "c",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final k:Le/a/b0/a/a/h$c;


# instance fields
.field public final j:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b0/a/a/h$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b0/a/a/h$c;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/b0/a/a/h;->k:Le/a/b0/a/a/h$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/b0/a/a/a;-><init>()V

    .line 2
    const-class v0, Le/a/b0/a/a/i;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    new-instance v1, Le/a/b0/a/a/h$a;

    invoke-direct {v1, p0}, Le/a/b0/a/a/h$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    new-instance v2, Le/a/b0/a/a/h$b;

    invoke-direct {v2, p0}, Le/a/b0/a/a/h$b;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 5
    iput-object v0, p0, Le/a/b0/a/a/h;->j:Ls1/g;

    return-void
.end method


# virtual methods
.method public QA()Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "image_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public WA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "negative_button_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public XA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "positive_button_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public YA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public ZA()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public aB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/b0/a/a/h;->cB()Le/a/b0/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object v0

    sget-object v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED_NEGATIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    invoke-virtual {v0, v1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->dismiss()V

    return-void
.end method

.method public bB()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/b0/a/a/h;->cB()Le/a/b0/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object v0

    sget-object v1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED_POSITIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    invoke-virtual {v0, v1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->dismiss()V

    return-void
.end method

.method public final cB()Le/a/b0/a/a/i;
    .locals 1

    iget-object v0, p0, Le/a/b0/a/a/h;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/a/i;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    invoke-virtual {p0}, Le/a/b0/a/a/h;->cB()Le/a/b0/a/a/i;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    sget-object v0, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->SHOWING:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/b0/a/a/h;->cB()Le/a/b0/a/a/i;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object p1

    sget-object v0, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    invoke-virtual {p1, v0}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
