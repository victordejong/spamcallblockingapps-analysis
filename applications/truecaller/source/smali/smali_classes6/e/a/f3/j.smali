.class public final Le/a/f3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/callbubbles/CallBubblesContainerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/callbubbles/CallBubblesContainerView;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/j;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f3/j;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 2
    iget-boolean v1, v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->d(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    iget-object v0, p0, Le/a/f3/j;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-static {v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->e(Lcom/truecaller/callbubbles/CallBubblesContainerView;)Le/a/f3/a;

    move-result-object v0

    const-string v1, "view"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "event"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Le/a/f3/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
