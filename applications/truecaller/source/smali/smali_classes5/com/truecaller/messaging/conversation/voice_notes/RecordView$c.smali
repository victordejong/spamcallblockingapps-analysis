.class public final Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->i(Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/RecordView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 2
    iget-wide v4, v3, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->e:J

    sub-long/2addr v1, v4

    .line 3
    iput-wide v1, v0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->f:J

    .line 4
    iget-boolean v0, v3, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->i:Z

    if-nez v0, :cond_2

    .line 5
    iget-wide v0, v3, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->f:J

    const/16 v2, 0x3e8

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v3}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->k()V

    .line 7
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getRecordListener()Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    .line 8
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->j:Ljava/lang/String;

    .line 9
    check-cast v0, Le/a/a/c/a4;

    .line 10
    iget-object v0, v0, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0, v1}, Le/a/a/c/f4;->M2(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->e()V

    .line 12
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/RecordView$c;->a:Lcom/truecaller/messaging/conversation/voice_notes/RecordView;

    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/voice_notes/RecordView;->getRecordListener()Lcom/truecaller/messaging/conversation/voice_notes/RecordView$a;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Le/a/a/c/a4;

    .line 13
    iget-object v0, v0, Le/a/a/c/a4;->a:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->Zb()V

    :cond_3
    :goto_2
    return-void
.end method
