.class public final Le/a/g5/e0/i$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g5/e0/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/e0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g5/e0/i$h;->a:Le/a/g5/e0/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g5/e0/i$h;->a:Le/a/g5/e0/i;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Le/a/g5/e0/i;->l:Z

    .line 3
    iget-object p1, p1, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 5
    iget-object p1, p0, Le/a/g5/e0/i$h;->a:Le/a/g5/e0/i;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g5/e0/i$h;->a:Le/a/g5/e0/i;

    .line 2
    sget-object v0, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object p1

    .line 4
    iget-object v0, p1, Le/a/g5/d0/b;->i:Landroidx/appcompat/widget/SearchView;

    const-string v1, "searchView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    const-string v2, "tagContainerLevel1"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/g5/d0/b;->e:Landroid/widget/LinearLayout;

    const-string v0, "llHeaderOne"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
