.class public Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    .line 3
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090409

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090117

    const-string v2, "field \'comments\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->comments:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900c7

    const-string v2, "field \'submitReport\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->submitReport:Landroid/widget/Button;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09032e

    const-string v2, "field \'categoryNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->categoryNameTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->comments:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->submitReport:Landroid/widget/Button;

    .line 6
    iput-object v1, v0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->categoryNameTv:Landroid/widget/TextView;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
