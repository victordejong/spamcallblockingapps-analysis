.class public Le/h/a/c/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:Z

.field public static g:Ljava/lang/String;

.field public static h:Le/h/a/c/h0;

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Z

.field public static p:Ljava/lang/String;


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    :cond_0
    sget-object v0, Le/h/a/c/h0;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "CLEVERTAP_ACCOUNT_ID"

    .line 7
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->b:Ljava/lang/String;

    .line 8
    :cond_1
    sget-object v0, Le/h/a/c/h0;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "CLEVERTAP_TOKEN"

    .line 9
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->c:Ljava/lang/String;

    .line 10
    :cond_2
    sget-object v0, Le/h/a/c/h0;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "CLEVERTAP_REGION"

    .line 11
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->d:Ljava/lang/String;

    :cond_3
    const-string v0, "CLEVERTAP_NOTIFICATION_ICON"

    .line 12
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->g:Ljava/lang/String;

    const-string v0, "CLEVERTAP_USE_GOOGLE_AD_ID"

    .line 13
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/h/a/c/h0;->e:Z

    const-string v0, "CLEVERTAP_DISABLE_APP_LAUNCHED"

    .line 14
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/h/a/c/h0;->f:Z

    const-string v0, "CLEVERTAP_INAPP_EXCLUDE"

    .line 15
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->i:Ljava/lang/String;

    const-string v0, "CLEVERTAP_SSL_PINNING"

    .line 16
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/h/a/c/h0;->j:Z

    const-string v0, "CLEVERTAP_BACKGROUND_SYNC"

    .line 17
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/h/a/c/h0;->k:Z

    const-string v0, "CLEVERTAP_USE_CUSTOM_ID"

    .line 18
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/h/a/c/h0;->l:Z

    const-string v0, "FCM_SENDER_ID"

    .line 19
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->m:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "id:"

    const-string v3, ""

    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->m:Ljava/lang/String;

    :cond_4
    const-string v0, "CLEVERTAP_APP_PACKAGE"

    .line 21
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->n:Ljava/lang/String;

    const-string v0, "CLEVERTAP_BETA"

    .line 22
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/h/a/c/h0;->o:Z

    .line 23
    sget-object v0, Le/h/a/c/h0;->p:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "CLEVERTAP_INTENT_SERVICE"

    .line 24
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/h/a/c/h0;->p:Ljava/lang/String;

    :cond_5
    const-string v0, "CLEVERTAP_XIAOMI_APP_KEY"

    .line 25
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "CLEVERTAP_XIAOMI_APP_ID"

    .line 26
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "CLEVERTAP_IDENTIFIER"

    .line 27
    invoke-static {p1, v0}, Le/h/a/c/h0;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 29
    :cond_6
    sget-object p1, Le/h/a/c/u;->d:[Ljava/lang/String;

    .line 30
    :goto_1
    iput-object p1, p0, Le/h/a/c/h0;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Le/h/a/c/h0;
    .locals 2

    const-class v0, Le/h/a/c/h0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/h/a/c/h0;->h:Le/h/a/c/h0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/h/a/c/h0;

    invoke-direct {v1, p0}, Le/h/a/c/h0;-><init>(Landroid/content/Context;)V

    sput-object v1, Le/h/a/c/h0;->h:Le/h/a/c/h0;

    .line 3
    :cond_0
    sget-object p0, Le/h/a/c/h0;->h:Le/h/a/c/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
