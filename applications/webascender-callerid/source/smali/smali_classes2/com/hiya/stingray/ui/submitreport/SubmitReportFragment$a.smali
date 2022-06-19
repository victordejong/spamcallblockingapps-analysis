.class Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->f1(Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;)Lcom/hiya/stingray/t/c1;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    iget-object v1, v0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->o:Lcom/hiya/stingray/ui/submitreport/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/hiya/stingray/ui/submitreport/j;->B(Landroid/content/Context;Lcom/hiya/stingray/t/c1;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment$a;->f:Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;

    iget-object p1, p1, Lcom/hiya/stingray/ui/submitreport/SubmitReportFragment;->p:Lcom/hiya/stingray/manager/e1;

    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "report_caller"

    .line 4
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "report_submitted"

    .line 5
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
