.class public abstract Le/a/r/t/e;
.super Le/a/r/t/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/t/c$a;


# instance fields
.field public e:Landroid/app/ProgressDialog;

.field public f:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/t/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final QA()Le/a/r/t/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    check-cast v0, Le/a/r/t/c;

    return-object v0
.end method

.method public Wh(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5
    iget-object v1, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object v0, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    sget v1, Lcom/truecaller/wizard/R$string;->StrLoading:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/r/t/e;->e:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "languageAuto"

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "language"

    invoke-static {v1}, Le/a/n/g0;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/d;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    .line 5
    iget-object v1, p1, Le/a/r/t/c;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p1, Le/a/r/t/c;->b:Ljava/util/List;

    .line 7
    :cond_1
    iget-object p1, p1, Le/a/r/t/c;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Le/a/r/t/e;->b0()V

    .line 3
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/r/t/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
