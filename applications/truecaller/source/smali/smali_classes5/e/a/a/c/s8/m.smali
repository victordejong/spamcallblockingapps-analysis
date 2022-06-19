.class public final Le/a/a/c/s8/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

.field public final synthetic b:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    iput-object p2, p0, Le/a/a/c/s8/m;->b:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    const/16 p1, 0x320

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 2
    sget p2, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->r:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->k()V

    .line 4
    iget-object p1, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getRecordListener()Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 5
    iget-object p2, p2, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j:Ljava/lang/String;

    .line 6
    check-cast p1, Le/a/a/c/a4;

    .line 7
    iget-object p1, p1, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1, p2}, Le/a/a/c/f4;->M2(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 9
    iget-object p1, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    iget-object p2, p0, Le/a/a/c/s8/m;->b:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->b(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, "tvSlideToCancel"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/c/s8/m;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 10
    iget v0, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->c:F

    .line 11
    invoke-virtual {p1, p2, p3, v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->d(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;Landroid/widget/TextView;F)V

    :cond_1
    return-void
.end method
