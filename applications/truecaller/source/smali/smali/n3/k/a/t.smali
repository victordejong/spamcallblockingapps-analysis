.class public Ln3/k/a/t;
.super Ln3/k/a/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/a/t$a;
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/k/a/t$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/k/a/t$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ln3/k/a/y;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/k/a/u;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/t;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ln3/k/a/y;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ln3/k/a/u;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/k/a/t;->f:Ljava/util/List;

    .line 7
    iget-object v0, p1, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iput-object p1, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "User\'s name must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/k/a/u;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    .line 3
    iget-object v0, v0, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    const-string v1, "android.selfDisplayName"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    invoke-virtual {v0}, Ln3/k/a/y;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messagingStyleUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    const-string v1, "android.hiddenConversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    .line 11
    invoke-static {v0}, Ln3/k/a/t$a;->a(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 13
    :cond_1
    iget-object v0, p0, Ln3/k/a/t;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Ln3/k/a/t;->f:Ljava/util/List;

    .line 15
    invoke-static {v0}, Ln3/k/a/t$a;->a(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages.historic"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 17
    :cond_2
    iget-object v0, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public b(Ln3/k/a/j;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    const/16 v2, 0x1c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Ln3/k/a/q;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    if-lt v0, v2, :cond_2

    .line 6
    new-instance v1, Landroid/app/Notification$MessagingStyle;

    iget-object v3, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    invoke-virtual {v3}, Ln3/k/a/y;->c()Landroid/app/Person;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Landroid/app/Notification$MessagingStyle;

    iget-object v3, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    .line 8
    iget-object v3, v3, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 9
    invoke-direct {v1, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object v3, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/k/a/t$a;

    .line 11
    invoke-virtual {v4}, Ln3/k/a/t$a;->c()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_2

    :cond_3
    const/16 v3, 0x1a

    if-lt v0, v3, :cond_4

    .line 12
    iget-object v3, p0, Ln3/k/a/t;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/k/a/t$a;

    .line 13
    invoke-virtual {v4}, Ln3/k/a/t$a;->c()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$MessagingStyle;->addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_3

    .line 14
    :cond_4
    iget-object v3, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    if-lt v0, v2, :cond_6

    .line 15
    :cond_5
    iget-object v3, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :cond_6
    if-lt v0, v2, :cond_7

    .line 16
    iget-object v0, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    .line 17
    :cond_7
    check-cast p1, Ln3/k/a/v;

    .line 18
    iget-object p1, p1, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 19
    invoke-virtual {v1, p1}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    goto/16 :goto_d

    .line 20
    :cond_8
    iget-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_a

    .line 21
    iget-object v2, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/k/a/t$a;

    .line 22
    iget-object v5, v2, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    if-eqz v5, :cond_9

    .line 23
    iget-object v5, v5, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    .line 25
    :cond_a
    iget-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 26
    iget-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ln3/k/a/t$a;

    goto :goto_4

    :cond_b
    move-object v2, v1

    .line 27
    :goto_4
    iget-object v0, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    move-object v0, p1

    check-cast v0, Ln3/k/a/v;

    .line 29
    iget-object v0, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 30
    iget-object v5, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    .line 31
    move-object v0, p1

    check-cast v0, Ln3/k/a/v;

    .line 32
    iget-object v5, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    const-string v6, ""

    .line 33
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 34
    iget-object v5, v2, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    if-eqz v5, :cond_d

    .line 35
    iget-object v0, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 36
    iget-object v5, v5, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_d
    :goto_5
    if-eqz v2, :cond_f

    .line 38
    move-object v0, p1

    check-cast v0, Ln3/k/a/v;

    .line 39
    iget-object v0, v0, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 40
    iget-object v5, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    if-eqz v5, :cond_e

    .line 41
    invoke-virtual {p0, v2}, Ln3/k/a/t;->l(Ln3/k/a/t$a;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_6

    .line 42
    :cond_e
    iget-object v2, v2, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    .line 43
    :goto_6
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 44
    :cond_f
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 45
    iget-object v2, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    if-nez v2, :cond_13

    .line 46
    iget-object v2, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_7
    if-ltz v2, :cond_11

    .line 47
    iget-object v5, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/k/a/t$a;

    .line 48
    iget-object v5, v5, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    if-eqz v5, :cond_10

    .line 49
    iget-object v5, v5, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    if-nez v5, :cond_10

    move v2, v3

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_11
    move v2, v4

    :goto_8
    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    move v2, v4

    goto :goto_a

    :cond_13
    :goto_9
    move v2, v3

    .line 50
    :goto_a
    iget-object v5, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_b
    if-ltz v5, :cond_16

    .line 51
    iget-object v6, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/k/a/t$a;

    if-eqz v2, :cond_14

    .line 52
    invoke-virtual {p0, v6}, Ln3/k/a/t;->l(Ln3/k/a/t$a;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_c

    .line 53
    :cond_14
    iget-object v6, v6, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    .line 54
    :goto_c
    iget-object v7, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-eq v5, v7, :cond_15

    const-string v7, "\n"

    .line 55
    invoke-virtual {v0, v4, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    :cond_15
    invoke-virtual {v0, v4, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 57
    :cond_16
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    check-cast p1, Ln3/k/a/v;

    .line 58
    iget-object p1, p1, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 59
    invoke-direct {v2, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 60
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :goto_d
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/k/a/u;->c(Landroid/os/Bundle;)V

    const-string v0, "android.messagingStyleUser"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.selfDisplayName"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.conversationTitle"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.hiddenConversationTitle"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.messages"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.messages.historic"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.isGroupConversation"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$MessagingStyle"

    return-object v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/k/a/u;->j(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "android.messagingStyleUser"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ln3/k/a/y;->b(Landroid/os/Bundle;)Ln3/k/a/y;

    move-result-object v0

    iput-object v0, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ln3/k/a/y$a;

    invoke-direct {v0}, Ln3/k/a/y$a;-><init>()V

    const-string v1, "android.selfDisplayName"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 8
    new-instance v1, Ln3/k/a/y;

    invoke-direct {v1, v0}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    .line 9
    iput-object v1, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    :goto_0
    const-string v0, "android.conversationTitle"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, "android.hiddenConversationTitle"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    :cond_1
    const-string v0, "android.messages"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v1, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-static {v0}, Ln3/k/a/t$a;->b([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v0, "android.messages.historic"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Ln3/k/a/t;->f:Ljava/util/List;

    invoke-static {v0}, Ln3/k/a/t$a;->b([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v0, "android.isGroupConversation"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    :cond_4
    return-void
.end method

.method public k(Ljava/lang/CharSequence;JLn3/k/a/y;)Ln3/k/a/t;
    .locals 1

    .line 1
    new-instance v0, Ln3/k/a/t$a;

    invoke-direct {v0, p1, p2, p3, p4}, Ln3/k/a/t$a;-><init>(Ljava/lang/CharSequence;JLn3/k/a/y;)V

    .line 2
    iget-object p1, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Ln3/k/a/t;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x19

    if-le p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Ln3/k/a/t;->e:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final l(Ln3/k/a/t$a;)Ljava/lang/CharSequence;
    .locals 12

    .line 1
    invoke-static {}, Ln3/k/g/a;->c()Ln3/k/g/a;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x1

    if-eqz v2, :cond_0

    const/high16 v3, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 3
    :goto_0
    iget-object v4, p1, Ln3/k/a/t$a;->c:Ln3/k/a/y;

    const-string v5, ""

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    .line 4
    :cond_1
    iget-object v4, v4, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    .line 5
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    iget-object v4, p0, Ln3/k/a/t;->g:Ln3/k/a/y;

    .line 7
    iget-object v4, v4, Ln3/k/a/y;->a:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Ln3/k/a/u;->a:Ln3/k/a/q;

    .line 9
    iget v2, v2, Ln3/k/a/q;->D:I

    if-eqz v2, :cond_2

    move v3, v2

    .line 10
    :cond_2
    invoke-virtual {v0, v4}, Ln3/k/g/a;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 13
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v3, v2

    .line 14
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v6, 0x21

    .line 15
    invoke-virtual {v1, v4, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    iget-object p1, p1, Ln3/k/a/t$a;->a:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, p1

    :goto_2
    const-string p1, "  "

    .line 17
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v5}, Ln3/k/g/a;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method
