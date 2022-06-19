.class public final Lcom/truecaller/voip/service/invitation/InvitationService$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/service/invitation/InvitationService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/g4/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/service/invitation/InvitationService;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/service/invitation/InvitationService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/service/invitation/InvitationService$b;->b:Lcom/truecaller/voip/service/invitation/InvitationService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/voip/service/invitation/InvitationService$b;->b:Lcom/truecaller/voip/service/invitation/InvitationService;

    .line 2
    iget-object v2, v1, Lcom/truecaller/voip/service/invitation/InvitationService;->e:Le/a/g4/a/b;

    if-eqz v2, :cond_0

    .line 3
    sget v3, Lcom/truecaller/voip/R$id;->voip_invitation_service_foreground_notification:I

    .line 4
    iget-object v1, v1, Lcom/truecaller/voip/service/invitation/InvitationService;->f:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h4/n;

    const-string v4, "voip_v1"

    .line 5
    invoke-interface {v1, v4}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v4, v0, Lcom/truecaller/voip/service/invitation/InvitationService$b;->b:Lcom/truecaller/voip/service/invitation/InvitationService;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget v5, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_answer:I

    .line 9
    sget-object v6, Lcom/truecaller/voip/ui/VoipActivity;->m:Lcom/truecaller/voip/ui/VoipActivity$b;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/truecaller/voip/ui/VoipActivity$b;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0xc000000

    .line 10
    invoke-static {v4, v5, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "PendingIntent.getActivit\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, v0, Lcom/truecaller/voip/service/invitation/InvitationService$b;->b:Lcom/truecaller/voip/service/invitation/InvitationService;

    .line 12
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget v8, Lcom/truecaller/voip/R$id;->voip_incoming_notification_action_decline:I

    const-string v10, "context"

    .line 14
    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/voip/service/invitation/InvitationService;

    invoke-direct {v10, v5, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "Reject"

    .line 16
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {v5, v8, v10, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v8, "PendingIntent.getService\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v3, v1, v4, v5}, Le/a/g4/a/b;->a(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Le/a/g4/a/c/a;

    move-result-object v1

    .line 19
    sget v2, Lcom/truecaller/voip/R$drawable;->ic_voip_notification:I

    invoke-virtual {v1, v2}, Le/a/g4/a/a;->m(I)V

    .line 20
    iget-object v2, v0, Lcom/truecaller/voip/service/invitation/InvitationService$b;->b:Lcom/truecaller/voip/service/invitation/InvitationService;

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v6, v2, v3}, Lcom/truecaller/voip/ui/VoipActivity$b;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Le/a/g4/a/a;->i(Landroid/content/Intent;)V

    const-string v2, "VoipInvitation"

    const-string v4, "groupKey"

    .line 23
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v4

    .line 25
    iput-object v2, v4, Ln3/k/a/q;->v:Ljava/lang/String;

    .line 26
    iget-object v2, v0, Lcom/truecaller/voip/service/invitation/InvitationService$b;->b:Lcom/truecaller/voip/service/invitation/InvitationService;

    sget v4, Lcom/truecaller/voip/R$string;->voip_status_incoming_audio_call:I

    new-array v5, v7, [Ljava/lang/Object;

    sget v6, Lcom/truecaller/voip/R$string;->voip_text:I

    invoke-virtual {v2, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.voip_\u2026ring(R.string.voip_text))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Le/a/g4/a/c/a;->j(Ljava/lang/String;)V

    .line 27
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

    .line 28
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method
