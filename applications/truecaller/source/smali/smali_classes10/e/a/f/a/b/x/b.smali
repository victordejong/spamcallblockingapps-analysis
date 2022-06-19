.class public final Le/a/f/a/b/x/b;
.super Le/a/f/a/b/x/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Le/a/f/a/b/x/b;",
        "Ln3/r/a/k;",
        "",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Landroid/content/DialogInterface;",
        "dialog",
        "Ls1/s;",
        "onCancel",
        "(Landroid/content/DialogInterface;)V",
        "<init>",
        "()V",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public e:Le/a/f/a/b/x/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/f/a/b/x/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Le/a/f/a/b/x/b;->e:Le/a/f/a/b/x/d;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/a/f/a/b/x/d;->b:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->J()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "POST_DIAL_SEQUENCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "arguments?.getString(ARG_POST_DIAL_SEQUENCE) ?: \"\""

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    sget v1, Lcom/truecaller/incallui/R$string;->incallui_post_dial_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 5
    sget p1, Lcom/truecaller/incallui/R$string;->incallui_post_dial_positive:I

    new-instance v1, Le/a/f/a/b/x/b$a;

    invoke-direct {v1, p0}, Le/a/f/a/b/x/b$a;-><init>(Le/a/f/a/b/x/b;)V

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    sget p1, Lcom/truecaller/incallui/R$string;->incallui_post_dial_negative:I

    sget-object v1, Le/a/f/a/b/x/b$b;->a:Le/a/f/a/b/x/b$b;

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(requ\u2026l() }\n            .show()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
