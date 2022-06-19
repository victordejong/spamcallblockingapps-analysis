.class public Le/a/e/c2/g0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/c2/f0;


# direct methods
.method public constructor <init>(Le/a/e/c2/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/g0;->a:Le/a/e/c2/f0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c2/g0;->a:Le/a/e/c2/f0;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Le/a/e/c2/f0;->d:Z

    .line 3
    iget-object p1, p1, Le/a/e/c2/f0;->b:Le/a/e/c2/f0$b;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Le/a/w4/s/c0$c;

    const-string v0, "INVITE_LAST_DISMISSED"

    .line 5
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Le/a/w4/s/c0$c;->a:Le/a/w4/s/c0;

    .line 7
    iget-object p1, p1, Le/a/w4/s/c0;->i:Le/a/e/c2/f0;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Le/a/e/c2/f0;->e(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
