.class public final Lcom/truecaller/flashsdk/core/KidFlashService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/core/KidFlashService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/core/KidFlashService;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/core/KidFlashService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$a;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "extra_flash"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "type_stop_ringer"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$a;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 3
    sget p2, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "type_stop_progress"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$a;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 6
    sget v0, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    .line 8
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p2, :cond_9

    .line 9
    iput-boolean v2, p2, Lcom/truecaller/flashsdk/models/QueuedFlash;->k:Z

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    .line 11
    iget-object v0, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->q()V

    goto/16 :goto_2

    .line 13
    :cond_1
    iget-object p1, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 14
    iget-object p2, p2, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 15
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_9

    .line 16
    iput-boolean v2, p1, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "type_flash_minimized"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$a;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 18
    sget v0, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    .line 20
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p2, :cond_9

    .line 21
    iget-object v0, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 22
    iget-object v3, p2, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 23
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_9

    .line 24
    iput-boolean v2, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    .line 25
    iput-boolean v2, v0, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    .line 26
    iget-object v0, p2, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v3, "flash.instanceId"

    .line 27
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v3, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_2

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 30
    iput-wide v3, v0, Lcom/truecaller/flashsdk/models/Flash;->g:J

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->p()V

    .line 32
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->o()V

    .line 33
    iget-object v0, p2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v3, "flash.payload"

    .line 34
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v3, p2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v4, "sender"

    .line 36
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 37
    iget-object v5, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v5}, Le/a/y/b/f;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 38
    iget-object v5, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->c:Le/a/y/b/c;

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string p1, "contactUtils"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_4
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_5

    .line 39
    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v4

    .line 40
    :goto_1
    sget v3, Lcom/truecaller/flashsdk/R$string;->resume_flash:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "name"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v7, " "

    invoke-static {v4, v7, v2, v5}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    if-eqz v5, :cond_6

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    invoke-static {v4, v5, v2, v2, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_6
    aput-object v4, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.resum\u2026.split(\" \")[0] else name)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "title"

    .line 41
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v6, v0, v1}, Lcom/truecaller/flashsdk/core/KidFlashService;->m(Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p1, "deviceUtils"

    .line 42
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :sswitch_3
    const-string v0, "type_flash_active"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$a;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 44
    sget v0, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    .line 46
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p2, :cond_9

    .line 47
    iget-object v0, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->k:Ljava/util/Map;

    .line 48
    iget-object v2, p2, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 49
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_8

    .line 50
    iput-boolean v1, v0, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    .line 51
    :cond_8
    iput-boolean v1, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    .line 52
    invoke-virtual {p1, p2}, Lcom/truecaller/flashsdk/core/KidFlashService;->i(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    goto :goto_2

    :sswitch_4
    const-string v0, "type_flash_replied"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/truecaller/flashsdk/core/KidFlashService$a;->a:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 54
    sget v0, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    .line 56
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p2, :cond_9

    .line 57
    iput-boolean v2, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->n:Z

    .line 58
    invoke-virtual {p1, p2}, Lcom/truecaller/flashsdk/core/KidFlashService;->b(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    :cond_9
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6086549b -> :sswitch_4
        -0x5a0858e6 -> :sswitch_3
        -0xcc5830e -> :sswitch_2
        0x1740185 -> :sswitch_1
        0x2e9ae035 -> :sswitch_0
    .end sparse-switch
.end method
