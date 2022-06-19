.class public Lcom/hiya/stingray/notification/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/w;


# instance fields
.field private final a:Lcom/hiya/stingray/manager/i1;

.field private final b:Lcom/hiya/stingray/manager/e1;

.field private final c:Lcom/hiya/stingray/notification/s;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/notification/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/notification/r;->a:Lcom/hiya/stingray/manager/i1;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/notification/r;->b:Lcom/hiya/stingray/manager/e1;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/notification/r;->c:Lcom/hiya/stingray/notification/s;

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/r;->a:Lcom/hiya/stingray/manager/i1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/i1;->k(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "notification_action"

    .line 2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v1, "handle_first_time_call_notification"

    .line 3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p3, p0, Lcom/hiya/stingray/notification/r;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p3}, Lcom/hiya/stingray/manager/i1;->b()I

    move-result p3

    .line 5
    const-class v0, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/notification/r;->b:Lcom/hiya/stingray/manager/e1;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/hiya/stingray/util/u;->g(Landroid/content/Context;Lcom/hiya/stingray/t/d0;ILjava/lang/String;Lcom/hiya/stingray/manager/e1;)V

    goto :goto_0

    :cond_0
    const-string v1, "save_first_time_identified_action"

    .line 6
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "user_prompt_action"

    if-eqz v1, :cond_1

    const-string p3, "save_to_contact"

    .line 7
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 8
    iget-object p3, p0, Lcom/hiya/stingray/notification/r;->b:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 9
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/hiya/stingray/util/u;->h(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "block_first_time_identified_action"

    .line 10
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p3, "block"

    .line 11
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 12
    iget-object p3, p0, Lcom/hiya/stingray/notification/r;->b:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 13
    iget-object p3, p0, Lcom/hiya/stingray/notification/r;->c:Lcom/hiya/stingray/notification/s;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/hiya/stingray/notification/s;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid action: %s in class %s"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-class v1, Lcom/hiya/stingray/notification/FirstTimeIdentifiedCallNotificationHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p3, p2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/notification/r;->c()V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "delete_first_time_call_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/notification/r;->c()V

    return-void

    :cond_0
    const-string p1, "NOTIFICATION_ITEM_PHONE"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/notification/r;->c:Lcom/hiya/stingray/notification/s;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p0}, Lcom/hiya/stingray/notification/s;->c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/notification/w;)V

    return-void
.end method
