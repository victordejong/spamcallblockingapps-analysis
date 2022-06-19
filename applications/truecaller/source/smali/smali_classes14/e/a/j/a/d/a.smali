.class public final Le/a/j/a/d/a;
.super Le/a/j/a/d/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008&\u0010\'J+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001f\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001d\u0010\"\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0011\u001a\u0004\u0008!\u0010\u0018R\u001d\u0010%\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0011\u001a\u0004\u0008$\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Le/a/j/a/d/a;",
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
        "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;",
        "f",
        "Ls1/g;",
        "getViewModel",
        "()Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;",
        "viewModel",
        "",
        "i",
        "getRatingGreenColor",
        "()I",
        "ratingGreenColor",
        "Le/a/j/d/a;",
        "e",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "QA",
        "()Le/a/j/d/a;",
        "binding",
        "h",
        "getRatingYellowColor",
        "ratingYellowColor",
        "g",
        "getRatingRedColor",
        "ratingRedColor",
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

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/j/a/d/a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/surveys/databinding/FragmentBizRatingQuestionBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/j/a/d/a;->j:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/j/a/d/c;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/j/a/d/a$d;

    invoke-direct {v1}, Le/a/j/a/d/a$d;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/j/a/d/a;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    const-class v0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    new-instance v1, Le/a/j/a/d/a$b;

    invoke-direct {v1, p0}, Le/a/j/a/d/a$b;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    new-instance v2, Le/a/j/a/d/a$c;

    invoke-direct {v2, p0}, Le/a/j/a/d/a$c;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 5
    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 6
    iput-object v0, p0, Le/a/j/a/d/a;->f:Ls1/g;

    .line 7
    new-instance v0, Le/a/j/a/d/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/j/a/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/j/a/d/a;->g:Ls1/g;

    .line 8
    new-instance v0, Le/a/j/a/d/a$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Le/a/j/a/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/j/a/d/a;->h:Ls1/g;

    .line 9
    new-instance v0, Le/a/j/a/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/j/a/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/j/a/d/a;->i:Ls1/g;

    return-void
.end method


# virtual methods
.method public final QA()Le/a/j/d/a;
    .locals 3

    iget-object v0, p0, Le/a/j/a/d/a;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/j/a/d/a;->j:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/j/d/a;

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

    sget p3, Lcom/truecaller/surveys/R$layout;->fragment_biz_rating_question:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.toThemeInflater\u2026estion, container, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object p1

    .line 3
    instance-of p2, p1, Le/a/i5/d$d;

    const-string v0, "binding.ratingBar"

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Le/a/i5/d$b;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Le/a/j/a/d/a;->QA()Le/a/j/d/a;

    move-result-object p1

    iget-object p1, p1, Le/a/j/d/a;->b:Landroid/widget/RatingBar;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setSelected(Z)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/j/a/d/a;->QA()Le/a/j/d/a;

    move-result-object p1

    iget-object p1, p1, Le/a/j/d/a;->b:Landroid/widget/RatingBar;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setSelected(Z)V

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object p1

    const-string p2, "viewLifecycleOwner"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object p1

    new-instance p2, Le/a/j/a/d/a$e;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Le/a/j/a/d/a$e;-><init>(Le/a/j/a/d/a;Ls1/w/d;)V

    invoke-virtual {p1, p2}, Ln3/v/w;->b(Ls1/z/b/p;)Lq3/a/p1;

    .line 7
    invoke-virtual {p0}, Le/a/j/a/d/a;->QA()Le/a/j/d/a;

    move-result-object p1

    iget-object p1, p1, Le/a/j/d/a;->b:Landroid/widget/RatingBar;

    new-instance p2, Le/a/j/a/d/a$f;

    invoke-direct {p2, p0}, Le/a/j/a/d/a$f;-><init>(Le/a/j/a/d/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void
.end method
