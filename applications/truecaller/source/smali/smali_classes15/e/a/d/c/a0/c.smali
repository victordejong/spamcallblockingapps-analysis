.class public final Le/a/d/c/a0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/d/s/c;

.field public final synthetic b:Ls1/z/c/y;

.field public final synthetic c:Le/a/d/c/a0/b;


# direct methods
.method public constructor <init>(Le/a/d/s/c;Ls1/z/c/y;Le/a/d/c/a0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a0/c;->a:Le/a/d/s/c;

    iput-object p2, p0, Le/a/d/c/a0/c;->b:Ls1/z/c/y;

    iput-object p3, p0, Le/a/d/c/a0/c;->c:Le/a/d/c/a0/b;

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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/d/c/a0/c;->c:Le/a/d/c/a0/b;

    iget-object v1, p0, Le/a/d/c/a0/c;->a:Le/a/d/s/c;

    iget-object v1, v1, Le/a/d/s/c;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string v2, "motionLayout"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Le/a/d/c/a0/b;->i:[Ls1/a/l;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    sget v1, Lcom/truecaller/voip/R$id;->incoming_call_answer_end_set:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Le/a/d/c/a0/c;->c:Le/a/d/c/a0/b;

    invoke-virtual {p1}, Le/a/d/c/a0/b;->RA()Le/a/d/c/a0/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/a0/i;

    invoke-virtual {p1}, Le/a/d/c/a0/i;->Kj()V

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d/c/a0/c;->b:Ls1/z/c/y;

    iput-boolean p2, p1, Ls1/z/c/y;->a:Z

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/d/c/a0/c;->b:Ls1/z/c/y;

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    :goto_1
    return p2
.end method
