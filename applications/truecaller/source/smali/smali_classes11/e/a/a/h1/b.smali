.class public final Le/a/a/h1/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/urgent/KeyguardOverlay;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    iput-object p2, p0, Le/a/a/h1/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->a:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    .line 3
    iput-object p1, v0, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->b:Landroid/view/MotionEvent;

    const-string v1, "event"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 6
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7
    sget-object v5, Le/a/a/h1/c;->b:Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 9
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v6, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    invoke-virtual {p1, v1}, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->a(Z)V

    .line 13
    iget-object p1, p0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    new-instance v0, Le/a/a/h1/b$a;

    invoke-direct {v0, p0}, Le/a/a/h1/b$a;-><init>(Le/a/a/h1/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Le/a/a/h1/b;->b:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_5

    .line 16
    iget-object p1, p0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    .line 17
    iget-object p1, p1, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->c:Landroid/app/KeyguardManager;

    .line 18
    new-instance v0, Le/a/a/h1/a;

    invoke-direct {v0, p0}, Le/a/a/h1/a;-><init>(Le/a/a/h1/b;)V

    invoke-virtual {p1, v2, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_2

    :cond_5
    const-string p1, "context"

    .line 19
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 22
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return v3
.end method
