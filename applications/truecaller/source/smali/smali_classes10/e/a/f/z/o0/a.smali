.class public final Le/a/f/z/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/g4/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/g4/a/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callNotificationFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/f/z/o0/a;->b:Le/a/g4/a/b;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    const-class v3, Lcom/truecaller/incallui/utils/notification/actionreceiver/NotificationActionReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0xc000000

    .line 3
    invoke-static {v0, p1, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
