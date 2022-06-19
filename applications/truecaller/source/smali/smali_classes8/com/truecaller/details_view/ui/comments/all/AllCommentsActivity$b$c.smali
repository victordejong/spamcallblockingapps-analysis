.class public final Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b;-><init>(Ls1/z/b/l;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
        "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c;

    invoke-direct {v0}, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c;-><init>()V

    sput-object v0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c;->b:Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$b$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    check-cast p2, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    const-string v0, "oldItem"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
