.class public final Le/a/k/a/j/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/j/c;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/j/c;

.field public final synthetic b:Ls1/z/c/z;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Le/a/k/a/j/c;Ls1/z/c/z;FF)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/c$a;->a:Le/a/k/a/j/c;

    iput-object p2, p0, Le/a/k/a/j/c$a;->b:Ls1/z/c/z;

    iput p3, p0, Le/a/k/a/j/c$a;->c:F

    iput p4, p0, Le/a/k/a/j/c$a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "event"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/k/a/j/c$a;->b:Ls1/z/c/z;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p1, Ls1/z/c/z;->a:F

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Le/a/k/a/j/c$a;->c:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Le/a/k/a/j/c$a;->d:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Le/a/k/a/j/c$a;->c:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Le/a/k/a/j/c$a;->b:Ls1/z/c/z;

    iget p1, p1, Ls1/z/c/z;->a:F

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Le/a/k/a/j/c$a;->d:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    .line 5
    :cond_3
    sget-object p1, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->i:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView$a;

    iget-object p1, p0, Le/a/k/a/j/c$a;->a:Le/a/k/a/j/c;

    iget-object p1, p1, Le/a/k/a/j/c;->b:Le/a/k/a/j/f;

    iget-object p1, p1, Le/a/k/a/j/f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "anchorView.context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    .line 7
    :cond_4
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-nez v0, :cond_5

    move-object p1, v1

    :cond_5
    check-cast p1, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {v1, p2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    :cond_7
    iget-object p1, p0, Le/a/k/a/j/c$a;->a:Le/a/k/a/j/c;

    iget-object p2, p1, Le/a/k/a/j/c;->b:Le/a/k/a/j/f;

    iget-object p2, p2, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    iget-object p1, p1, Le/a/k/a/j/c;->a:Landroid/widget/PopupWindow;

    const-wide/16 v0, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->g(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/widget/PopupWindow;J)V

    const/4 p1, 0x1

    return p1

    :cond_8
    return v0
.end method
