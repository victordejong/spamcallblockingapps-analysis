.class public final Le/a/o/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/m;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;Ljava/lang/String;)V
    .locals 7

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDemandMessageSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/o/a/g/j/e;->k:Le/a/o/a/g/j/e$a;

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Le/a/o/a/g/j/e$a;->b(Le/a/o/a/g/j/e$a;Landroidx/fragment/app/FragmentManager;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 7

    const-string v0, "parentView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parent.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/contextcall/R$dimen;->context_call_info_dialog_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "LayoutInflater.from(parent.context)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    sget v3, Lcom/truecaller/contextcall/R$layout;->context_call_dialog_on_demand_info:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-static {v1}, Le/a/o/o/f;->a(Landroid/view/View;)Le/a/o/o/f;

    move-result-object v1

    const-string v3, "ContextCallDialogOnDeman\u2026null,\n        false\n    )"

    .line 6
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Landroid/widget/PopupWindow;

    .line 8
    iget-object v4, v1, Le/a/o/o/f;->a:Landroidx/cardview/widget/CardView;

    const/4 v6, -0x2

    .line 9
    invoke-direct {v3, v4, v6, v6, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 10
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 11
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 12
    iget-object v1, v1, Le/a/o/o/f;->b:Landroid/widget/Button;

    new-instance v2, Le/a/o/a/i/b;

    invoke-direct {v2, v3}, Le/a/o/a/i/b;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    float-to-int v0, v0

    const v1, 0x800003

    .line 13
    invoke-virtual {v3, p1, v1, v0, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v3
.end method

.method public c(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/o/a/i/a;

    invoke-direct {v0}, Le/a/o/a/i/a;-><init>()V

    const-class v1, Le/a/o/a/i/a;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onDemandMessageSource"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDemandSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "sourceBundle"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "onDemandMessageHint"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDemandMessageSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/o/a/g/j/e;->k:Le/a/o/a/g/j/e$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/a/o/a/g/j/e$a;->a(Landroidx/fragment/app/FragmentManager;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;)V

    return-void
.end method
