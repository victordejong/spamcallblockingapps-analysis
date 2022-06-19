.class public final Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/h/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$SafeLinearLayoutManager;,
        Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u0080\u00012\u00020\u00012\u00020\u0002:\u0003H\u0081\u0001B\u0007\u00a2\u0006\u0004\u0008\u007f\u0010\u0008J\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J)\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ-\u0010!\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0008J\u001f\u0010\'\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0019\u00106\u001a\u0002018\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\"\u0010N\u001a\u00020G8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\"\u0010V\u001a\u00020O8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\"\u0010b\u001a\u00020[8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR\"\u0010j\u001a\u00020c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR\u001d\u0010p\u001a\u00020k8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010oR\u001d\u0010v\u001a\u00020q8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010uR\"\u0010~\u001a\u00020w8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/c/a/h/e;",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "RA",
        "()Lcom/google/android/material/appbar/AppBarLayout;",
        "Ls1/s;",
        "SA",
        "()V",
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
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "onDestroy",
        "languageCode",
        "",
        "allowsDownloadViaMobile",
        "k8",
        "(Ljava/lang/String;Z)V",
        "Le/a/c/h/i;",
        "g",
        "Le/a/c/h/i;",
        "getMessageTranslationContract",
        "()Le/a/c/h/i;",
        "setMessageTranslationContract",
        "(Le/a/c/h/i;)V",
        "messageTranslationContract",
        "Lcom/google/android/material/appbar/AppBarLayout$c;",
        "k",
        "Lcom/google/android/material/appbar/AppBarLayout$c;",
        "getOffsetChangedListener",
        "()Lcom/google/android/material/appbar/AppBarLayout$c;",
        "offsetChangedListener",
        "Ln3/v/a1$b;",
        "f",
        "Ln3/v/a1$b;",
        "getViewModelFactory",
        "()Ln3/v/a1$b;",
        "setViewModelFactory",
        "(Ln3/v/a1$b;)V",
        "viewModelFactory",
        "Le/a/c/h/f;",
        "d",
        "Le/a/c/h/f;",
        "getInsightsSmsIntents",
        "()Le/a/c/h/f;",
        "setInsightsSmsIntents",
        "(Le/a/c/h/f;)V",
        "insightsSmsIntents",
        "Le/a/b0/m/c/a;",
        "b",
        "Le/a/b0/m/c/a;",
        "getSearchContactApi",
        "()Le/a/b0/m/c/a;",
        "setSearchContactApi",
        "(Le/a/b0/m/c/a;)V",
        "searchContactApi",
        "Le/a/c/b/h;",
        "c",
        "Le/a/c/b/h;",
        "getInsightsPermissionHelper",
        "()Le/a/c/b/h;",
        "setInsightsPermissionHelper",
        "(Le/a/c/b/h;)V",
        "insightsPermissionHelper",
        "",
        "i",
        "F",
        "currentOffset",
        "Le/a/c/h/h;",
        "a",
        "Le/a/c/h/h;",
        "getMessageLocator",
        "()Le/a/c/h/h;",
        "setMessageLocator",
        "(Le/a/c/h/h;)V",
        "messageLocator",
        "Le/a/c/b/e;",
        "h",
        "Le/a/c/b/e;",
        "getEnvironmentHelper",
        "()Le/a/c/b/e;",
        "setEnvironmentHelper",
        "(Le/a/c/b/e;)V",
        "environmentHelper",
        "Le/a/c/a/g/d0;",
        "l",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "PA",
        "()Le/a/c/a/g/d0;",
        "binding",
        "Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;",
        "j",
        "Ls1/g;",
        "QA",
        "()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;",
        "businessInsightsViewModel",
        "Le/a/c/a/a/a/c;",
        "e",
        "Le/a/c/a/a/a/c;",
        "getInsightsAdapter",
        "()Le/a/c/a/a/a/c;",
        "setInsightsAdapter",
        "(Le/a/c/a/a/a/c;)V",
        "insightsAdapter",
        "<init>",
        "n",
        "SafeLinearLayoutManager",
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
.field public static final synthetic m:[Ls1/a/l;

.field public static final n:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;


# instance fields
.field public a:Le/a/c/h/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/b0/m/c/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/c/b/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/c/h/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/c/a/a/a/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Ln3/v/a1$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/c/h/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/c/b/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:F

.field public final j:Ls1/g;

.field public final k:Lcom/google/android/material/appbar/AppBarLayout$c;

.field public final l:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentBusinessInsightsBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->m:[Ls1/a/l;

    new-instance v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->n:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$c;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$c;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->j:Ls1/g;

    .line 3
    new-instance v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$d;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$d;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->k:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 4
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$a;

    invoke-direct {v1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->l:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method

.method public static final OA(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "view ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.businessRv"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/truecaller/insights/ui/R$dimen;->bottom_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    int-to-float v1, v1

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_0
    iget p0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->i:F

    mul-float/2addr p0, v2

    sub-float/2addr v2, p0

    float-to-int p0, v2

    .line 7
    invoke-virtual {v0, v3, v3, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final PA()Le/a/c/a/g/d0;
    .locals 3

    iget-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->l:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->m:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/d0;

    return-object v0
.end method

.method public final QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    return-object v0
.end method

.method public final RA()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Le/a/c/a/c/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/c/a/c/a/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/c/a/c/a/b;->d8()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final SA()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Le/a/c/b/h;->g()Z

    move-result v2

    const-string v4, "permissionGroup"

    const-string v5, "noPermissionGroup"

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "activity?.activityResultRegistry ?: return"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v7

    const-string v8, "viewLifecycleOwner"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "registry"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "lifecycleOwner"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v9

    new-instance v12, Le/a/c/a/c/h/e;

    invoke-direct {v12, v2, v3}, Le/a/c/a/c/h/e;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    iget-object v9, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    invoke-interface {v9}, Le/a/c/c0/o;->Y()Landroidx/lifecycle/LiveData;

    move-result-object v9

    new-instance v10, Le/a/c/a/c/h/d;

    invoke-direct {v10, v2, v7}, Le/a/c/a/c/h/d;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ln3/v/b0;)V

    invoke-virtual {v9, v7, v10}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 7
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v13

    new-instance v7, Le/a/c/a/c/h/b;

    invoke-direct {v7, v2, v6, v3}, Le/a/c/a/c/h/b;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Landroidx/activity/result/ActivityResultRegistry;Ls1/w/d;)V

    const/4 v15, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v14, v8

    move-object/from16 v16, v7

    invoke-static/range {v13 .. v18}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 8
    iget-object v6, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    invoke-interface {v6}, Le/a/c/b/j;->U()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v7

    new-instance v10, Le/a/c/a/c/h/f;

    invoke-direct {v10, v2, v3}, Le/a/c/a/c/h/f;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ls1/w/d;)V

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object v2

    iget-object v2, v2, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v6, "binding.businessRv"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type com.truecaller.insights.ui.presentation.adapter.BusinessInsightsAdapter"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/c/a/a/a/c;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v6

    const-string v7, "businessInsightsViewModel"

    .line 11
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object v6, v2, Le/a/c/a/a/a/c;->b:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->b:Ln3/v/i0;

    .line 15
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->W(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    const-string v6, "Transformations.distinctUntilChanged(this)"

    invoke-static {v2, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v6

    new-instance v7, Le/a/c/a/c/a/d;

    invoke-direct {v7, v0}, Le/a/c/a/c/a/d;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    invoke-virtual {v2, v6, v7}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 17
    invoke-static/range {p0 .. p0}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v2

    new-instance v6, Le/a/c/a/c/a/e;

    invoke-direct {v6, v0, v3}, Le/a/c/a/c/a/e;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;Ls1/w/d;)V

    invoke-virtual {v2, v6}, Ln3/v/w;->b(Ls1/z/b/p;)Lq3/a/p1;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    invoke-interface {v2}, Le/a/c/c0/o;->u()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v3

    new-instance v6, Lb1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0}, Lb1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3, v6}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v2

    .line 22
    iget-object v2, v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    invoke-interface {v2}, Le/a/c/c0/o;->J()Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v3

    new-instance v6, Lb1;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v0}, Lb1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3, v6}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 24
    :cond_1
    iget-object v2, v1, Le/a/c/a/g/d0;->d:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 25
    iget-object v1, v1, Le/a/c/a/g/d0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object v2, v1, Le/a/c/a/g/d0;->d:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 27
    iget-object v2, v1, Le/a/c/a/g/d0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 28
    iget-object v2, v1, Le/a/c/a/g/d0;->e:Landroid/widget/ImageView;

    const-string v3, "noPermissionState"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    .line 29
    iget-object v1, v1, Le/a/c/a/g/d0;->e:Landroid/widget/ImageView;

    sget v2, Lcom/truecaller/insights/ui/R$drawable;->ic_tcx_no_sms_permission:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v1, "insightsPermissionHelper"

    .line 30
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public k8(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->k:Le/a/c/a/c/f/o;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Le/a/c/a/c/f/o;->c:Le/a/c/h/i;

    new-instance v2, Le/a/c/a/c/f/p;

    invoke-direct {v2, v1}, Le/a/c/a/c/f/p;-><init>(Le/a/c/a/c/f/o;)V

    invoke-interface {v0, p1, p2, v2}, Le/a/c/h/i;->c(Ljava/lang/String;ZLs1/z/b/l;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xc

    if-ne p1, p3, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->SA()V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object p2

    const-string p3, "default_sms"

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eventCategory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p1, "granted"

    goto :goto_1

    :cond_2
    const-string p1, "denied"

    :goto_1
    const-string v0, "click"

    .line 5
    invoke-virtual {p2, p3, v0, p1}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-class p3, Le/a/b0/m/b/a;

    const-class v0, Le/a/c/h/k/a;

    const-class v1, Le/a/c/l/a/a;

    const-string v2, "inflater"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/n/g0;->r(Landroidx/fragment/app/Fragment;)Le/a/b0/c;

    move-result-object v5

    const-string v2, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/l/a/a;

    .line 3
    new-instance v4, Le/a/c/a/c/e/a;

    invoke-direct {v4}, Le/a/c/a/c/e/a;-><init>()V

    const-string v2, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 4
    invoke-static {v0, v2}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/h/k/a;

    const-string v3, "EntryPointAccessors.from\u2026ntsComponent::class.java)"

    .line 5
    invoke-static {p3, v3}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/b0/m/b/a;

    .line 6
    const-class v3, Le/a/b0/c;

    invoke-static {v5, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    invoke-static {v6, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    invoke-static {v2, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    invoke-static {v8, p3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    new-instance p3, Le/a/c/a/c/e/b;

    const/4 v9, 0x0

    move-object v3, p3

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Le/a/c/a/c/e/b;-><init>(Le/a/c/a/c/e/a;Le/a/b0/c;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/m/b/a;Le/a/c/a/c/e/b$a;)V

    .line 11
    invoke-interface {v2}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 12
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->a:Le/a/c/h/h;

    .line 14
    iget-object v0, p3, Le/a/c/a/c/e/b;->b:Le/a/b0/m/b/a;

    invoke-interface {v0}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->b:Le/a/b0/m/c/a;

    .line 17
    iget-object v0, p3, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->O0()Le/a/c/b/h;

    move-result-object v0

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    .line 20
    iget-object v0, p3, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->f1()Le/a/c/h/f;

    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->d:Le/a/c/h/f;

    .line 23
    iget-object v0, p3, Le/a/c/a/c/e/b;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/a/a/c;

    .line 24
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->e:Le/a/c/a/a/a/c;

    .line 25
    iget-object v0, p3, Le/a/c/a/c/e/b;->y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/v/a1$b;

    .line 26
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->f:Ln3/v/a1$b;

    .line 27
    iget-object v0, p3, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->R3()Le/a/c/h/i;

    move-result-object v0

    .line 28
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->g:Le/a/c/h/i;

    .line 30
    iget-object p3, p3, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {p3}, Le/a/c/l/a/a;->x6()Le/a/c/b/e;

    move-result-object p3

    .line 31
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->h:Le/a/c/b/e;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object p3

    iget-object v0, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->b:Le/a/b0/m/c/a;

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 34
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v1, p3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->o:Le/a/c/a/i/h;

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 37
    iget-object v1, p3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->p:Le/a/c/a/c/h/j;

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 38
    iget-object v1, p3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->S()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->n:Le/a/c/a/c/f/y;

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 40
    :cond_0
    iget-object v1, p3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->q:Le/a/c/a/i/a;

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 41
    invoke-virtual {v0, p3}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 42
    iget-object p3, p3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->u:Le/a/c/a/c/h/k;

    invoke-virtual {v0, p3}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 43
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/insights/ui/R$layout;->fragment_business_insights:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "searchContactApi"

    .line 44
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->RA()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->k:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    .line 2
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    const-string v0, "insightsPermissionHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2, p3}, Le/a/c/b/h;->e([Ljava/lang/String;[I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/c/b/h;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->SA()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object p2

    const-string p3, "read_sms"

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eventCategory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "granted"

    goto :goto_0

    :cond_1
    const-string p1, "denied"

    :goto_0
    const-string v0, "click"

    .line 7
    invoke-virtual {p2, p3, v0, p1}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object p1

    .line 3
    iget-object p2, p1, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "businessRv"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->e:Le/a/c/a/a/a/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 4
    iget-object p2, p1, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$SafeLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$SafeLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iget-object p2, p1, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/b0/a/g;

    invoke-direct {v0}, Ln3/b0/a/g;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 6
    iget-object p1, p1, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Le/a/c/a/c/a/f;

    invoke-direct {p2, p0}, Le/a/c/a/c/a/f;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->SA()V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/d0;->c:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$e;

    invoke-direct {p2, p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$e;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->PA()Le/a/c/a/g/d0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/d0;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.businessRv"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p2, Le/a/c/a/c/a/c;

    invoke-direct {p2, p1, p0}, Le/a/c/a/c/a/c;-><init>(Landroid/view/View;Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroidx/core/widget/NestedScrollView;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    if-eqz v2, :cond_1

    new-instance p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$f;

    invoke-direct {p1, p0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$f;-><init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V

    invoke-virtual {v2, p1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "insightsAdapter"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
