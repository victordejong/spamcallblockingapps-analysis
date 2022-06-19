.class public final Le/a/k/a/g/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;

.field public final synthetic b:Ls1/z/c/a0;

.field public final synthetic c:Ln3/k/i/e;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;Ls1/z/c/a0;Ln3/k/i/e;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/l;->a:Le/a/k/a/g/f;

    iput-object p2, p0, Le/a/k/a/g/l;->b:Ls1/z/c/a0;

    iput-object p3, p0, Le/a/k/a/g/l;->c:Ln3/k/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/k/a/g/l;->a:Le/a/k/a/g/f;

    invoke-virtual {p1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;

    .line 3
    sget-object v1, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;->RecordButton:Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;

    const-string v2, "event"

    .line 4
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;-><init>(Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent$InputMode;III)V

    .line 6
    check-cast p1, Le/a/k/a/g/y;

    invoke-virtual {p1, v0}, Le/a/k/a/g/y;->Vj(Lcom/truecaller/videocallerid/ui/recording/RecordInputEvent;)V

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget-object v0, p0, Le/a/k/a/g/l;->b:Ls1/z/c/a0;

    iget v0, v0, Ls1/z/c/a0;->a:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/k/a/g/l;->b:Ls1/z/c/a0;

    const/4 v0, -0x1

    iput v0, p1, Ls1/z/c/a0;->a:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/k/a/g/l;->b:Ls1/z/c/a0;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p1, Ls1/z/c/a0;->a:I

    :goto_0
    move v3, v4

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 11
    iget-object p1, p0, Le/a/k/a/g/l;->c:Ln3/k/i/e;

    .line 12
    iget-object p1, p1, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast p1, Ln3/k/i/e$b;

    .line 13
    iget-object p1, p1, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    return v3
.end method
