.class public final Le/a/a/e/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/a/e/b;


# direct methods
.method public constructor <init>(Le/a/a/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/e/t;->a:Le/a/a/e/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "com.truecaller.inboxcleanup.CLEANUP_DONE"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/a/e/t;->a:Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    const-string v0, "deleted_otp"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "deleted_promotional"

    .line 4
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "deleted_spam"

    .line 5
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 6
    invoke-interface {p1, v0, v2, p2}, Le/a/a/e/u;->fd(III)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "com.truecaller.inboxcleanup.CLEANUP_IN_PROGRESS"

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Le/a/a/e/t;->a:Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->nf()V

    :cond_3
    :goto_1
    return-void
.end method
