.class public final Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Ls1/b0/c;

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;

    const-string v2, "comments"

    const-string v3, "getComments()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "upVoteClick"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downVoteClick"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->b:Ls1/z/b/l;

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->c:Ls1/z/b/l;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 3
    new-instance p2, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$a;

    invoke-direct {p2, p1, p1, p0}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;)V

    .line 4
    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->a:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->a:Ls1/b0/c;

    sget-object v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->a:Ls1/b0/c;

    sget-object v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    const-string v0, "commentViewModel"

    .line 5
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;->a:Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;->b:Ls1/z/b/l;

    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;->c:Ls1/z/b/l;

    invoke-virtual {v0, p2, v1, p1}, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->f1(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Ls1/z/b/l;Ls1/z/b/l;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/details_view/R$layout;->layout_comment_recycler_view_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView"

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;

    const-string p2, "LayoutCommentRecyclerVie\u2026ext), parent, false).root"

    .line 5
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->b:Ls1/z/b/l;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;->c:Ls1/z/b/l;

    invoke-direct {p2, p1, v0, v1}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;-><init>(Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;Ls1/z/b/l;Ls1/z/b/l;)V

    return-object p2
.end method
