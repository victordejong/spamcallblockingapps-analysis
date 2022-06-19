.class public final Le/a/n/w1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/n/b$d;


# direct methods
.method public constructor <init>(Le/a/n/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/n/w1;->a:Le/a/n/b$d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/n/w1;->a:Le/a/n/b$d;

    iget-object p1, p1, Le/a/n/b$d;->b:Le/a/n/b;

    invoke-virtual {p1}, Le/a/n/b;->OA()Le/a/n/x1;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "com.truecaller.extra.RESTORE_SUCCESSFUL"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    invoke-interface {p1, v0}, Le/a/n/x1;->ud(Z)V

    return-void
.end method
