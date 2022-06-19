.class public final Le/a/c/a/e/a/f;
.super Le/m/a/g/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/e/a/f$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J-\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Le/a/c/a/e/a/f;",
        "Le/m/a/g/e/e;",
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
        "Le/a/c/a/g/l;",
        "a",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "OA",
        "()Le/a/c/a/g/l;",
        "binding",
        "<init>",
        "()V",
        "d",
        "b",
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
.field public static final synthetic b:[Ls1/a/l;

.field public static final c:Ljava/lang/String;

.field public static final d:Le/a/c/a/e/a/f$b;


# instance fields
.field public final a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/c/a/e/a/f;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetFeedbackThanksBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/c/a/e/a/f;->b:[Ls1/a/l;

    new-instance v0, Le/a/c/a/e/a/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/a/e/a/f$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/c/a/e/a/f;->d:Le/a/c/a/e/a/f$b;

    .line 1
    const-class v0, Le/a/c/a/e/a/f;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/c/a/e/a/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/c/a/e/a/f$a;

    invoke-direct {v1}, Le/a/c/a/e/a/f$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/c/a/e/a/f;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method


# virtual methods
.method public final OA()Le/a/c/a/g/l;
    .locals 3

    iget-object v0, p0, Le/a/c/a/e/a/f;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/c/a/e/a/f;->b:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/l;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/insights/ui/R$layout;->bottomsheet_feedback_thanks:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Le/a/c/a/e/a/g;

    invoke-direct {p2, p0}, Le/a/c/a/e/a/g;-><init>(Le/a/c/a/e/a/f;)V

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "arguments ?: return"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "thanks_ui_type"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "arguments.getString(EXTR\u2026THANKS_UI_TYPE) ?: return"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/truecaller/insights/ui/semicard/view/UiType;->valueOf(Ljava/lang/String;)Lcom/truecaller/insights/ui/semicard/view/UiType;

    move-result-object p2

    const-string v0, "message_type"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "binding.header"

    if-eqz p2, :cond_2

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    const-string v2, "Locale.US"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/a/c/a/e/a/f;->OA()Le/a/c/a/g/l;

    move-result-object p2

    iget-object p2, p2, Le/a/c/a/g/l;->a:Landroid/widget/TextView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Le/a/c/a/e/a/f;->OA()Le/a/c/a/g/l;

    move-result-object p2

    iget-object p2, p2, Le/a/c/a/g/l;->a:Landroid/widget/TextView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/truecaller/insights/ui/R$string;->type_recorded:I

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v2, p1, v6, v1}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Le/a/c/a/e/a/f;->OA()Le/a/c/a/g/l;

    move-result-object p2

    iget-object p2, p2, Le/a/c/a/g/l;->a:Landroid/widget/TextView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Le/a/c/a/e/a/f;->OA()Le/a/c/a/g/l;

    move-result-object p2

    iget-object p2, p2, Le/a/c/a/g/l;->a:Landroid/widget/TextView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/truecaller/insights/ui/R$string;->feedback_received:I

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v2, p1, v6, v1}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Le/a/c/a/e/a/f;->OA()Le/a/c/a/g/l;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/l;->a:Landroid/widget/TextView;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method
