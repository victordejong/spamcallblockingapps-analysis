.class public Le/a/q3/b$a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q3/b$a;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/q3/b$a;


# direct methods
.method public constructor <init>(Le/a/q3/b$a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/q3/b$a$a;->a:Le/a/q3/b$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/q3/b$a$a;->a:Le/a/q3/b$a;

    iget-object v0, v0, Le/a/q3/b$a;->a:Le/a/q3/b;

    .line 3
    iget-object v0, v0, Le/a/q3/b;->f:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 4
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/q3/b$a$a;->a:Le/a/q3/b$a;

    iget-object v0, v0, Le/a/q3/b$a;->a:Le/a/q3/b;

    .line 6
    iget-object v0, v0, Le/a/q3/b;->e:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/q3/b$a$a;->a:Le/a/q3/b$a;

    iget-object v0, v0, Le/a/q3/b$a;->a:Le/a/q3/b;

    .line 9
    iget-object v0, v0, Le/a/q3/b;->e:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    .line 10
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 11
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
