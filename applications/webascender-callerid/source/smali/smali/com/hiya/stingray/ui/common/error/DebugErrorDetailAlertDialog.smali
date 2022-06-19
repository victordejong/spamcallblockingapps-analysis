.class public Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;
.super Lcom/hiya/stingray/ui/common/g;
.source "SourceFile"


# instance fields
.field private A:Lg/g/a/a/e;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field errorDebuggerAction:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019c
    .end annotation
.end field

.field errorDebuggerCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019d
    .end annotation
.end field

.field errorDebuggerErrorBody:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019f
    .end annotation
.end field

.field errorDebuggerErrorConjecture:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a0
    .end annotation
.end field

.field errorDebuggerReason:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a1
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019e
    .end annotation
.end field

.field private z:Lcom/hiya/stingray/exception/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/g;-><init>()V

    return-void
.end method

.method public static t1(Lcom/hiya/stingray/exception/a;Lg/g/a/a/e;)Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ERROR_ALERT_TYPE_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ERROR_ALERT_API_ACTION_KEY"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private u1(Lg/g/a/a/b;Lcom/hiya/stingray/exception/a;)Ljava/lang/String;
    .locals 0

    const-string p1, "?"

    return-object p1
.end method

.method private v1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerAction:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->A:Lg/g/a/a/e;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerReason:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->z:Lcom/hiya/stingray/exception/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerErrorConjecture:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial Diagnosis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->A:Lg/g/a/a/e;

    iget-object v3, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->z:Lcom/hiya/stingray/exception/a;

    invoke-direct {p0, v2, v3}, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->u1(Lg/g/a/a/b;Lcom/hiya/stingray/exception/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->errorDebuggerErrorBody:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public g1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->g1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->q1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->T(Lcom/hiya/stingray/ui/common/g;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ERROR_ALERT_TYPE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/exception/a;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/exception/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->z:Lcom/hiya/stingray/exception/a;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ERROR_ALERT_API_ACTION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/g/a/a/e;->valueOf(Ljava/lang/String;)Lg/g/a/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->A:Lg/g/a/a/e;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ERROR_ALERT_CODE_KEY"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->C:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ERROR_ALERT_BODY_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->B:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c006e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/d;->e1()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 p3, 0x7

    .line 4
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance p3, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog$a;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog$a;-><init>(Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const p3, 0x7f1103f7

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/error/DebugErrorDetailAlertDialog;->v1()V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/g;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/d;->e1()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
