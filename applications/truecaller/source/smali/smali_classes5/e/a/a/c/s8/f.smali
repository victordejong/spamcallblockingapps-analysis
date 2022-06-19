.class public final Le/a/a/c/s8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/s8/f;->a:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/s8/f;->a:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    .line 2
    iget-boolean v1, v0, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->d:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->c(J)V

    .line 5
    iget-object v0, p0, Le/a/a/c/s8/f;->a:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/a/a/c/s8/f;->a:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
