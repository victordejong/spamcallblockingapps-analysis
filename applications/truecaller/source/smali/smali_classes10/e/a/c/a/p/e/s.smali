.class public final Le/a/c/a/p/e/s;
.super Le/a/c/a/p/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/p/e/s$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Le/a/c/a/p/e/s;",
        "Ln3/b/a/q;",
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
        "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;",
        "e",
        "Ls1/g;",
        "getViewModel",
        "()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;",
        "viewModel",
        "Le/a/c/a/g/l1;",
        "f",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "getBinding",
        "()Le/a/c/a/g/l1;",
        "binding",
        "<init>",
        "()V",
        "i",
        "d",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic g:[Ls1/a/l;

.field public static final h:Ljava/lang/String;

.field public static final i:Le/a/c/a/p/e/s$d;


# instance fields
.field public final e:Ls1/g;

.field public final f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/c/a/p/e/s;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/LayoutSmartFeedOnboardingBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/c/a/p/e/s;->g:[Ls1/a/l;

    new-instance v0, Le/a/c/a/p/e/s$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/a/p/e/s$d;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/c/a/p/e/s;->i:Le/a/c/a/p/e/s$d;

    .line 1
    const-class v0, Le/a/c/a/p/e/s;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/c/a/p/e/s;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/c/a/p/e/d;-><init>()V

    .line 2
    const-class v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    new-instance v1, Le/a/c/a/p/e/s$a;

    invoke-direct {v1, p0}, Le/a/c/a/p/e/s$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    new-instance v2, Le/a/c/a/p/e/s$b;

    invoke-direct {v2, p0}, Le/a/c/a/p/e/s$b;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 5
    iput-object v0, p0, Le/a/c/a/p/e/s;->e:Ls1/g;

    .line 6
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/c/a/p/e/s$c;

    invoke-direct {v1}, Le/a/c/a/p/e/s$c;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/c/a/p/e/s;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/insights/ui/R$style;->StyleX_Dialog_Startup_Big:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ln3/r/a/k;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/insights/ui/R$layout;->layout_smart_feed_onboarding:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/p/e/s;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    .line 3
    iget-object p1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->s:Le/a/c/c0/o;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Le/a/c/c0/o;->R(Z)V

    .line 4
    iget-object p1, p0, Le/a/c/a/p/e/s;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object p2, Le/a/c/a/p/e/s;->g:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/c/a/g/l1;

    .line 5
    iget-object p1, p1, Le/a/c/a/g/l1;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Le/a/c/a/p/e/s$e;

    invoke-direct {p2, p0}, Le/a/c/a/p/e/s$e;-><init>(Le/a/c/a/p/e/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
