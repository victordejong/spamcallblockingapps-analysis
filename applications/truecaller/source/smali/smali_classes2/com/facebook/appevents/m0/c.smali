.class public final synthetic Lcom/facebook/appevents/m0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/m0/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/m0/c;

    invoke-direct {v0}, Lcom/facebook/appevents/m0/c;-><init>()V

    sput-object v0, Lcom/facebook/appevents/m0/c;->a:Lcom/facebook/appevents/m0/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-object v0, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    if-nez v0, :cond_3

    .line 2
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 3
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 4
    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v8, "com.facebook.appevents.SessionInfo.sessionId"

    .line 5
    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    cmp-long v9, v3, v1

    if-eqz v9, :cond_2

    cmp-long v1, v5, v1

    if-eqz v1, :cond_2

    if-nez v8, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Lcom/facebook/appevents/m0/l;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/facebook/appevents/m0/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;I)V

    const/4 v2, 0x0

    const-string v3, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 7
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8
    iput v0, v1, Lcom/facebook/appevents/m0/l;->d:I

    .line 9
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 10
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 12
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 13
    new-instance v2, Lcom/facebook/appevents/m0/n;

    invoke-direct {v2, v3, v0, v7}, Lcom/facebook/appevents/m0/n;-><init>(Ljava/lang/String;ZLs1/z/c/f;)V

    move-object v7, v2

    .line 14
    :goto_0
    iput-object v7, v1, Lcom/facebook/appevents/m0/l;->f:Lcom/facebook/appevents/m0/n;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 16
    iput-object v0, v1, Lcom/facebook/appevents/m0/l;->e:Ljava/lang/Long;

    .line 17
    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v2, "fromString(sessionIDStr)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<set-?>"

    .line 18
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object v0, v1, Lcom/facebook/appevents/m0/l;->c:Ljava/util/UUID;

    move-object v7, v1

    .line 20
    :cond_2
    :goto_1
    sput-object v7, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    :cond_3
    return-void
.end method
