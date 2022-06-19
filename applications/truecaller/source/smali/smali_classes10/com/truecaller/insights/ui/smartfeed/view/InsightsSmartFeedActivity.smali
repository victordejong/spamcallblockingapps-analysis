.class public final Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity;
.super Le/a/c/a/p/e/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u000c\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/c/a/g/b;",
        "d",
        "Ls1/g;",
        "getBinding",
        "()Le/a/c/a/g/b;",
        "binding",
        "<init>",
        "()V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/c/a/p/e/b;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/b;

    const-string v1, "binding"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/a/c/a/g/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 8
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 9
    iget-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/view/InsightsSmartFeedActivity;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/g/b;

    .line 10
    iget-object p1, p1, Le/a/c/a/g/b;->b:Landroid/widget/FrameLayout;

    const-string v1, "binding.container"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    sget-object v1, Le/a/c/a/p/e/f;->n:Le/a/c/a/p/e/f$d;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Le/a/c/a/p/e/f;

    invoke-direct {v1}, Le/a/c/a/p/e/f;-><init>()V

    .line 13
    invoke-virtual {v0, p1, v1}, Ln3/r/a/f0;->b(ILandroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 14
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    :cond_0
    return-void
.end method
