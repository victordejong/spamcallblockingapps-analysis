.class public Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;
.super Lcom/hiya/stingray/ui/common/g;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field wrongNameTv:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090497
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/g;-><init>()V

    return-void
.end method

.method static synthetic t1(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u1(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static v1(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wrong_name_phone"

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "wrong_name_display_name"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic g1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->w1(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->q1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->w(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "wrong_name_phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->z:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "wrong_name_display_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->A:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Arguments null for wrong name dialog. Can\'t report"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public w1(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 4

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/userfeedback/d;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c014d

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->wrongNameTv:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;->wrongNameTv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$b;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$b;-><init>(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;

    invoke-direct {v3, p0, v0}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$a;-><init>(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;Lcom/hiya/stingray/ui/userfeedback/d;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog$c;-><init>(Lcom/hiya/stingray/ui/userfeedback/WrongNameDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 13
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 14
    invoke-static {p1}, Lcom/hiya/stingray/util/e0;->n(Landroid/app/AlertDialog;)V

    return-object p1
.end method
