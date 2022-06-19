.class public final Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;

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
.method public constructor <init>(Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;",
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

    const-string v0, "commentView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upVoteClick"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downVoteClick"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;->a:Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;->b:Ls1/z/b/l;

    iput-object p3, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$b;->c:Ls1/z/b/l;

    return-void
.end method
