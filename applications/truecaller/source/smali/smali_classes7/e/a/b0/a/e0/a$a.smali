.class public final Le/a/b0/a/e0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/e0/a;->b(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Ljava/lang/String;Landroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Le/a/b0/a/e0/b;

.field public final synthetic d:Ls1/z/b/a;


# direct methods
.method public constructor <init>(ZLandroid/view/ViewGroup;Le/a/b0/a/e0/b;Ls1/z/b/a;)V
    .locals 0

    iput-boolean p1, p0, Le/a/b0/a/e0/a$a;->a:Z

    iput-object p2, p0, Le/a/b0/a/e0/a$a;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Le/a/b0/a/e0/a$a;->c:Le/a/b0/a/e0/b;

    iput-object p4, p0, Le/a/b0/a/e0/a$a;->d:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean p1, p0, Le/a/b0/a/e0/a$a;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "event"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/b0/a/e0/a$a;->b:Landroid/view/ViewGroup;

    const-string p2, "parent"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Le/a/b0/a/e0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Le/a/b0/a/e0/c;

    if-eqz p2, :cond_2

    .line 5
    iget-object v0, p2, Le/a/b0/a/e0/c;->b:Le/a/b0/a/e0/d;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    iget-object v0, p2, Le/a/b0/a/e0/c;->a:Le/a/b0/a/e0/b;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "parent.context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/g;->n0(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    .line 11
    iget-object p2, p2, Le/a/b0/a/e0/c;->c:Landroid/view/View;

    .line 12
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/b0/a/e0/a$a;->c:Le/a/b0/a/e0/b;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Le/a/b0/a/e0/a$a;->d:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
