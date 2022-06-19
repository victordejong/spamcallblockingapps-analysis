.class public Le/a/i4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Le/a/l/a/t;


# direct methods
.method public constructor <init>(Le/a/l/a/t;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Le/a/i4/l;->a:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Le/a/i4/l;->b:Le/a/l/a/t;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;I)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Le/a/i4/l;->a:Landroid/os/Handler;

    new-instance v0, Le/a/i4/a;

    invoke-direct {v0, p3}, Le/a/i4/a;-><init>(I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object p1, p0, Le/a/i4/l;->b:Le/a/l/a/t;

    invoke-interface {p1, p2}, Le/a/l/a/t;->a(Lcom/truecaller/premium/util/NotificationAccessSource;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Cannot start activity"

    .line 5
    invoke-static {p1, p2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
