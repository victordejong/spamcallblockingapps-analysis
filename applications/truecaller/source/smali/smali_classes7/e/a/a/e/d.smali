.class public final Le/a/a/e/d;
.super Le/m/a/g/e/e;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/h;


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public a:Le/a/a/e/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/e/d;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/BottomSheetInboxCleanerAutoBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/e/d;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    iput-object p1, p0, Le/a/a/e/d;->c:Ls1/z/b/a;

    .line 2
    new-instance p1, Le/a/p5/x0/a;

    new-instance v0, Le/a/a/e/d$b;

    invoke-direct {v0}, Le/a/a/e/d$b;-><init>()V

    invoke-direct {p1, v0}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/a/e/d;->b:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method


# virtual methods
.method public Fp(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->f:Landroid/widget/CheckBox;

    const-string v1, "binding.checkboxNotif"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public Jc(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->g:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.groupPromotional"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final OA()Le/a/m3/m;
    .locals 3

    iget-object v0, p0, Le/a/a/e/d;->b:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/a/e/d;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/m;

    return-object v0
.end method

.method public final PA()Le/a/a/e/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/d;->a:Le/a/a/e/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public V0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method

.method public X1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->f:Landroid/widget/CheckBox;

    new-instance v1, Le/a/a/e/d$c;

    invoke-direct {v1, p0}, Le/a/a/e/d$c;-><init>(Le/a/a/e/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->b:Landroid/widget/Button;

    new-instance v1, Le/a/a/e/d$d;

    invoke-direct {v1, p0}, Le/a/a/e/d$d;-><init>(Le/a/a/e/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->c:Landroid/widget/Button;

    new-instance v1, Le/a/a/e/d$e;

    invoke-direct {v1, p0}, Le/a/a/e/d$e;-><init>(Le/a/a/e/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->d:Landroid/widget/Button;

    new-instance v1, Le/a/a/e/d$f;

    invoke-direct {v1, p0}, Le/a/a/e/d$f;-><init>(Le/a/a/e/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->a:Landroid/widget/Button;

    new-instance v1, Le/a/a/e/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Le/a/a/e/d$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->e:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Le/a/a/e/d$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Le/a/a/e/d$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public Yw(III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/m;->h:Landroid/widget/TextView;

    const-string v1, "binding.txtOtpPeriod"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/c/p/a;->C2(Landroid/widget/TextView;I)V

    .line 2
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/m;->i:Landroid/widget/TextView;

    const-string v0, "binding.txtPromotionalPeriod"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Le/a/c/p/a;->C2(Landroid/widget/TextView;I)V

    .line 3
    invoke-virtual {p0}, Le/a/a/e/d;->OA()Le/a/m3/m;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/m;->j:Landroid/widget/TextView;

    const-string p2, "binding.txtSpamPeriod"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Le/a/c/p/a;->C2(Landroid/widget/TextView;I)V

    return-void
.end method

.method public Z0(II)V
    .locals 2

    .line 1
    new-instance v0, Le/a/z1;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(title)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getString(subtitle)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Le/a/z1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/z1;->cB(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/a/e/k;->a()Le/a/a/e/k$b;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object v0, p1, Le/a/a/e/k$b;->a:Le/a/j2;

    .line 6
    invoke-virtual {p1}, Le/a/a/e/k$b;->a()Le/a/a/e/r;

    move-result-object p1

    .line 7
    check-cast p1, Le/a/a/e/k;

    .line 8
    iget-object p1, p1, Le/a/a/e/k;->h:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/e/g;

    .line 9
    iput-object p1, p0, Le/a/a/e/d;->a:Le/a/a/e/g;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d008f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Le/a/a/e/d;->c:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/a/e/d;->a:Le/a/a/e/g;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
