.class public final Le/a/j/a/c/a;
.super Le/a/j/a/c/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,J+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u001eR\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001d\u0010*\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0017\u001a\u0004\u0008)\u0010\u001e\u00a8\u0006-"
    }
    d2 = {
        "Le/a/j/a/c/a;",
        "Landroidx/fragment/app/Fragment;",
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
        "Le/a/j/d/d;",
        "e",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "RA",
        "()Le/a/j/d/d;",
        "binding",
        "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;",
        "f",
        "Ls1/g;",
        "getViewModel",
        "()Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;",
        "viewModel",
        "",
        "h",
        "getHasFocusColor",
        "()I",
        "hasFocusColor",
        "Le/a/p5/h0;",
        "g",
        "Le/a/p5/h0;",
        "getResourceProvider",
        "()Le/a/p5/h0;",
        "setResourceProvider",
        "(Le/a/p5/h0;)V",
        "resourceProvider",
        "i",
        "getHasNoFocusColor",
        "hasNoFocusColor",
        "<init>",
        "()V",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic j:[Ls1/a/l;


# instance fields
.field public final e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final f:Ls1/g;

.field public g:Le/a/p5/h0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final h:Ls1/g;

.field public final i:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/j/a/c/a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/surveys/databinding/FragmentFreeTextQuestionBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/j/a/c/a;->j:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/j/a/c/c;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/j/a/c/a$d;

    invoke-direct {v1}, Le/a/j/a/c/a$d;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/j/a/c/a;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    const-class v0, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    new-instance v1, Le/a/j/a/c/a$b;

    invoke-direct {v1, p0}, Le/a/j/a/c/a$b;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    new-instance v2, Le/a/j/a/c/a$c;

    invoke-direct {v2, p0}, Le/a/j/a/c/a$c;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 5
    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 6
    iput-object v0, p0, Le/a/j/a/c/a;->f:Ls1/g;

    .line 7
    new-instance v0, Le/a/j/a/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/j/a/c/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/j/a/c/a;->h:Ls1/g;

    .line 8
    new-instance v0, Le/a/j/a/c/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/j/a/c/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/j/a/c/a;->i:Ls1/g;

    return-void
.end method

.method public static final QA(Le/a/j/a/c/a;)Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/j/a/c/a;->f:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;

    return-object p0
.end method


# virtual methods
.method public final RA()Le/a/j/d/d;
    .locals 3

    iget-object v0, p0, Le/a/j/a/c/a;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/j/a/c/a;->j:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/j/d/d;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/surveys/R$layout;->fragment_free_text_question:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.toThemeInflater\u2026estion, container, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Le/a/j/a/c/a;->RA()Le/a/j/d/d;

    move-result-object p1

    .line 3
    iget-object p2, p1, Le/a/j/d/d;->a:Landroid/widget/EditText;

    .line 4
    new-instance v0, Le/a/j/a/c/a$e;

    invoke-direct {v0, p1, p0}, Le/a/j/a/c/a$e;-><init>(Le/a/j/d/d;Le/a/j/a/c/a;)V

    invoke-static {p2, v0}, Le/a/p5/s0/f;->x(Landroid/view/View;Ls1/z/b/l;)V

    .line 5
    new-instance v0, Le/a/j/a/c/a$f;

    invoke-direct {v0, p1, p0}, Le/a/j/a/c/a$f;-><init>(Le/a/j/d/d;Le/a/j/a/c/a;)V

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object p2, p1, Le/a/j/d/d;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Le/a/j/a/c/a$g;

    invoke-direct {v0, p1, p0}, Le/a/j/a/c/a$g;-><init>(Le/a/j/d/d;Le/a/j/a/c/a;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p2, p1, Le/a/j/d/d;->g:Landroid/widget/RadioGroup;

    new-instance v0, Le/a/j/a/c/a$h;

    invoke-direct {v0, p1, p0}, Le/a/j/a/c/a$h;-><init>(Le/a/j/d/d;Le/a/j/a/c/a;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object p1

    const-string p2, "viewLifecycleOwner"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object p1

    new-instance v0, Le/a/j/a/c/a$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/j/a/c/a$i;-><init>(Le/a/j/a/c/a;Ls1/w/d;)V

    invoke-virtual {p1, v0}, Ln3/v/w;->b(Ls1/z/b/p;)Lq3/a/p1;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object p1

    new-instance p2, Le/a/j/a/c/a$j;

    invoke-direct {p2, p0, v1}, Le/a/j/a/c/a$j;-><init>(Le/a/j/a/c/a;Ls1/w/d;)V

    invoke-virtual {p1, p2}, Ln3/v/w;->b(Ls1/z/b/p;)Lq3/a/p1;

    return-void
.end method
