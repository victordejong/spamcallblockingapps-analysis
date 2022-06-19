.class public Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Le/h/a/b/g;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Le/h/a/b/g;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
