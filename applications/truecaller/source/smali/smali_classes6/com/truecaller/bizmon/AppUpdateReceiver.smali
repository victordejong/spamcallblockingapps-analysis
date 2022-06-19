.class public final Lcom/truecaller/bizmon/AppUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/bizmon/AppUpdateReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "<init>",
        "()V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "context"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string p2, "WorkManager.getInstance(context)"

    .line 4
    invoke-static {v0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const-string v1, "AvailableTagsDownloadWorkAction"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 5
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    .line 6
    const-class p2, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;

    new-instance v0, Ln3/m0/r$a;

    invoke-direct {v0, p2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v1, v0, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    const-string v0, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ln3/m0/r;

    .line 10
    invoke-virtual {p1, p2}, Ln3/m0/y;->c(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 11
    const-class p2, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;

    new-instance v1, Ln3/m0/r$a;

    invoke-direct {v1, p2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object v2, v1, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ln3/m0/r;

    .line 15
    invoke-virtual {p1, p2}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ln3/m0/w;->a()Ln3/m0/s;

    :cond_1
    return-void
.end method
