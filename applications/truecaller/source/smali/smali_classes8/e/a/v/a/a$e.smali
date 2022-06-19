.class public final Le/a/v/a/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Le/a/v/a/s0/c;

.field public final b:Le/a/v/a/a$e$a;

.field public final synthetic c:Le/a/v/a/a;


# direct methods
.method public constructor <init>(Le/a/v/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/v/a/s0/c;

    .line 3
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/v/k/c;->h:Landroid/widget/LinearLayout;

    const-string v1, "binding.contentContainer"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Le/a/v/a/s0/c;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Le/a/v/a/a$e;->a:Le/a/v/a/s0/c;

    .line 6
    new-instance p1, Le/a/v/a/a$e$a;

    invoke-direct {p1}, Le/a/v/a/a$e$a;-><init>()V

    iput-object p1, p0, Le/a/v/a/a$e;->b:Le/a/v/a/a$e$a;

    return-void
.end method


# virtual methods
.method public A(Lcom/truecaller/data/entity/Contact;)V
    .locals 6

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    iget-object v2, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY_NUMBER:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v4, "context"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "action"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    const-string v2, "LABEL_NUMBER"

    invoke-static {v0, p1, v2}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    sget v0, Lcom/truecaller/details_view/R$string;->details_view_copied_to_clipboard:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 5

    const-string v0, "contactId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    iget-object v2, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frag"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    iget-object v3, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->EDIT:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;

    invoke-virtual {v1, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v1

    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 5
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x1

    const-string v1, "finishActivityOnSaveCompleted"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x15

    .line 8
    invoke-static {v2, v0, p1}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    return-void
.end method

.method public C()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    iget-object v1, v0, Le/a/v/a/a;->i:Le/a/v/a/n0/a;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    const-string v2, "binding"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/a/v/k/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.root"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/v/a/a$e;->b:Le/a/v/a/a$e$a;

    check-cast v1, Le/a/v/a/n0/c;

    const-string v4, "view"

    .line 7
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "activity"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "detailsShowcaseDismissedCallback"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xb

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    iget-object v6, v1, Le/a/v/a/n0/c;->a:Le/a/p5/u0/a;

    sget-object v7, Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;->VOIP:Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;

    invoke-virtual {v1, v7, v5, v2}, Le/a/v/a/n0/c;->a(Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;Landroid/view/View;Landroid/app/Activity;)Le/a/p5/u0/d;

    move-result-object v5

    invoke-interface {v6, v5}, Le/a/p5/u0/a;->d(Le/a/p5/u0/d;)V

    .line 11
    iget-object v5, v1, Le/a/v/a/n0/c;->a:Le/a/p5/u0/a;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v5, 0xd

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v5, v1, Le/a/v/a/n0/c;->b:Le/a/p5/u0/a;

    sget-object v6, Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;->CONTEXT_CALL:Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;

    invoke-virtual {v1, v6, v0, v2}, Le/a/v/a/n0/c;->a(Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;Landroid/view/View;Landroid/app/Activity;)Le/a/p5/u0/d;

    move-result-object v0

    invoke-interface {v5, v0}, Le/a/p5/u0/a;->d(Le/a/p5/u0/d;)V

    .line 14
    iget-object v0, v1, Le/a/v/a/n0/c;->b:Le/a/p5/u0/a;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    iget-object v0, v1, Le/a/v/a/n0/c;->c:Le/a/p5/u0/b;

    .line 16
    new-instance v1, Le/a/v/a/n0/b;

    invoke-direct {v1, v3}, Le/a/v/a/n0/b;-><init>(Le/a/v/a/n0/d;)V

    .line 17
    invoke-interface {v0, v4, v2, v1}, Le/a/p5/u0/b;->c(Ljava/util/List;Landroid/app/Activity;Le/a/p5/u0/e;)V

    return-void

    :cond_2
    const-string v0, "detailsShowcaseController"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public D(Lcom/truecaller/spamcategories/SpamCategoryRequest;)V
    .locals 3

    const-string v0, "spamCategoryRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/truecaller/spamcategories/ui/SpamCategoriesActivity$a;->a(Landroid/content/Context;Lcom/truecaller/spamcategories/SpamCategoryRequest;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->v:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "binding.swipeRefreshLayout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public F(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->i:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public F2(Lcom/truecaller/data/entity/Contact;)V
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    iget-object v1, v0, Le/a/v/a/a;->d:Le/a/v/o/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v2, "requireActivity()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Le/a/v/o/a;->c(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;)V

    return-void

    :cond_0
    const-string p1, "callingRouter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public G(Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    iget-object v0, v0, Le/a/v/a/a;->k:Le/a/v/a/a$f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/v/a/a$f;->Y(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method

.method public final H(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 p1, 0x80

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    .line 1
    :goto_0
    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 3
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 4
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 5
    iget-object v0, v0, Le/a/v/k/c;->l:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 6
    sget v1, Lcom/truecaller/details_view/R$id;->collapsed:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->k1(I)Ln3/i/c/d;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 8
    invoke-virtual {v1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v1

    .line 9
    iget-object v1, v1, Le/a/v/k/c;->g:Landroidx/core/widget/NestedScrollView;

    const-string v2, "binding.content"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x3

    iget-object v3, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 10
    iget v3, v3, Le/a/v/a/a;->m:I

    add-int/2addr p1, v3

    .line 11
    invoke-virtual {v0, v1, v2, p1}, Ln3/i/c/d;->m(III)V

    return-void
.end method

.method public a(Lcom/truecaller/data/entity/Contact;)V
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    iget-object v1, v0, Le/a/v/a/a;->d:Le/a/v/o/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v2, "requireActivity()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Le/a/v/o/a;->b(Landroid/app/Activity;Lcom/truecaller/data/entity/Contact;)V

    return-void

    :cond_0
    const-string p1, "callingRouter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Ljava/util/List;Le/a/v/a/s;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/details_view/ui/widget/WidgetType;",
            ">;",
            "Le/a/v/a/s;",
            ")V"
        }
    .end annotation

    const-string v0, "widgets"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "detailsViewModel"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/v/a/a$e;->a:Le/a/v/a/s0/c;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v2, Le/a/v/a/s0/c;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, v2, Le/a/v/a/s0/c;->b:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/v/a/s0/a;

    .line 6
    invoke-interface {v0, p2}, Le/a/v/a/s0/a;->K0(Le/a/v/a/s;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v2, Le/a/v/a/s0/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    iget-object v0, v2, Le/a/v/a/s0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, v2, Le/a/v/a/s0/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, v2, Le/a/v/a/s0/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/details_view/ui/widget/WidgetType;

    .line 12
    iget-object v1, v2, Le/a/v/a/s0/c;->b:Ljava/util/List;

    .line 13
    iget-object v3, v2, Le/a/v/a/s0/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "context"

    packed-switch v3, :pswitch_data_0

    .line 15
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 16
    :pswitch_0
    new-instance v3, Le/a/v/a/y/g;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/y/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 17
    :pswitch_1
    new-instance v3, Le/a/v/a/f0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v7, v6, v4}, Le/a/v/a/f0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/16 :goto_2

    .line 18
    :pswitch_2
    new-instance v3, Le/a/v/a/g0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v7, v6, v4}, Le/a/v/a/g0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/16 :goto_2

    .line 19
    :pswitch_3
    new-instance v3, Le/a/v/a/o0/h;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/o0/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    new-instance v3, Le/a/v/a/p0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/p0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 21
    :pswitch_5
    new-instance v3, Le/a/v/a/q0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/q0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 22
    :pswitch_6
    new-instance v3, Le/a/v/a/m0/e;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/m0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 23
    :pswitch_7
    new-instance v3, Le/a/v/a/k0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/k0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 24
    :pswitch_8
    new-instance v3, Le/a/v/a/l0/a;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/l0/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto/16 :goto_2

    .line 25
    :pswitch_9
    new-instance v3, Le/a/v/a/i0/f;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/i0/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto :goto_2

    .line 26
    :pswitch_a
    new-instance v3, Le/a/v/a/d0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/d0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto :goto_2

    .line 27
    :pswitch_b
    new-instance v3, Le/a/v/a/c/a/a;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/c/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto :goto_2

    .line 28
    :pswitch_c
    new-instance v3, Le/a/v/a/c0/n;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/c0/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto :goto_2

    .line 29
    :pswitch_d
    new-instance v3, Le/a/v/a/b0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/b0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto :goto_2

    .line 30
    :pswitch_e
    new-instance v3, Le/a/v/a/h0/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/h0/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    goto :goto_2

    .line 31
    :pswitch_f
    new-instance v3, Le/a/v/a/w/d;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Le/a/v/a/w/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    :goto_2
    const/16 v4, 0x8

    .line 32
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33
    sget-object v4, Lcom/truecaller/details_view/ui/widget/WidgetType;->LEARN_MORE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-ne v0, v4, :cond_1

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    .line 35
    invoke-static {v4}, Le/a/p5/s0/g;->O(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 36
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 37
    invoke-static {v4}, Le/a/p5/s0/g;->O(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    :goto_3
    iget-object v4, v2, Le/a/v/a/s0/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-interface {v3, p2}, Le/a/v/a/s0/a;->K0(Le/a/v/a/s;)V

    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_not_spam_confirmation_message:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_action_button_not_spam:I

    new-instance v2, Le/a/v/a/a$e$f;

    invoke-direct {v2, p0}, Le/a/v/a/a$e$f;-><init>(Le/a/v/a/a$e;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/details_view/R$string;->str_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public d(Lcom/truecaller/data/entity/Contact;)V
    .locals 6

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    iget-object v2, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frag"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    iget-object v4, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v5, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->SAVE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;

    invoke-virtual {v3, v4, v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 5
    iget-object v0, v1, Le/a/v/p/k;->b:Le/a/v/p/i;

    invoke-interface {v0, p1, v2}, Le/a/v/p/i;->a(Lcom/truecaller/data/entity/Contact;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "frag.requireActivity()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "contact_save"

    .line 8
    invoke-virtual {v1, v0, p1, v3, v2}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v1}, Ln3/r/a/a;->g()I

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_delete_contact_confirmation_title:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_delete_contact_confirmation_message:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_menu_remove_contact:I

    new-instance v2, Le/a/v/a/a$e$d;

    invoke-direct {v2, p0}, Le/a/v/a/a$e$d;-><init>(Le/a/v/a/a$e;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    sget v1, Lcom/truecaller/details_view/R$string;->str_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->b:Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Le/a/v/a/a$e;->H(Z)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g(Lcom/truecaller/data/entity/Contact;)V
    .locals 6

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    iget-object v2, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY_NAME:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v4, "context"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "action"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    .line 12
    invoke-static {v0, p1, v5}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    sget v0, Lcom/truecaller/details_view/R$string;->details_view_copied_to_clipboard:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public i(Le/a/v/a/s;)V
    .locals 26

    move-object/from16 v0, p1

    const-string v1, "detailsViewModel"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 1
    iget-object v3, v2, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v3}, Le/a/v/a/a;->QA()Le/a/v/a/e0/a;

    move-result-object v3

    check-cast v3, Le/a/v/a/e0/c;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, v3, Le/a/v/a/e0/c;->d:Le/a/v/a/s;

    .line 4
    iget-object v1, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    iget-object v4, v0, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 6
    iget-object v5, v0, Le/a/v/a/s;->c:Le/a/v/a/r0/b;

    .line 7
    iget-object v5, v5, Le/a/v/a/r0/b;->a:Le/a/v/a/r0/f;

    .line 8
    iget-object v6, v3, Le/a/v/a/e0/c;->f:Le/a/b0/a/b/b;

    invoke-interface {v6, v1}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9
    instance-of v6, v4, Le/a/v/a/d$f;

    const/16 v25, 0x1

    if-eqz v6, :cond_0

    instance-of v6, v4, Le/a/v/a/d$f$c;

    if-nez v6, :cond_0

    move/from16 v6, v25

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 10
    instance-of v12, v4, Le/a/v/a/d$f$c;

    move/from16 v23, v12

    .line 11
    iget v12, v5, Le/a/v/a/r0/f;->j:I

    .line 12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v24, 0x3fef

    const/4 v2, 0x0

    move v12, v6

    .line 13
    invoke-static/range {v7 .. v24}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v6

    .line 14
    iget-object v7, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/v/a/e0/b;

    if-eqz v7, :cond_1

    invoke-interface {v7, v6}, Le/a/v/a/e0/b;->v1(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 15
    :cond_1
    iget-object v6, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/v/a/e0/b;

    if-eqz v6, :cond_c

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->c1()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v3, Le/a/v/a/e0/c;->k:Le/a/b0/e/l;

    invoke-interface {v7}, Le/a/b0/e/l;->d()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 17
    sget-object v7, Le/a/v/a/d$g;->a:Le/a/v/a/d$g;

    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    sget-object v7, Le/a/v/a/d$d;->a:Le/a/v/a/d$d;

    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    instance-of v7, v4, Le/a/v/a/d$f$d;

    if-eqz v7, :cond_4

    :goto_1
    move v12, v2

    goto :goto_2

    :cond_4
    move/from16 v12, v25

    :goto_2
    if-eqz v12, :cond_5

    move/from16 v12, v25

    goto :goto_3

    :cond_5
    move v12, v2

    .line 20
    :goto_3
    iget-object v7, v3, Le/a/v/a/e0/c;->n:Le/a/z2/a;

    invoke-interface {v7, v1}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v7

    .line 21
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move v8, v2

    goto :goto_5

    :cond_7
    :goto_4
    move/from16 v8, v25

    :goto_5
    if-nez v8, :cond_8

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    goto :goto_8

    .line 22
    :cond_8
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    move v8, v2

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v8, v25

    :goto_7
    if-nez v8, :cond_b

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    goto :goto_8

    .line 23
    :cond_b
    iget-object v8, v3, Le/a/v/a/e0/c;->j:Le/a/p5/c0;

    sget v9, Lcom/truecaller/details_view/R$string;->details_view_unknown_contact:I

    new-array v10, v2, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_8
    const-string v9, "when {\n            conta\u2026nknown_contact)\n        }"

    .line 24
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v9, Le/a/v/a/e0/f;

    invoke-direct {v9, v8, v12, v7}, Le/a/v/a/e0/f;-><init>(Ljava/lang/String;ZZ)V

    .line 26
    invoke-interface {v6, v9}, Le/a/v/a/e0/b;->B1(Le/a/v/a/e0/f;)V

    .line 27
    :cond_c
    iget-object v6, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/v/a/e0/b;

    if-eqz v6, :cond_d

    .line 28
    iget-object v7, v5, Le/a/v/a/r0/f;->h:Landroid/graphics/drawable/Drawable;

    .line 29
    iget v8, v5, Le/a/v/a/r0/f;->f:I

    .line 30
    iget v9, v5, Le/a/v/a/r0/f;->g:I

    .line 31
    invoke-interface {v6, v4, v7, v8, v9}, Le/a/v/a/e0/b;->F1(Le/a/v/a/d;Landroid/graphics/drawable/Drawable;II)V

    .line 32
    iget v4, v5, Le/a/v/a/r0/f;->f:I

    .line 33
    invoke-interface {v6, v4}, Le/a/v/a/e0/b;->K1(I)V

    .line 34
    iget-object v4, v5, Le/a/v/a/r0/f;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    .line 35
    invoke-interface {v6, v4}, Le/a/v/a/e0/b;->I1(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;)V

    .line 36
    :cond_d
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_e

    sget v4, Lcom/truecaller/details_view/R$string;->details_view_phone_book_contact_title:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_9

    .line 37
    :cond_e
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->l0()Z

    move-result v4

    if-eqz v4, :cond_f

    sget v4, Lcom/truecaller/details_view/R$string;->details_view_cloud_contact_title:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_9

    :cond_f
    move-object v4, v10

    .line 38
    :goto_9
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_10

    goto :goto_a

    :cond_10
    move v12, v2

    goto :goto_b

    :cond_11
    :goto_a
    move/from16 v12, v25

    .line 39
    :goto_b
    iget-object v6, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v6, Le/a/v/a/e0/b;

    if-eqz v6, :cond_14

    .line 40
    new-instance v7, Le/a/v/a/e0/g;

    if-eqz v12, :cond_12

    .line 41
    sget v4, Lcom/truecaller/details_view/R$string;->details_view_empty_title:I

    goto :goto_c

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_c

    .line 42
    :cond_13
    iget v4, v5, Le/a/v/a/r0/f;->b:I

    .line 43
    :goto_c
    iget v8, v5, Le/a/v/a/r0/f;->c:I

    .line 44
    iget-object v9, v5, Le/a/v/a/r0/f;->d:Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v11, v5, Le/a/v/a/r0/f;->e:Ljava/lang/Integer;

    .line 46
    invoke-direct {v7, v4, v8, v9, v11}, Le/a/v/a/e0/g;-><init>(IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 47
    invoke-interface {v6, v7}, Le/a/v/a/e0/b;->z1(Le/a/v/a/e0/g;)V

    .line 48
    :cond_14
    iget-object v4, v0, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 49
    instance-of v4, v4, Le/a/v/a/d$e;

    if-eqz v4, :cond_1b

    .line 50
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Le/a/v/a/e0/b;->w1()V

    .line 51
    :cond_15
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Le/a/v/a/e0/b;->G()V

    .line 52
    :cond_16
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Le/a/v/a/e0/b;->A1()V

    .line 53
    :cond_17
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Le/a/v/a/e0/b;->H1()V

    .line 54
    :cond_18
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Le/a/v/a/e0/b;->P0()V

    .line 55
    :cond_19
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Le/a/v/a/e0/b;->z()V

    .line 56
    :cond_1a
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Le/a/v/a/e0/b;->n()V

    goto/16 :goto_1a

    .line 57
    :cond_1b
    iget-object v4, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/v/a/e0/b;

    if-eqz v4, :cond_1c

    invoke-interface {v4}, Le/a/v/a/e0/b;->E1()V

    .line 58
    :cond_1c
    iget-object v4, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/v/a/e0/b;

    if-eqz v4, :cond_1d

    invoke-interface {v4, v0}, Le/a/v/a/e0/b;->D1(Le/a/v/a/s;)V

    .line 59
    :cond_1d
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->j0()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_d

    :cond_1e
    move v12, v2

    goto :goto_e

    :cond_1f
    :goto_d
    move/from16 v12, v25

    .line 60
    :goto_e
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v4

    if-nez v4, :cond_26

    if-eqz v12, :cond_20

    goto :goto_13

    .line 61
    :cond_20
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_f

    :cond_21
    move v12, v2

    goto :goto_10

    :cond_22
    :goto_f
    move/from16 v12, v25

    :goto_10
    if-nez v12, :cond_23

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 62
    :cond_23
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_11

    :cond_24
    move v12, v2

    goto :goto_12

    :cond_25
    :goto_11
    move/from16 v12, v25

    :goto_12
    if-nez v12, :cond_26

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_26
    :goto_13
    move-object v4, v10

    :goto_14
    if-eqz v4, :cond_28

    .line 63
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_15

    :cond_27
    move v12, v2

    goto :goto_16

    :cond_28
    :goto_15
    move/from16 v12, v25

    :goto_16
    if-nez v12, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_29
    move-object v2, v10

    .line 64
    :goto_17
    iget-object v4, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/v/a/e0/b;

    if-eqz v2, :cond_2a

    if-eqz v4, :cond_2b

    invoke-interface {v4, v2}, Le/a/v/a/e0/b;->y1(Ljava/lang/String;)V

    goto :goto_18

    :cond_2a
    if-eqz v4, :cond_2b

    invoke-interface {v4}, Le/a/v/a/e0/b;->G()V

    .line 65
    :cond_2b
    :goto_18
    iget-object v2, v3, Le/a/v/a/e0/c;->g:Le/a/g5/p;

    invoke-interface {v2, v1}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 66
    new-instance v4, Le/a/v/a/e0/i;

    .line 67
    iget-object v6, v2, Le/a/b0/p/c;->b:Ljava/lang/String;

    .line 68
    iget-object v2, v2, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 69
    iget-object v5, v5, Le/a/v/a/r0/f;->i:Le/a/v/a/r0/h;

    .line 70
    invoke-direct {v4, v6, v2, v5}, Le/a/v/a/e0/i;-><init>(Ljava/lang/String;Ljava/lang/String;Le/a/v/a/r0/h;)V

    .line 71
    iget-object v2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/e0/b;

    if-eqz v2, :cond_2d

    invoke-interface {v2, v4}, Le/a/v/a/e0/b;->J1(Le/a/v/a/e0/i;)V

    goto :goto_19

    .line 72
    :cond_2c
    iget-object v2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/e0/b;

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Le/a/v/a/e0/b;->P0()V

    .line 73
    :cond_2d
    :goto_19
    iget-object v5, v3, Le/a/v/a/e0/c;->e:Ls1/w/f;

    new-instance v7, Le/a/v/a/e0/e;

    invoke-direct {v7, v3, v1, v10}, Le/a/v/a/e0/e;-><init>(Le/a/v/a/e0/c;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 74
    iget-object v5, v3, Le/a/v/a/e0/c;->e:Ls1/w/f;

    new-instance v7, Le/a/v/a/e0/d;

    invoke-direct {v7, v3, v0, v10}, Le/a/v/a/e0/d;-><init>(Le/a/v/a/e0/c;Le/a/v/a/s;Ls1/w/d;)V

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 75
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 76
    new-instance v1, Le/a/x4/l/a$c;

    invoke-direct {v1, v0}, Le/a/x4/l/a$c;-><init>(Lcom/truecaller/data/entity/Contact;)V

    .line 77
    iget-object v2, v3, Le/a/v/a/e0/c;->m:Le/a/x4/l/b;

    invoke-virtual {v2, v1}, Le/a/x4/l/b;->Kj(Le/a/x4/l/a;)V

    .line 78
    iget-object v1, v3, Le/a/v/a/e0/c;->l:Le/a/x4/g;

    invoke-interface {v1, v0}, Le/a/x4/g;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_2f

    iget-object v1, v3, Le/a/v/a/e0/c;->m:Le/a/x4/l/b;

    invoke-interface {v0, v1}, Le/a/v/a/e0/b;->P(Le/a/m5/c;)V

    goto :goto_1a

    .line 79
    :cond_2e
    iget-object v0, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/e0/b;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Le/a/v/a/e0/b;->n()V

    :cond_2f
    :goto_1a
    return-void
.end method

.method public j(JZILcom/truecaller/whoviewedme/ProfileViewSource;)V
    .locals 7

    const-string v0, "source"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/truecaller/whoviewedme/GenerateProfileViewService$a;->a(Landroid/content/Context;JZILcom/truecaller/whoviewedme/ProfileViewSource;)V

    return-void
.end method

.method public k(Lcom/truecaller/data/entity/Contact;)V
    .locals 5

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    iget-object v3, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->SEARCH_WEB:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;

    invoke-virtual {v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v2

    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v2, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_2
    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "https://www.google.com/search?q="

    .line 10
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_5

    const-string v2, "&cr=country"

    .line 11
    invoke-static {p1, v2, v0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_5
    iget-object v0, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Le/a/p5/s0/g;->Q0(Ljava/lang/String;Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public m(Lcom/truecaller/data/entity/Contact;)V
    .locals 8

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    iget-object v2, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v4, "context"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "action"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->C()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jobDetails"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->i()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->h()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object p1, v5

    goto :goto_0

    :cond_0
    const-string v6, "\""

    invoke-static {v6, p1, v6}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object p1, v6, v0

    const-string p1, ", "

    .line 16
    invoke-static {p1, v6}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.combineDefau\u2026, number, address, about)"

    .line 17
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    .line 19
    invoke-static {v0, p1, v5}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    sget v0, Lcom/truecaller/details_view/R$string;->details_view_copied_to_clipboard:I

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const-string v0, "spammerName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    instance-of v1, v0, Ln3/b/a/h;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    move-object v4, v0

    check-cast v4, Ln3/b/a/h;

    if-eqz v4, :cond_2

    .line 2
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 3
    iget-object v3, v0, Le/a/v/a/a;->h:Le/a/e0/b;

    if-eqz v3, :cond_1

    const/4 v9, 0x3

    const-string v5, "DetailsViewV2"

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 4
    invoke-interface/range {v3 .. v9}, Le/a/e0/b;->a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    :cond_1
    const-string p1, "afterBlockPromo"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->i:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_delete_identified_contact_confirmation_title:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_delete_identified_contact_confirmation_message:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_menu_remove_identified_contact:I

    new-instance v2, Le/a/v/a/a$e$e;

    invoke-direct {v2, p0}, Le/a/v/a/a$e$e;-><init>(Le/a/v/a/a$e;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    sget v1, Lcom/truecaller/details_view/R$string;->str_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public q(Lcom/truecaller/data/entity/Contact;)V
    .locals 3

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    iget-object v1, v0, Le/a/v/a/a;->e:Le/a/v/o/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v2, "requireActivity()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Le/a/v/o/b;->b(Landroid/app/Activity;Lcom/truecaller/data/entity/Contact;)V

    return-void

    :cond_0
    const-string p1, "conversationsRouter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/flashsdk/models/FlashContact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "flashContacts"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Le/a/v/a/a;->TA()Le/a/y/c/b;

    move-result-object v0

    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "detailView"

    invoke-interface {v0, v1, v2, p1}, Le/a/y/c/b;->J(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public s(Lcom/truecaller/data/entity/Contact;)V
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/w/a/a;->h:Le/a/w/a/a$c;

    sget-object v1, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->DETAILS_VIEW:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    invoke-virtual {v0, p1, v1}, Le/a/w/a/a$c;->a(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;)Le/a/w/a/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Le/a/w/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_unblock_confirmation_message:I

    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 3
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_action_button_unblock:I

    new-instance v2, Le/a/v/a/a$e$g;

    invoke-direct {v2, p0}, Le/a/v/a/a$e$g;-><init>(Le/a/v/a/a$e;)V

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 4
    sget v1, Lcom/truecaller/details_view/R$string;->str_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 5
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public u()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object v1, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/v/k/c;->v:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/details_view/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v3, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 6
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/truecaller/details_view/R$attr;->tcx_backgroundTertiary:I

    invoke-static {v1, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 7
    new-instance v1, Le/a/v/a/a$e$b;

    invoke-direct {v1, p0}, Le/a/v/a/a$e$b;-><init>(Le/a/v/a/a$e;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    .line 8
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 9
    invoke-virtual {v0}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v0

    .line 10
    iget-object v0, v0, Le/a/v/k/c;->v:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Le/a/v/a/a$e$c;

    invoke-direct {v1, p0}, Le/a/v/a/a$e$c;-><init>(Le/a/v/a/a$e;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$g;)V

    return-void
.end method

.method public v(Lcom/truecaller/data/entity/Contact;)V
    .locals 7

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v1}, Le/a/v/a/a;->RA()Le/a/v/p/k;

    move-result-object v1

    iget-object v2, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/p/k;->d:Le/a/v/a/z/a;

    .line 4
    iget-object v3, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->SHARE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v5, "context"

    .line 5
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "action"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v5, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v5, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\r\n"

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_1
    iget-object v3, v1, Le/a/v/p/k;->c:Le/a/b0/q/j0;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Le/a/b0/q/j0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n\r\n"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    sget v3, Lcom/truecaller/details_view/R$string;->details_view_share_contact_signature:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.append(tcSearchU\u2026)\n            .toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    sget v3, Lcom/truecaller/details_view/R$string;->details_view_share_contact_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, v1, Le/a/v/p/k;->a:Landroid/content/Context;

    sget v3, Lcom/truecaller/details_view/R$string;->details_view_share_contact_text:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v2, v0, v1, p1, v6}, Le/a/b0/q/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;)Z

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "flashContext"

    const-string v2, "detailView"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v1

    const-string v2, "FlashTapped"

    invoke-interface {v1, v2, v0}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Le/a/v/a/a;->TA()Le/a/y/c/b;

    move-result-object v1

    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "requireContext()"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v6, "detailView"

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Le/a/y/c/b;->K(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public y(JLjava/lang/String;J)V
    .locals 9

    const-string v0, "name"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Le/a/v/a/a;->TA()Le/a/y/c/b;

    move-result-object v1

    iget-object v0, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "requireContext()"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "detailView"

    move-wide v3, p1

    move-object v5, p3

    move-wide v7, p4

    invoke-interface/range {v1 .. v8}, Le/a/y/c/b;->l(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public z(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/details_view/ui/actionbutton/ActionButton;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionButtons"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/a$e;->c:Le/a/v/a/a;

    .line 2
    sget-object v2, Le/a/v/a/a;->n:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/v/a/a;->PA()Le/a/v/k/c;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/v/k/c;->b:Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 7
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 10
    invoke-virtual {v1, v0}, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;->a(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;->b()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 13
    invoke-virtual {v1, v0}, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;->a(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;->b()V

    :cond_2
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Le/a/v/a/a$e;->H(Z)V

    return-void
.end method
