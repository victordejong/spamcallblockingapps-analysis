.class public final Le/a/b/a/a/a/e0;
.super Le/m/a/g/e/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001e\u001a\u00020\u00198F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Le/a/b/a/a/a/e0;",
        "Le/m/a/g/e/e;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Ln3/v/a1$b;",
        "a",
        "Ln3/v/a1$b;",
        "getViewModelFactory",
        "()Ln3/v/a1$b;",
        "setViewModelFactory",
        "(Ln3/v/a1$b;)V",
        "viewModelFactory",
        "Le/a/b/a/a/d/b;",
        "b",
        "Ls1/g;",
        "OA",
        "()Le/a/b/a/a/d/b;",
        "bizProfileViewModel",
        "Le/a/b/m/j;",
        "c",
        "Le/a/b/m/j;",
        "binding",
        "<init>",
        "()V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ln3/v/a1$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Ls1/g;

.field public c:Le/a/b/m/j;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    .line 2
    new-instance v0, Le/a/b/a/a/a/e0$b;

    invoke-direct {v0, p0}, Le/a/b/a/a/a/e0$b;-><init>(Le/a/b/a/a/a/e0;)V

    new-instance v1, Le/a/b/a/a/a/e0$c;

    invoke-direct {v1, p0}, Le/a/b/a/a/a/e0$c;-><init>(Le/a/b/a/a/a/e0;)V

    .line 3
    const-class v2, Le/a/b/a/a/d/b;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    new-instance v3, Le/a/b/a/a/a/e0$a;

    invoke-direct {v3, v0}, Le/a/b/a/a/a/e0$a;-><init>(Ls1/z/b/a;)V

    invoke-static {p0, v2, v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/b/a/a/a/e0;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final OA()Le/a/b/a/a/d/b;
    .locals 1

    iget-object v0, p0, Le/a/b/a/a/a/e0;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/a/d/b;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/bizmon/R$style;->StyleX_FormBottomSheetDialogTheme:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ln3/r/a/k;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p3

    const-string v0, "requireActivity()"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    move-result-object p3

    check-cast p3, Le/a/b/a/g/e;

    .line 2
    iget-object p3, p3, Le/a/b/a/g/e;->K:Ljavax/inject/Provider;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/v/a1$b;

    .line 3
    iput-object p3, p0, Le/a/b/a/a/a/e0;->a:Ln3/v/a1$b;

    .line 4
    sget p3, Lcom/truecaller/bizmon/R$layout;->bottomsheet_biz_description:I

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p3, p2, v0}, Ln3/n/g;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 6
    move-object p2, p1

    check-cast p2, Le/a/b/m/j;

    .line 7
    invoke-virtual {p2, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Ln3/v/b0;)V

    const-string p2, "DataBindingUtil.inflate<\u2026tionBSDFragment\n        }"

    .line 8
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/b/m/j;

    iput-object p1, p0, Le/a/b/a/a/a/e0;->c:Le/a/b/m/j;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Le/a/b/a/a/a/e0;->OA()Le/a/b/a/a/d/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/b/m/j;->a(Le/a/b/a/a/d/b;)V

    .line 10
    iget-object p1, p0, Le/a/b/a/a/a/e0;->c:Le/a/b/m/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_1
    invoke-static {p3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/b/a/a/a/e0;->c:Le/a/b/m/j;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Le/a/b/m/j;->b:Lcom/google/android/material/textfield/TextInputEditText;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p2, "biz_desc"

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    .line 5
    invoke-static {v0, p2, v1, v2, v3}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 6
    iget-object p2, p1, Le/a/b/m/j;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Le/a/b/a/a/a/e0$d;

    invoke-direct {v0, p1, p0}, Le/a/b/a/a/a/e0$d;-><init>(Le/a/b/m/j;Le/a/b/a/a/a/e0;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Le/a/b/a/a/a/e0;->OA()Le/a/b/a/a/d/b;

    move-result-object p1

    .line 8
    iget-object p1, p1, Le/a/b/a/a/d/b;->m:Landroidx/lifecycle/LiveData;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object p2

    new-instance v0, Le/a/b/a/a/a/f0;

    invoke-direct {v0, p0}, Le/a/b/a/a/a/f0;-><init>(Le/a/b/a/a/a/e0;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    return-void

    :cond_1
    const-string p1, "binding"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method
