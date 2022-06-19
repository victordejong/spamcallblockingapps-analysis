.class public final synthetic Le/a/a/y0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/a/k/t;


# direct methods
.method public synthetic constructor <init>(Le/a/a/k/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/h;->a:Le/a/a/k/t;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le/a/a/y0/h;->a:Le/a/a/k/t;

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 1
    sget v1, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->b:I

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Le/a/a/k/t;->g(Lcom/truecaller/messaging/data/types/Message;)Z

    :cond_0
    return-void
.end method
