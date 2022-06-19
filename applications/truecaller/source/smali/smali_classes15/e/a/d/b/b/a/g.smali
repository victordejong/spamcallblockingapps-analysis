.class public final Le/a/d/b/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/d/b/b/a/a;

.field public final synthetic b:Ls1/z/c/y;

.field public final synthetic c:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Le/a/d/b/b/a/a;Ls1/z/c/y;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/a/g;->a:Le/a/d/b/b/a/a;

    iput-object p2, p0, Le/a/d/b/b/a/g;->b:Ls1/z/c/y;

    iput-object p3, p0, Le/a/d/b/b/a/g;->c:Ls1/z/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "event"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/d/b/b/a/g;->b:Ls1/z/c/y;

    iget-boolean p1, p1, Ls1/z/c/y;->a:Z

    const-string p2, "motionLayoutView"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Le/a/d/b/b/a/g;->a:Le/a/d/b/b/a/a;

    .line 3
    iget-object p1, p1, Le/a/d/b/b/a/a;->j:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    sget v2, Lcom/truecaller/voip/R$id;->incoming_call_answer_end_set:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/d/b/b/a/g;->a:Le/a/d/b/b/a/a;

    .line 7
    iget-object v2, p1, Le/a/d/b/b/a/a;->j:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_4

    .line 8
    invoke-static {p1, v2}, Le/a/d/b/b/a/a;->QA(Le/a/d/b/b/a/a;Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 9
    iget-object p1, p0, Le/a/d/b/b/a/g;->b:Ls1/z/c/y;

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/d/b/b/a/g;->c:Ls1/z/c/y;

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/d/b/b/a/g;->c:Ls1/z/c/y;

    iput-boolean p2, p1, Ls1/z/c/y;->a:Z

    :goto_1
    return v0
.end method
