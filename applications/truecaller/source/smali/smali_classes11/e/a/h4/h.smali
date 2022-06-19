.class public final Le/a/h4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h4/g;


# instance fields
.field public final a:Landroid/app/NotificationManager;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Le/a/o5/l1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/o5/l1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/h4/h;->c:Le/a/o5/l1;

    const-string p2, "notification"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Le/a/h4/h;->a:Landroid/app/NotificationManager;

    const-string p2, "notifications.settings"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "context.getSharedPrefere\u2026E, Activity.MODE_PRIVATE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Le/a/h4/h;->c()Z

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "personal_chats"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v2}, Ls1/c0/c$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "im_personal_chats_channel_id_key"

    .line 4
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "im_personal_chats_settings_hash_key"

    .line 5
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_chats"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ls1/c0/c$a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "im_group_chats_channel_id_key"

    .line 9
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "im_group_chats_settings_hash_key"

    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/a/h4/h;->a:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/h4/h;->g()Landroid/net/Uri;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h4/h;->c:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->f()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Le/a/h4/h;->c()Z

    move-result v1

    add-int/2addr v1, v0

    const-string v0, "non_spam_sms_v2"

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v2}, Ls1/c0/c$a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "non_spam_sms_channel_id_key"

    .line 4
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "non_spam_sms_settings_hash_key"

    .line 5
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e()Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/a/h4/h;->a:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/h4/h;->h()Landroid/net/Uri;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/h4/h;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h4/h;->c:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h4/h;->c:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->g()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "im_personal_chats_channel_id_key"

    const-string v2, "personal_chats"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "non_spam_sms_channel_id_key"

    const-string v2, "non_spam_sms_v2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "im_group_chats_channel_id_key"

    const-string v2, "group_chats"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Le/a/h4/h;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/h4/h;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h4/h;->c:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/h4/h;->a:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/h4/h;->c()Z

    move-result p1

    return p1
.end method

.method public o()[J
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h4/h;->c:Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->a()[J

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h4/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "im_group_chats_channel_id_key"

    const-string v2, "group_chats"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h4/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
