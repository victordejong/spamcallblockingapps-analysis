.class public Lio/agora/rtc/internal/AudioRoutingController$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/16 v2, 0x16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 3
    :pswitch_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$600(Lio/agora/rtc/internal/AudioRoutingController;I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    if-eq p1, v1, :cond_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 5
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 6
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto/16 :goto_3

    .line 7
    :pswitch_1
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->musicStreamEvtProcess(II)V

    goto/16 :goto_3

    .line 8
    :pswitch_2
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->commStreamEvtProcess(II)V

    goto/16 :goto_3

    .line 9
    :pswitch_3
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto/16 :goto_3

    .line 10
    :pswitch_4
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto/16 :goto_3

    .line 11
    :pswitch_5
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$902(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_3

    :pswitch_6
    if-nez p1, :cond_3

    .line 12
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->forceEarpieceProcess(II)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->forceSpkProcess(II)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->phoneChangeEvtProcess(II)V

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_6

    .line 15
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btScoConnectProcess(II)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btScoDisConnectProcess(II)V

    goto :goto_3

    :cond_7
    if-ne p1, v1, :cond_8

    .line 17
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btPlugInProcess(II)V

    goto :goto_3

    .line 18
    :cond_8
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->btPlugOutProcess(II)V

    goto :goto_3

    :cond_9
    if-ltz p1, :cond_a

    .line 19
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->headSetPlugInProcess(II)V

    goto :goto_3

    .line 20
    :cond_a
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;->headSetPlugOutProcess(II)V

    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
