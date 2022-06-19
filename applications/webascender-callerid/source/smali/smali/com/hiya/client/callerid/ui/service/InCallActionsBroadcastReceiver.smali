.class public final Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Lcom/hiya/client/callerid/ui/a0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/z/b;->a:Lcom/hiya/client/callerid/ui/z/b$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/z/b$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/b;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/client/callerid/ui/z/b;->e(Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "EXTRA_CALL_IDENTIFIER"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 4
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;->a:Lcom/hiya/client/callerid/ui/a0/c;

    const-string v2, "callManager"

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/hiya/client/callerid/ui/a0/c;->o(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x6d5c94cf

    if-eq v1, v3, :cond_4

    const v3, 0x63e971cd

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "ACTION_DECLINE"

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;->a:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Lcom/hiya/client/callerid/ui/a0/c;->j(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, "ACTION_ACCEPT"

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/hiya/client/callerid/ui/service/InCallActionsBroadcastReceiver;->a:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Lcom/hiya/client/callerid/ui/a0/c;->b(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_6
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method
