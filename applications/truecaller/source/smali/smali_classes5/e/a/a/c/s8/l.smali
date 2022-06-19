.class public final Le/a/a/c/s8/l;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/s8/l;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/l;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 2
    iput p1, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->u:F

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/l;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->getRecordView()Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/s8/l;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->g(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/c/s8/l;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;->getRecordView()Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/a/c/a4;

    .line 3
    iget-object p1, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->Ng()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
