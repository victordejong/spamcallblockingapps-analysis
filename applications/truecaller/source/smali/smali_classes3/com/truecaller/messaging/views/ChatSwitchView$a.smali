.class public final Lcom/truecaller/messaging/views/ChatSwitchView$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/views/ChatSwitchView;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->a:I

    iput-object p2, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->a:I

    const-string v1, "it"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/views/ChatSwitchView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/messaging/views/Switch;->URGENT_MESSAGE:Lcom/truecaller/messaging/views/Switch;

    invoke-static {v0, p1, v1}, Lcom/truecaller/messaging/views/ChatSwitchView;->g1(Lcom/truecaller/messaging/views/ChatSwitchView;Landroid/view/View;Lcom/truecaller/messaging/views/Switch;)V

    return-void

    .line 2
    :cond_0
    throw v3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/views/ChatSwitchView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/views/ChatSwitchView;

    invoke-static {v1}, Lcom/truecaller/messaging/views/ChatSwitchView;->f1(Lcom/truecaller/messaging/views/ChatSwitchView;)Lcom/truecaller/messaging/views/TransportSwitchView;

    move-result-object v1

    const-string v2, "smsSwitch"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/truecaller/messaging/views/Switch;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    check-cast v3, Lcom/truecaller/messaging/views/Switch;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/truecaller/messaging/views/Switch;->SMS:Lcom/truecaller/messaging/views/Switch;

    :goto_1
    invoke-static {v0, p1, v3}, Lcom/truecaller/messaging/views/ChatSwitchView;->g1(Lcom/truecaller/messaging/views/ChatSwitchView;Landroid/view/View;Lcom/truecaller/messaging/views/Switch;)V

    return-void

    .line 4
    :cond_4
    iget-object v0, p0, Lcom/truecaller/messaging/views/ChatSwitchView$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/views/ChatSwitchView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/messaging/views/Switch;->CHAT:Lcom/truecaller/messaging/views/Switch;

    invoke-static {v0, p1, v1}, Lcom/truecaller/messaging/views/ChatSwitchView;->g1(Lcom/truecaller/messaging/views/ChatSwitchView;Landroid/view/View;Lcom/truecaller/messaging/views/Switch;)V

    return-void
.end method
