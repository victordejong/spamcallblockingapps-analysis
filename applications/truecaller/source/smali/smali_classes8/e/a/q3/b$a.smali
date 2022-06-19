.class public Le/a/q3/b$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q3/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/q3/b;


# direct methods
.method public constructor <init>(Le/a/q3/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2
    iget-object v0, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    new-instance v1, Le/a/q3/b$a$a;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Le/a/q3/b$a$a;-><init>(Le/a/q3/b$a;Landroid/os/Looper;)V

    .line 3
    iput-object v1, v0, Le/a/q3/b;->d:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/16 v3, 0x46

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 2
    iput-object v1, v0, Le/a/q3/b;->e:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not create tone generator"

    .line 3
    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    :goto_0
    :try_start_1
    iget-object v0, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    .line 5
    iget-object v1, v0, Le/a/q3/b;->a:Landroid/content/Context;

    const-string v2, "vibrator"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 7
    iput-object v1, v0, Le/a/q3/b;->f:Landroid/os/Vibrator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Could not create vibrator"

    .line 8
    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 9
    :goto_1
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 10
    iget-object v0, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    .line 11
    iget-object v0, v0, Le/a/q3/b;->e:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 13
    iget-object v0, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    .line 14
    iget-object v0, v0, Le/a/q3/b;->e:Landroid/media/ToneGenerator;

    .line 15
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 16
    iget-object v0, p0, Le/a/q3/b$a;->a:Le/a/q3/b;

    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Le/a/q3/b;->e:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method
