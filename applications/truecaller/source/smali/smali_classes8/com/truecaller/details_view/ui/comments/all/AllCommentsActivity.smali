.class public final Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/c/c/b;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00015B\u0007\u00a2\u0006\u0004\u0008D\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u000f\u0010\r\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u000f\u0010\u0015\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\nJ\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00062\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0017\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u001d\u0010\'\u001a\u00020\u00062\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\"0\u0019H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u001dJ7\u0010/\u001a\u00020\u00062\u000c\u0010)\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010(2\u0008\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010,\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u001d\u00101\u001a\u00020\u00062\u000c\u0010)\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010(H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00083\u0010\nR\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;",
        "Ln3/b/a/h;",
        "Le/a/v/a/c/c/b;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "a0",
        "()V",
        "b0",
        "e4",
        "b1",
        "I1",
        "a1",
        "Lcom/truecaller/data/entity/Contact;",
        "contact",
        "M0",
        "(Lcom/truecaller/data/entity/Contact;)V",
        "w0",
        "onDestroy",
        "",
        "onSupportNavigateUp",
        "()Z",
        "",
        "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
        "comments",
        "a9",
        "(Ljava/util/List;)V",
        "",
        "count",
        "E1",
        "(I)V",
        "",
        "spamContactName",
        "x4",
        "(Ljava/lang/String;)V",
        "sortingTypes",
        "D8",
        "Landroid/widget/AdapterView;",
        "parent",
        "Landroid/view/View;",
        "view",
        "position",
        "",
        "id",
        "onItemSelected",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V",
        "onNothingSelected",
        "(Landroid/widget/AdapterView;)V",
        "i0",
        "Le/a/v/k/a;",
        "b",
        "Le/a/v/k/a;",
        "binding",
        "Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;",
        "c",
        "Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;",
        "adapter",
        "Le/a/v/a/c/c/a;",
        "a",
        "Le/a/v/a/c/c/a;",
        "getPresenter",
        "()Le/a/v/a/c/c/a;",
        "setPresenter",
        "(Le/a/v/a/c/c/a;)V",
        "presenter",
        "<init>",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/v/a/c/c/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/v/k/a;

.field public c:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public D8(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sortingTypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/a/v/k/a;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v3, "binding.spSorting"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 3
    sget v5, Lcom/truecaller/details_view/R$layout;->item_spinner_sorting:I

    .line 4
    invoke-direct {v4, p0, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    sget p1, Lcom/truecaller/details_view/R$layout;->item_spinner_sorting_list:I

    invoke-virtual {v4, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz p1, :cond_2

    iget-object p1, p1, Le/a/v/k/a;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Le/a/v/k/a;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/v/k/a;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public E1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->f:Landroid/widget/TextView;

    const-string v1, "binding.numberOfComments"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_comments_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public I1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v1, "binding.spSorting"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M0(Lcom/truecaller/data/entity/Contact;)V
    .locals 4

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/v/k/a;->b:Landroid/widget/TextView;

    const-string v3, "binding.addCommentButton"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$c;-><init>(Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;Lcom/truecaller/data/entity/Contact;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->g:Landroid/widget/ProgressBar;

    const-string v1, "binding.pbLoading"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->h:Landroidx/appcompat/widget/AppCompatSpinner;

    const-string v1, "binding.spSorting"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a9(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "comments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->c:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->a:Ls1/b0/c;

    sget-object v2, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->d:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "adapter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->g:Landroid/widget/ProgressBar;

    const-string v1, "binding.pbLoading"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->e:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.grContent"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->e:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.grContent"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i0()V
    .locals 4

    .line 1
    sget v0, Lcom/truecaller/details_view/R$string;->ErrorConnectionGeneral:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v1, v2, v3}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "window"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/l4/k;->k(Landroid/view/Window;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/truecaller/details_view/R$attr;->tcx_backgroundPrimary:I

    invoke-static {v0, v3}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 4
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/v/l/b;

    invoke-interface {v2}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object v2

    invoke-interface {v2, v0}, Le/a/v/l/a;->b(Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;)V

    .line 6
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "LayoutInflater.from(this)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 7
    sget v3, Lcom/truecaller/details_view/R$layout;->activity_all_comments:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 8
    sget v3, Lcom/truecaller/details_view/R$id;->addCommentButton:I

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_13

    .line 10
    sget v3, Lcom/truecaller/details_view/R$id;->addCommentContainer:I

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_13

    .line 12
    sget v3, Lcom/truecaller/details_view/R$id;->appbar:I

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v11, :cond_13

    .line 14
    sget v3, Lcom/truecaller/details_view/R$id;->clOptions:I

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v12, :cond_13

    .line 16
    sget v3, Lcom/truecaller/details_view/R$id;->commentsRecyclerView:I

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_13

    .line 18
    sget v3, Lcom/truecaller/details_view/R$id;->grContent:I

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroidx/constraintlayout/widget/Group;

    if-eqz v14, :cond_13

    .line 20
    sget v3, Lcom/truecaller/details_view/R$id;->numberOfComments:I

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_13

    .line 22
    sget v3, Lcom/truecaller/details_view/R$id;->pbLoading:I

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/widget/ProgressBar;

    if-eqz v16, :cond_13

    .line 24
    sget v3, Lcom/truecaller/details_view/R$id;->spSorting:I

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v17, :cond_13

    .line 26
    sget v3, Lcom/truecaller/details_view/R$id;->spamContactName:I

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_13

    .line 28
    sget v3, Lcom/truecaller/details_view/R$id;->toolbar:I

    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Landroidx/appcompat/widget/Toolbar;

    if-eqz v19, :cond_13

    .line 30
    new-instance v3, Le/a/v/k/a;

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v7, v3

    invoke-direct/range {v7 .. v19}, Le/a/v/k/a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatSpinner;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V

    const-string v2, "ActivityAllCommentsBindi\u2026s).toThemeInflater(true))"

    .line 31
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    const-string v2, "binding"

    .line 32
    iget-object v3, v3, Le/a/v/k/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    invoke-virtual {v0, v3}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v3, :cond_12

    iget-object v3, v3, Le/a/v/k/a;->j:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v3}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v6, Lcom/truecaller/details_view/R$drawable;->ic_tcx_arrow_back_24dp:I

    invoke-virtual {v3, v6}, Ln3/b/a/a;->s(I)V

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ln3/b/a/a;->n(Z)V

    .line 37
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Ln3/b/a/a;->p(Z)V

    .line 38
    :cond_2
    new-instance v3, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;

    .line 39
    new-instance v6, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;

    invoke-direct {v6, v5, v0}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;-><init>(ILjava/lang/Object;)V

    .line 40
    new-instance v7, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;

    invoke-direct {v7, v1, v0}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;-><init>(ILjava/lang/Object;)V

    .line 41
    invoke-direct {v3, v6, v7}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;-><init>(Ls1/z/b/l;Ls1/z/b/l;)V

    iput-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->c:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;

    .line 42
    iget-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v3, :cond_11

    iget-object v3, v3, Le/a/v/k/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    const-string v6, "binding.commentsRecyclerView"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v7, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 43
    iget-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v3, :cond_10

    iget-object v3, v3, Le/a/v/k/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->c:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;

    if-eqz v6, :cond_f

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 44
    iget-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v3, :cond_e

    iget-object v2, v3, Le/a/v/k/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Le/a/b0/a/b0/a;

    const/16 v6, 0x10

    invoke-static {v0, v6}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v3, v6}, Le/a/b0/a/b0/a;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "spammer"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_d

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 46
    iget-object v3, v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->a:Le/a/v/a/c/c/a;

    if-eqz v3, :cond_c

    move-object v4, v3

    check-cast v4, Le/a/u2/a/b;

    .line 47
    iput-object v0, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 48
    check-cast v3, Le/a/v/a/c/c/c;

    const-string v4, "contact"

    .line 49
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v3, Le/a/v/a/c/c/c;->h:Le/a/p5/h0;

    sget v6, Lcom/truecaller/details_view/R$string;->details_view_unknown_contact:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v6, "contact.displayName ?: c\u2026ils_view_unknown_contact)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v6, v3, Le/a/v/a/c/c/c;->k:Le/a/u3/g;

    .line 52
    iget-object v7, v6, Le/a/u3/g;->Y2:Le/a/u3/g$a;

    sget-object v8, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v9, 0xce

    aget-object v9, v8, v9

    invoke-virtual {v7, v6, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v6

    .line 53
    invoke-interface {v6}, Le/a/u3/b;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 54
    iget-object v6, v3, Le/a/v/a/c/c/c;->h:Le/a/p5/h0;

    sget v7, Lcom/truecaller/details_view/R$string;->details_view_comments_sort_by_score_title:I

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "themedResourceProvider.g\u2026ents_sort_by_score_title)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v7, v3, Le/a/v/a/c/c/c;->h:Le/a/p5/h0;

    sget v9, Lcom/truecaller/details_view/R$string;->details_view_comments_sort_by_time_title:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-interface {v7, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "themedResourceProvider.g\u2026ments_sort_by_time_title)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    aput-object v6, v10, v5

    aput-object v7, v10, v1

    .line 56
    invoke-static {v10}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v7, v9, [Lcom/truecaller/contactfeedback/repo/SortType;

    .line 57
    sget-object v9, Lcom/truecaller/contactfeedback/repo/SortType;->BY_SCORE:Lcom/truecaller/contactfeedback/repo/SortType;

    aput-object v9, v7, v5

    sget-object v5, Lcom/truecaller/contactfeedback/repo/SortType;->BY_TIME:Lcom/truecaller/contactfeedback/repo/SortType;

    aput-object v5, v7, v1

    invoke-static {v7}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 58
    iget-object v5, v3, Le/a/v/a/c/c/c;->k:Le/a/u3/g;

    .line 59
    iget-object v7, v5, Le/a/u3/g;->X2:Le/a/u3/g$a;

    const/16 v9, 0xcd

    aget-object v9, v8, v9

    invoke-virtual {v7, v5, v9}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    .line 60
    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 61
    iput-object v6, v3, Le/a/v/a/c/c/c;->d:Ljava/util/List;

    .line 62
    iput-object v1, v3, Le/a/v/a/c/c/c;->e:Ljava/util/List;

    goto :goto_2

    .line 63
    :cond_5
    invoke-static {v6}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Le/a/v/a/c/c/c;->d:Ljava/util/List;

    .line 64
    invoke-static {v1}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Le/a/v/a/c/c/c;->e:Ljava/util/List;

    .line 65
    :goto_2
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/c/b;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Le/a/v/a/c/c/b;->I1()V

    goto :goto_3

    .line 66
    :cond_6
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/c/b;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Le/a/v/a/c/c/b;->a1()V

    .line 67
    :cond_7
    :goto_3
    iget-object v1, v3, Le/a/v/a/c/c/c;->k:Le/a/u3/g;

    .line 68
    iget-object v5, v1, Le/a/u3/g;->b6:Le/a/u3/g$a;

    const/16 v6, 0x173

    aget-object v6, v8, v6

    invoke-virtual {v5, v1, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 70
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/c/b;

    if-eqz v1, :cond_9

    invoke-interface {v1, v2}, Le/a/v/a/c/c/b;->M0(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_4

    .line 71
    :cond_8
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/c/b;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Le/a/v/a/c/c/b;->w0()V

    .line 72
    :cond_9
    :goto_4
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/c/b;

    if-eqz v1, :cond_a

    invoke-interface {v1, v4}, Le/a/v/a/c/c/b;->x4(Ljava/lang/String;)V

    .line 73
    :cond_a
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/c/b;

    if-eqz v1, :cond_b

    iget-object v4, v3, Le/a/v/a/c/c/c;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Le/a/v/a/c/c/b;->D8(Ljava/util/List;)V

    .line 74
    :cond_b
    sget-object v1, Lcom/truecaller/contactfeedback/repo/SortType;->DEFAULT:Lcom/truecaller/contactfeedback/repo/SortType;

    invoke-virtual {v3, v1, v2}, Le/a/v/a/c/c/c;->Ij(Lcom/truecaller/contactfeedback/repo/SortType;Lcom/truecaller/data/entity/Contact;)V

    return-void

    :cond_c
    const-string v1, "presenter"

    .line 75
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_e
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_f
    const-string v1, "adapter"

    .line 78
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_10
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_11
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_12
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_13
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->a:Le/a/v/a/c/c/a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/v/a/c/c/c;

    invoke-virtual {v0}, Le/a/v/a/c/c/c;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->a:Le/a/v/a/c/c/a;

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    check-cast p1, Le/a/v/a/c/c/c;

    .line 2
    iget-object p4, p1, Le/a/v/a/c/c/c;->l:Le/a/p5/u;

    invoke-interface {p4}, Le/a/p5/u;->d()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 3
    iget-object p4, p1, Le/a/v/a/c/c/c;->f:Le/a/q/h/b;

    if-eqz p4, :cond_0

    .line 4
    iget-object p4, p4, Le/a/q/h/b;->b:Lcom/truecaller/contactfeedback/repo/SortType;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p4, Lcom/truecaller/contactfeedback/repo/SortType;->BY_TIME:Lcom/truecaller/contactfeedback/repo/SortType;

    .line 6
    :goto_0
    iget-object p5, p1, Le/a/v/a/c/c/c;->e:Ljava/util/List;

    if-ltz p3, :cond_1

    invoke-static {p5}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    if-gt p3, v0, :cond_1

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/truecaller/contactfeedback/repo/SortType;->BY_TIME:Lcom/truecaller/contactfeedback/repo/SortType;

    :goto_1
    check-cast p3, Lcom/truecaller/contactfeedback/repo/SortType;

    if-eq p4, p3, :cond_7

    .line 7
    iget-object p4, p1, Le/a/v/a/c/c/c;->f:Le/a/q/h/b;

    if-eqz p4, :cond_2

    .line 8
    iget-object p2, p4, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    :cond_2
    if-eqz p2, :cond_7

    if-eqz p4, :cond_3

    .line 9
    iget-object p5, p1, Le/a/v/a/c/c/c;->i:Le/a/q/h/c;

    invoke-interface {p5, p4}, Le/a/q/h/c;->b(Le/a/q/h/b;)V

    .line 10
    :cond_3
    iget-object p4, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/v/a/c/c/b;

    if-eqz p4, :cond_4

    invoke-interface {p4}, Le/a/v/a/c/c/b;->b1()V

    .line 11
    :cond_4
    iget-object p4, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/v/a/c/c/b;

    if-eqz p4, :cond_5

    invoke-interface {p4}, Le/a/v/a/c/c/b;->a0()V

    .line 12
    :cond_5
    invoke-virtual {p1, p3, p2}, Le/a/v/a/c/c/c;->Ij(Lcom/truecaller/contactfeedback/repo/SortType;Lcom/truecaller/data/entity/Contact;)V

    goto :goto_2

    .line 13
    :cond_6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/c/b;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/v/a/c/c/b;->i0()V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const-string p1, "presenter"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->b:Landroid/widget/TextView;

    const-string v1, "binding.addCommentButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x4(Ljava/lang/String;)V
    .locals 2

    const-string v0, "spamContactName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->b:Le/a/v/k/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/v/k/a;->i:Landroid/widget/TextView;

    const-string v1, "binding.spamContactName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
