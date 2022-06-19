.class public final Le/a/o/a/c/n/b;
.super Le/a/o/a/c/n/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/c/n/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o/a/c/n/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001%B\u0007\u00a2\u0006\u0004\u0008#\u0010\u000bJ!\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000bR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178V@\u0016X\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006&"
    }
    d2 = {
        "Le/a/o/a/c/n/b;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/o/a/c/n/e;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "oa",
        "t",
        "onDestroyView",
        "Le/a/o/a/c/n/d;",
        "e",
        "Le/a/o/a/c/n/d;",
        "getPresenter",
        "()Le/a/o/a/c/n/d;",
        "setPresenter",
        "(Le/a/o/a/c/n/d;)V",
        "presenter",
        "Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;",
        "g",
        "Ls1/g;",
        "W4",
        "()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;",
        "contextCallAnalyticsContext",
        "Le/a/o/o/m;",
        "f",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "getBinding",
        "()Le/a/o/o/m;",
        "binding",
        "<init>",
        "i",
        "b",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic h:[Ls1/a/l;

.field public static final i:Le/a/o/a/c/n/b$b;


# instance fields
.field public e:Le/a/o/a/c/n/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final g:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/o/a/c/n/b;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/contextcall/databinding/FragmentManageReasonOnBoardingBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/o/a/c/n/b;->h:[Ls1/a/l;

    new-instance v0, Le/a/o/a/c/n/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/o/a/c/n/b$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/o/a/c/n/b;->i:Le/a/o/a/c/n/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/contextcall/R$layout;->fragment_manage_reason_on_boarding:I

    invoke-direct {p0, v0}, Le/a/o/a/c/n/a;-><init>(I)V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/o/a/c/n/b$a;

    invoke-direct {v1}, Le/a/o/a/c/n/b$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/o/a/c/n/b;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    new-instance v0, Le/a/o/a/c/n/b$c;

    invoke-direct {v0, p0}, Le/a/o/a/c/n/b$c;-><init>(Le/a/o/a/c/n/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/o/a/c/n/b;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public W4()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;
    .locals 1

    iget-object v0, p0, Le/a/o/a/c/n/b;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    return-object v0
.end method

.method public oa()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/a/c/n/b;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/o/a/c/n/b;->h:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/o/o/m;

    .line 2
    iget-object v0, v0, Le/a/o/o/m;->b:Landroid/widget/TextView;

    const-string v1, "binding.multisimWarningTv"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/c/n/b;->e:Le/a/o/a/c/n/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;->CLOSE:Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;

    invoke-virtual {v0, v1}, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->pa(Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ln3/b/a/h;

    invoke-virtual {p1}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ln3/b/a/a;->y(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/o/a/c/n/b;->e:Le/a/o/a/c/n/d;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/o/a/c/n/b;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object p2, Le/a/o/a/c/n/b;->h:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/o/o/m;

    .line 5
    iget-object p1, p1, Le/a/o/o/m;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Le/a/o/a/c/n/b$d;

    invoke-direct {p2, p0}, Le/a/o/a/c/n/b$d;-><init>(Le/a/o/a/c/n/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
