.class public final Le/a/c/a/b/a/b;
.super Ln3/r/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/b/a/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 (2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\'\u0010\u0010J-\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Le/a/c/a/b/a/b;",
        "Ln3/r/a/k;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "()V",
        "Le/a/c/a/g/x;",
        "c",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "getBinding",
        "()Le/a/c/a/g/x;",
        "binding",
        "Le/a/c/c0/k;",
        "a",
        "Le/a/c/c0/k;",
        "getConsentConfig",
        "()Le/a/c/c0/k;",
        "setConsentConfig",
        "(Le/a/c/c0/k;)V",
        "consentConfig",
        "Le/a/c/e/c;",
        "b",
        "Le/a/c/e/c;",
        "getAnalyticsManager",
        "()Le/a/c/e/c;",
        "setAnalyticsManager",
        "(Le/a/c/e/c;)V",
        "analyticsManager",
        "<init>",
        "f",
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
.field public static final synthetic d:[Ls1/a/l;

.field public static final e:Ljava/lang/String;

.field public static final f:Le/a/c/a/b/a/b$b;


# instance fields
.field public a:Le/a/c/c0/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/c/e/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/c/a/b/a/b;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/DialogFeedbackConsentExplanationBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/c/a/b/a/b;->d:[Ls1/a/l;

    new-instance v0, Le/a/c/a/b/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/a/b/a/b$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/c/a/b/a/b;->f:Le/a/c/a/b/a/b$b;

    .line 1
    const-class v0, Le/a/c/a/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConsentExplanationDialog::class.java.simpleName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Le/a/c/a/b/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/r/a/k;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/c/a/b/a/b$a;

    invoke-direct {v1}, Le/a/c/a/b/a/b$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/c/a/b/a/b;->c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/c/a/b/b/b;->a()Le/a/c/a/b/b/b$b;

    move-result-object p3

    .line 2
    const-class v0, Le/a/c/l/a/a;

    const-string v1, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    invoke-static {v0, v1}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/l/a/a;

    .line 3
    iput-object v0, p3, Le/a/c/a/b/b/b$b;->a:Le/a/c/l/a/a;

    .line 4
    invoke-virtual {p3}, Le/a/c/a/b/b/b$b;->a()Le/a/c/a/b/b/a;

    move-result-object p3

    check-cast p3, Le/a/c/a/b/b/b;

    .line 5
    iget-object v0, p3, Le/a/c/a/b/b/b;->a:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->D1()Le/a/c/c0/k;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Le/a/c/a/b/a/b;->a:Le/a/c/c0/k;

    .line 8
    iget-object p3, p3, Le/a/c/a/b/b/b;->a:Le/a/c/l/a/a;

    invoke-interface {p3}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object p3

    .line 9
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Le/a/c/a/b/a/b;->b:Le/a/c/e/c;

    .line 11
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 12
    sget p3, Lcom/truecaller/insights/ui/R$layout;->dialog_feedback_consent_explanation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Ln3/r/a/k;->onStart()V

    .line 2
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/b/a/b;->b:Le/a/c/e/c;

    if-eqz p1, :cond_0

    sget-object p2, Le/a/c/a/b/c/d;->g:Le/a/c/a/b/c/d;

    .line 3
    sget-object p2, Le/a/c/a/b/c/d;->d:Le/a/c/r/d/b;

    .line 4
    invoke-interface {p1, p2}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 5
    iget-object p1, p0, Le/a/c/a/b/a/b;->c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object p2, Le/a/c/a/b/a/b;->d:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/c/a/g/x;

    .line 6
    iget-object p1, p1, Le/a/c/a/g/x;->a:Landroid/widget/Button;

    new-instance p2, Le/a/c/a/b/a/b$c;

    invoke-direct {p2, p0}, Le/a/c/a/b/a/b$c;-><init>(Le/a/c/a/b/a/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "analyticsManager"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
