.class public Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    iput-object p2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->A:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    invoke-static {v0}, Le/h/a/b/g;->c(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Le/h/a/b/g;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->h:Le/h/a/b/e;

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->d(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->c(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->b(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->a(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->d:Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    iget-object v1, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver$a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;->e(Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
