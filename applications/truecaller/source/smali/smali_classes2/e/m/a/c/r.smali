.class public final Le/m/a/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/r$a;,
        Le/m/a/c/r$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/c/r$a;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Le/m/a/c/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/r;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Le/m/a/c/r$a;

    invoke-direct {p1, p0, p2, p3}, Le/m/a/c/r$a;-><init>(Le/m/a/c/r;Landroid/os/Handler;Le/m/a/c/r$b;)V

    iput-object p1, p0, Le/m/a/c/r;->b:Le/m/a/c/r$a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Le/m/a/c/r;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/c/r;->a:Landroid/content/Context;

    iget-object v0, p0, Le/m/a/c/r;->b:Le/m/a/c/r$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/m/a/c/r;->c:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-boolean p1, p0, Le/m/a/c/r;->c:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/c/r;->a:Landroid/content/Context;

    iget-object v0, p0, Le/m/a/c/r;->b:Le/m/a/c/r$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Le/m/a/c/r;->c:Z

    :cond_1
    :goto_0
    return-void
.end method
