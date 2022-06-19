.class public final Le/a/d/y/c/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/k/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/y/c/n;


# direct methods
.method public constructor <init>(Le/a/d/y/c/n;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/c/l;->b:Le/a/d/y/c/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Le/a/d/y/c/l;->b:Le/a/d/y/c/n;

    .line 2
    iget-object v2, v1, Le/a/d/y/c/n;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Le/a/d/y/c/n;->d()Le/a/h4/n;

    move-result-object v1

    const-string v3, "missed_calls"

    .line 4
    invoke-interface {v1, v3}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget v1, Lcom/truecaller/voip/R$drawable;->ic_notification_call_missed:I

    .line 6
    iget-object v2, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 7
    new-instance v1, Ln3/k/a/r;

    invoke-direct {v1}, Ln3/k/a/r;-><init>()V

    invoke-virtual {v0, v1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const-string v1, "social"

    .line 8
    iput-object v1, v0, Ln3/k/a/q;->B:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Le/a/d/y/c/l;->b:Le/a/d/y/c/n;

    .line 10
    iget-object v2, v1, Le/a/d/y/c/n;->a:Landroid/widget/RemoteViews;

    .line 11
    iput-object v2, v0, Ln3/k/a/q;->G:Landroid/widget/RemoteViews;

    .line 12
    iget-object v1, v1, Le/a/d/y/c/n;->b:Landroid/widget/RemoteViews;

    .line 13
    iput-object v1, v0, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 15
    iget-object v2, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->vibrate:[J

    const-string v1, "NotificationCompat.Build\u2026etVibrate(longArrayOf(0))"

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
