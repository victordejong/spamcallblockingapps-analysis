.class public abstract Lcom/freshchat/consumer/sdk/i/d;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private isRunning:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public onFinish()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/i/d;->execute()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/i/d;->isRunning:Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/i/d;->isRunning:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/i/d;->isRunning:Z

    :cond_0
    return-void
.end method
