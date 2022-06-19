.class public Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMS status changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/a/k/s;

    .line 3
    invoke-interface {p1}, Le/a/a/k/s;->r()Le/a/a/k/r;

    move-result-object p1

    .line 4
    invoke-interface {p1, p0}, Le/a/a/k/r;->b(Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/messaging/transport/mms/MmsStatusReceiver;->a:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/t;

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-interface {p1, v0, p2, v1}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    return-void
.end method
