.class Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    iget-object p1, p1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->comments:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroidx/appcompat/app/b$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->d(Z)Landroidx/appcompat/app/b$a;

    const v0, 0x7f1102df

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->g(I)Landroidx/appcompat/app/b$a;

    const v0, 0x7f1102de

    new-instance v1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b$b;-><init>(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    const v0, 0x7f1100a3

    new-instance v1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b$a;-><init>(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$b;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
