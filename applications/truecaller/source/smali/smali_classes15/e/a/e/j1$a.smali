.class public Le/a/e/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/j1;


# direct methods
.method public constructor <init>(Le/a/e/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/j1$a;->a:Le/a/e/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/e/j1$a;->a:Le/a/e/j1;

    .line 2
    iget-object v0, p1, Le/a/e/j1;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 5
    new-instance v0, Le/a/o5/c1;

    const v1, 0x7f1206f7

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/o5/c1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :pswitch_0
    new-instance v1, Le/a/o5/w0;

    invoke-direct {v1, p1, v0}, Le/a/o5/w0;-><init>(Landroid/app/Activity;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_0

    .line 7
    :pswitch_1
    new-instance v1, Lcom/truecaller/util/NotificationUtil$ShowUIAction;

    invoke-direct {v1, p1, v0}, Lcom/truecaller/util/NotificationUtil$ShowUIAction;-><init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance v1, Lcom/truecaller/util/NotificationUtil$ShowUIAction;

    invoke-direct {v1, p1, v0}, Lcom/truecaller/util/NotificationUtil$ShowUIAction;-><init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_0

    .line 9
    :pswitch_3
    new-instance v1, Le/a/o5/b1;

    invoke-direct {v1, p1, v0}, Le/a/o5/b1;-><init>(Landroid/app/Activity;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Le/a/o5/a1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Le/a/o5/a1;-><init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Z)V

    const-string p1, "Dsan4-PressDeeplink"

    .line 11
    invoke-static {p1}, Le/a/e/a2;->L(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    :pswitch_4
    new-instance v1, Le/a/o5/a1;

    invoke-direct {v1, p1, v0}, Le/a/o5/a1;-><init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Le/a/o5/d1;

    invoke-direct {v1, p1, v0}, Le/a/o5/d1;-><init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto :goto_0

    .line 14
    :cond_3
    new-instance v1, Le/a/o5/c1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/g0;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Le/a/o5/c1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .line 16
    :goto_1
    invoke-interface {v0}, Le/a/o5/x0;->execute()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
