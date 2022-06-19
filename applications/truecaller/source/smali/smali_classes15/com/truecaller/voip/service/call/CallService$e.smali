.class public final Lcom/truecaller/voip/service/call/CallService$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/service/call/CallService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/g4/a/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/service/call/CallService;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/service/call/CallService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    .line 2
    iget-object v2, v1, Lcom/truecaller/voip/service/call/CallService;->e:Le/a/g4/a/b;

    if-eqz v2, :cond_0

    .line 3
    sget v3, Lcom/truecaller/voip/R$id;->voip_call_service_foreground_notification:I

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/voip/service/call/CallService;->o()Le/a/h4/n;

    move-result-object v1

    const-string v4, "voip_v1"

    .line 5
    invoke-interface {v1, v4}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v1, v0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget v5, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_mute:I

    const-string v6, "context"

    .line 9
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/truecaller/voip/service/call/CallService;

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "ToggleMute"

    .line 11
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0xc000000

    .line 12
    invoke-static {v1, v5, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v1, "PendingIntent.getService\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v7, v0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    .line 14
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget v9, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_speaker:I

    .line 16
    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/voip/service/call/CallService;

    invoke-direct {v10, v7, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "ToggleSpeaker"

    .line 18
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {v7, v9, v10, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v9, v0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    .line 21
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget v10, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_hang_up:I

    .line 23
    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/voip/service/call/CallService;

    invoke-direct {v6, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "HangUp"

    .line 25
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {v9, v10, v6, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {v8, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v9, 0x20

    move-object v6, v7

    move-object v7, v8

    move-object v8, v1

    .line 27
    invoke-static/range {v2 .. v9}, Le/a/g4/a/b;->c(Le/a/g4/a/b;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;I)Le/a/g4/a/d/b;

    move-result-object v1

    .line 28
    sget v2, Lcom/truecaller/voip/R$drawable;->ic_voip_notification:I

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->m(I)V

    .line 29
    sget-object v2, Lcom/truecaller/voip/ui/VoipActivity;->m:Lcom/truecaller/voip/ui/VoipActivity$b;

    iget-object v3, v0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    const/4 v4, 0x0

    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/truecaller/voip/ui/VoipActivity$b;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Le/a/g4/a/a;->i(Landroid/content/Intent;)V

    const-string v2, "VoipOngoing"

    const-string v3, "groupKey"

    .line 32
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v3

    .line 34
    iput-object v2, v3, Ln3/k/a/q;->v:Ljava/lang/String;

    .line 35
    iget-object v2, v0, Lcom/truecaller/voip/service/call/CallService$e;->b:Lcom/truecaller/voip/service/call/CallService;

    sget v3, Lcom/truecaller/voip/R$string;->voip_truecaller_audio_call:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v2, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.voip_\u2026ring(R.string.voip_text))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Le/a/g4/a/d/b;->j(Ljava/lang/String;)V

    .line 36
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xffff

    invoke-direct/range {v4 .. v21}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->g(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-object v1

    :cond_0
    const-string v1, "notificationFactory"

    .line 37
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method
