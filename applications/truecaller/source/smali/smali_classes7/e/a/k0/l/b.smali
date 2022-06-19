.class public abstract Le/a/k0/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/callrecording/recorder/CallRecorder;


# instance fields
.field public a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->INITIALIZING:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->RECORDING:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
