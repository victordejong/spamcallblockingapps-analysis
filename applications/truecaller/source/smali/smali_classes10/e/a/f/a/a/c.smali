.class public final Le/a/f/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final synthetic b:Le/a/f/a/a/a;

.field public final synthetic c:Ls1/z/c/y;

.field public final synthetic d:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Le/a/f/a/a/a;Ls1/z/c/y;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object p2, p0, Le/a/f/a/a/c;->b:Le/a/f/a/a/a;

    iput-object p3, p0, Le/a/f/a/a/c;->c:Ls1/z/c/y;

    iput-object p4, p0, Le/a/f/a/a/c;->d:Ls1/z/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "event"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/f/a/a/c;->c:Ls1/z/c/y;

    iget-boolean p1, p1, Ls1/z/c/y;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Le/a/f/a/a/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    sget p2, Lcom/truecaller/incallui/R$id;->incoming_incallui_answer_end_set:I

    if-ne p1, p2, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/f/a/a/c;->b:Le/a/f/a/a/a;

    invoke-static {p1}, Le/a/f/a/a/a;->hB(Le/a/f/a/a/a;)V

    .line 4
    iget-object p1, p0, Le/a/f/a/a/c;->c:Ls1/z/c/y;

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/f/a/a/c;->d:Ls1/z/c/y;

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/f/a/a/c;->d:Ls1/z/c/y;

    iput-boolean p2, p1, Ls1/z/c/y;->a:Z

    :goto_0
    return v0
.end method
