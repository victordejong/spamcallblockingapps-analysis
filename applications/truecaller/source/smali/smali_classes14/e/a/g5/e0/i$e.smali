.class public final Le/a/g5/e0/i$e;
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
    iput-object p1, p0, Le/a/g5/e0/i$e;->a:Le/a/g5/e0/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g5/e0/i$e;->a:Le/a/g5/e0/i;

    .line 2
    sget-object v0, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object p1

    .line 4
    iget-object v0, p1, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 8
    iget-object p1, p1, Le/a/g5/d0/b;->f:Landroid/widget/LinearLayout;

    const-string v0, "llHeaderTwo"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Le/a/g5/e0/i$e;->a:Le/a/g5/e0/i;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Le/a/g5/e0/i;->j:Lcom/truecaller/common/tag/TagView;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/g5/e0/i$e;->a:Le/a/g5/e0/i;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Le/a/g5/e0/i;->l:Z

    return-void
.end method
