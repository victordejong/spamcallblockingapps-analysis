.class public Lcom/freshchat/consumer/sdk/b/e;
.super Lcom/freshchat/consumer/sdk/j/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/j/i<",
        "Lcom/freshchat/consumer/sdk/b/e;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile dK:Lcom/freshchat/consumer/sdk/b/e;

.field private static final dL:[Ljava/lang/String;

.field private static final dM:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 55

    const-string v0, "CONFIG_DOMAIN"

    const-string v1, "CONFIG_APP_ID"

    const-string v2, "CONFIG_APP_KEY"

    const-string v3, "CONFIG_VOICE_MESSAGING_ENABLED"

    const-string v4, "CONFIG_GALLERY_SELECTION_ENABLED"

    const-string v5, "CONFIG_LINK_REGEX"

    const-string v6, "CONFIG_LINK_SCHEME"

    const-string v7, "CONFIG_NOTIFICATION_PRIORITY"

    const-string v8, "CONFIG_NOTIFICATION_IMPORTANCE"

    const-string v9, "CONFIG_NOTIFICATION_SMALL_ICON"

    const-string v10, "CONFIG_NOTIFICATION_LARGE_ICON"

    const-string v11, "CONFIG_NOTIFICATION_SOUND_ENABLED"

    const-string v12, "CONFIG_NOTIFICATION_SOUND_URI"

    const-string v13, "CONFIG_RC_LAUNCH_DEEPLINK_TARGET_FROM_NOTIFICATION"

    const-string v14, "SOLUTIONS_LAST_REQUESTED_TIME"

    const-string v15, "SOLUTIONS_LAST_MODIFIED_AT"

    const-string v16, "SOLUTIONS_LAST_RECEIVED_LOCALE"

    const-string v17, "SOLUTIONS_LAST_REQUESTED_LOCALE"

    const-string v18, "REMOTE_CONFIG_LAST_UPDATED_TIME"

    const-string v19, "CONFIG_TEAM_MEMBER_INFO_VISIBLE"

    const-string v20, "CONFIG_CAMERA_CAPTURE_ENABLED"

    const-string v21, "CONFIG_AUDIO_STREAM_SPEAKERPHONE"

    const-string v22, "CONFIG_FALLBACK_ACTIVITY_FOR_EMPTY_BACKSTACK"

    const-string v23, "RC_IS_ACCOUNT_ACTIVE"

    const-string v24, "RC_ENABLED_FEATURES_JSON"

    const-string v25, "RC_CONFIG_FETCH_INTERVAL"

    const-string v26, "RC_RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL"

    const-string v27, "CONFIG_RC_SESSION_TIMEOUT_INTERVAL"

    const-string v28, "RC_ACTIVE_CONV_WINDOW"

    const-string v29, "RC_ACTIVE_CONV_FETCH_BACKOFF_RATIO"

    const-string v30, "RC_ACTIVE_CONV_MIN_FETCH_INTERVAL"

    const-string v31, "RC_ACTIVE_CONV_MAX_FETCH_INTERVAL"

    const-string v32, "RC_MSG_FETCH_INTERVAL_NORMAL"

    const-string v33, "RC_MSG_FETCH_INTERVAL_LAIDBACK"

    const-string v34, "RC_FAQ_FETCH_INTERVAL_NORMAL"

    const-string v35, "RC_FAQ_FETCH_INTERVAL_LAIDBACK"

    const-string v36, "RC_CHANNELS_FETCH_INTERVAL_NORMAL"

    const-string v37, "RC_CHANNELS_FETCH_INTERVAL_LAIDBACK"

    const-string v38, "RC_CSAT_AUTO_EXPIRE"

    const-string v39, "RC_CSAT_AUTO_EXPIRY_INTERVAL"

    const-string v40, "RC_MESSAGE_MASKING_CONFIG"

    const-string v41, "RC_UNSUPPORTED_FRAGMENT_CONFIG"

    const-string v42, "CONFIG_LAST_SESSION_END_TIME"

    const-string v43, "RC_USER_EVENT_DELAY_IN_MILLIS_UNTIL_UPLOAD"

    const-string v44, "RC_USER_EVENT_ALLOWED_LIMIT_PER_DAY"

    const-string v45, "RC_USER_EVENT_BATCH_UPLOAD_COUNT"

    const-string v46, "RC_USER_EVENT_TRIGGER_UPLOAD_COUNT"

    const-string v47, "RC_USER_EVENT_MAX_PROPERTIES_LIMIT"

    const-string v48, "RC_USER_EVENT_MAX_CHARS_PER_EVENT_NAME "

    const-string v49, "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_NAME"

    const-string v50, "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_VALUE"

    const-string v51, "UNREGISTERED_USER_DAU_TRACKING_LAST_UPDATED_TIME"

    const-string v52, "RC_LIVE_TRANSLATION_ENABLED"

    const-string v53, "RC_ACCOUNT_FAQ_API_VERSION"

    const-string v54, "HAS_BUSINESS_HOURS_DETAILS_LOADED"

    filled-new-array/range {v0 .. v54}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/b/e;->dL:[Ljava/lang/String;

    const-string v1, "CONFIG_USER_FIRST_NAME"

    const-string v2, "CONFIG_USER_LAST_NAME"

    const-string v3, "CONFIG_USER_EMAIL"

    const-string v4, "CONFIG_USER_ALIAS"

    const-string v5, "CONFIG_USER_PHONE"

    const-string v6, "CONFIG_USER_PHONE_COUNTRY"

    const-string v7, "CONFIG_USER_RESTORE_ID"

    const-string v8, "CONFIG_USER_LOCALE"

    const-string v9, "CONFIG_USER_REGISTERED"

    const-string v10, "CONFIG_USER_EXTERNAL_ID"

    const-string v11, "CONFIG_USER_JWT_ID_TOKEN"

    const-string v12, "CONFIG_USER_JWT_ID_TOKEN_STATUS"

    const-string v13, "MESSAGES_LAST_UPDATED_TIME"

    const-string v14, "CONFIG_VOTED_ARTICLES"

    const-string v15, "PrevSessionEndTime"

    const-string v16, "USER_DAU_TRACKING_LAST_UPDATED_TIME"

    const-string v17, "SDK_VERSION_CODE"

    const-string v18, "CONFIG_LAST_APP_VER_CODE"

    const-string v19, "CHANNELS_LAST_REQUESTED_TIME"

    const-string v20, "CHANNELS_LAST_MODIFIED_AT"

    const-string v21, "CHANNELS_LAST_RECEIVED_LOCALE"

    const-string v22, "CHANNELS_LAST_REQUESTED_LOCALE"

    const-string v23, "FRESHCHAT_USER_EVENTS_DATA"

    const-string v24, "FRESHCHAT_USER_EVENTS_UPLOADING_DATA"

    const-string v25, "FRESHCHAT_USER_EVENTS_DAILY_COUNTER"

    const-string v26, "FRESHCHAT_LAST_EVENT_LOGGED_TIME"

    const-string v27, "CONFIG_USER_CALENDAR_EMAIL"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/b/e;->dM:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    return-void
.end method

.method private bF()V
    .locals 1

    const-string v0, "CHANNELS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private bw()V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private by()V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/e;->dK:Lcom/freshchat/consumer/sdk/b/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/b/e;->dK:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/i;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-class v0, Lcom/freshchat/consumer/sdk/b/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/b/e;->dK:Lcom/freshchat/consumer/sdk/b/e;

    if-nez v1, :cond_1

    new-instance v1, Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/b/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/b/e;->dK:Lcom/freshchat/consumer/sdk/b/e;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object p0, Lcom/freshchat/consumer/sdk/b/e;->dK:Lcom/freshchat/consumer/sdk/b/e;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CHANNELS_LAST_MODIFIED_AT"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CHANNELS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public D(I)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_IMPORTANCE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CHANNELS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public D(Z)V
    .locals 1

    const-string v0, "SHOULD_LOAD_CONVERSATION_STATUS"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public E(I)V
    .locals 1

    const-string v0, "FRESHCHAT_USER_EVENTS_DAILY_COUNTER"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_RESTORE_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_FALLBACK_ACTIVITY_FOR_EMPTY_BACKSTACK"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_FCM_REGISTRATION_TOKEN"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_PHONE_COUNTRY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_PHONE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_LOCALE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_SOUND_URI"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public X(I)V
    .locals 1

    const-string v0, "RC_ACCOUNT_FAQ_API_VERSION"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FRESHCHAT_USER_EVENTS_DATA"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/JwtTokenStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->asInt()I

    move-result p1

    const-string v0, "CONFIG_USER_JWT_ID_TOKEN_STATUS"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "RC_RESOLVED_MESSAGE_TYPES"

    invoke-virtual {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/i;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "RC_ENABLED_FEATURES_JSON"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "CONFIG_VOTED_ARTICLES"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public aX(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RC_MESSAGE_MASKING_CONFIG"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FRESHCHAT_USER_EVENTS_UPLOADING_DATA"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p1, "RC_REOPENED_MESSAGE_TYPES"

    invoke-virtual {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/i;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public bA()V
    .locals 1

    const-string v0, "REMOTE_CONFIG_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public bB()Ljava/lang/String;
    .locals 1

    const-string v0, "CHANNELS_LAST_MODIFIED_AT"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bC()Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 2

    const-string v0, "CHANNELS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/beans/FCLocale;->fromString(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;

    move-result-object v0

    return-object v0
.end method

.method public bD()V
    .locals 1

    const-string v0, "CHANNELS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public bE()Ljava/lang/String;
    .locals 1

    const-string v0, "CHANNELS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bG()Ljava/lang/String;
    .locals 1

    const-string v0, "CHANNELS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bH()V
    .locals 1

    const-string v0, "CHANNELS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public bI()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_RESTORE_ID"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Ljava/lang/String;
    .locals 1

    const-string v0, "MESSAGES_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bK()V
    .locals 1

    const-string v0, "MESSAGES_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public bN()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/b/e;->bw()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/b/e;->bF()V

    return-void
.end method

.method public bO()V
    .locals 0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bx()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/b/e;->by()V

    return-void
.end method

.method public bP()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_FCM_REGISTRATION_TOKEN"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bQ()I
    .locals 2

    const-string v0, "CONFIG_NOTIFICATION_PRIORITY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bR()I
    .locals 2

    const-string v0, "CONFIG_NOTIFICATION_SMALL_ICON"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bS()I
    .locals 2

    const-string v0, "CONFIG_NOTIFICATION_LARGE_ICON"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bT()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_FALLBACK_ACTIVITY_FOR_EMPTY_BACKSTACK"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bU()Z
    .locals 2

    const-string v0, "CONFIG_RC_LAUNCH_DEEPLINK_TARGET_FROM_NOTIFICATION"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bW()V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/e;->dM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->a([Ljava/lang/String;)V

    return-void
.end method

.method public bX()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_PHONE_COUNTRY"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bY()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_PHONE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bZ()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    const-string v0, "90bd96d1c0b3dbe341cc5a33f373183a"

    return-object v0
.end method

.method public bg()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_FIRST_NAME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bh()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_LAST_NAME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bh(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RC_UNSUPPORTED_FRAGMENT_CONFIG"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bi()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_EMAIL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bj()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_ALIAS"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bk()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_EXTERNAL_ID"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bl()Z
    .locals 1

    const-string v0, "CONFIG_USER_REGISTERED"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bm()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_LAST_APP_VER_CODE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_USER_CALENDAR_EMAIL"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bn()Z
    .locals 2

    const-string v0, "CONFIG_VOICE_MESSAGING_ENABLED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bo()Z
    .locals 2

    const-string v0, "CONFIG_AUDIO_STREAM_SPEAKERPHONE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bp()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_LINK_REGEX"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bq()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_LINK_SCHEME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public br()Ljava/lang/String;
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bs()V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public bt()Ljava/lang/String;
    .locals 1

    const-string v0, "SOLUTIONS_LAST_MODIFIED_AT"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bu()Lcom/freshchat/consumer/sdk/beans/FCLocale;
    .locals 2

    const-string v0, "SOLUTIONS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/beans/FCLocale;->fromString(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/FCLocale;

    move-result-object v0

    return-object v0
.end method

.method public bv()Ljava/lang/String;
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bx()V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public bz()Ljava/lang/String;
    .locals 1

    const-string v0, "REMOTE_CONFIG_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_JWT_ID_TOKEN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "CONFIG_USER_REGISTERED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public cQ()J
    .locals 2

    const-string v0, "RC_CSAT_AUTO_EXPIRY_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public ca()Ljava/lang/String;
    .locals 1

    const-string v0, "PrevSessionEndTime"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cb()V
    .locals 1

    const-string v0, "PrevSessionEndTime"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public cc()Ljava/lang/String;
    .locals 1

    const-string v0, "USER_DAU_TRACKING_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cd()V
    .locals 1

    const-string v0, "USER_DAU_TRACKING_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public ce()J
    .locals 3

    const-string v0, "PENDING_LOG_REQUEST_ID"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public cf()V
    .locals 1

    const-string v0, "PENDING_LOG_REQUEST_ID"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public cg()Lorg/json/JSONArray;
    .locals 1

    const-string v0, "RC_ENABLED_FEATURES_JSON"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 1

    const-string v0, "PENDING_LOG_REQUEST_ID"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    const-string v0, "CONFIG_TEAM_MEMBER_INFO_VISIBLE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public doesCsatAutoExpire()Z
    .locals 1

    const-string v0, "RC_CSAT_AUTO_EXPIRE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dp()V
    .locals 5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/i;->eO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/i;->jO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->bo(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->gh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->bI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bA(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/Freshchat;->identifyUser(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/MethodNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/d;->aw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/e;->context:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    const-string v0, "CONFIG_CAMERA_CAPTURE_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public ee()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_SOUND_URI"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    const-string v0, "CONFIG_VOICE_MESSAGING_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public fi()Z
    .locals 1

    const-string v0, "SHOULD_LOAD_CONVERSATION_STATUS"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fj()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "RC_RESOLVED_MESSAGE_TYPES"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public fk()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "RC_REOPENED_MESSAGE_TYPES"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public fl()V
    .locals 2

    const-string v0, "HAS_BUSINESS_HOURS_DETAILS_LOADED"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MESSAGES_LAST_UPDATED_TIME"

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const-string v1, "REMOTE_CONFIG_LAST_UPDATED_TIME"

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const-string v1, "CHANNELS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const-string v1, "CHANNELS_LAST_MODIFIED_AT"

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SHOULD_LOAD_CONVERSATION_STATUS"

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FRESHCHAT"

    const-string v1, "Reloading Business Hours Details"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fq()Ljava/lang/String;
    .locals 1

    const-string v0, "RC_MESSAGE_MASKING_CONFIG"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    const-string v0, "CONFIG_GALLERY_SELECTION_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public gG()Ljava/lang/String;
    .locals 2

    const-string v0, "FRESHCHAT_USER_EVENTS_DATA"

    const-string v1, "{}"

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gH()V
    .locals 1

    const-string v0, "FRESHCHAT_USER_EVENTS_DATA"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public gI()Ljava/lang/String;
    .locals 2

    const-string v0, "FRESHCHAT_USER_EVENTS_UPLOADING_DATA"

    const-string v1, "{}"

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gJ()I
    .locals 2

    const-string v0, "FRESHCHAT_USER_EVENTS_DAILY_COUNTER"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public gK()V
    .locals 1

    const-string v0, "FRESHCHAT_USER_EVENTS_DAILY_COUNTER"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public gL()J
    .locals 3

    const-string v0, "FRESHCHAT_LAST_EVENT_LOGGED_TIME"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public gP()Ljava/lang/String;
    .locals 1

    const-string v0, "UNREGISTERED_USER_DAU_TRACKING_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gQ()V
    .locals 1

    const-string v0, "UNREGISTERED_USER_DAU_TRACKING_LAST_UPDATED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveConvFetchBackoffRatio()D
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvFetchBackoffRatio()D

    move-result-wide v0

    const-string v2, "RC_ACTIVE_CONV_FETCH_BACKOFF_RATIO"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveConvMaxFetchInterval()J
    .locals 2

    const-string v0, "RC_ACTIVE_CONV_MAX_FETCH_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveConvMinFetchInterval()J
    .locals 2

    const-string v0, "RC_ACTIVE_CONV_MIN_FETCH_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveConvWindow()J
    .locals 2

    const-string v0, "RC_ACTIVE_CONV_WINDOW"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_APP_ID"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_APP_KEY"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsFetchIntervalLaidback()J
    .locals 2

    const-string v0, "RC_CHANNELS_FETCH_INTERVAL_LAIDBACK"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChannelsFetchIntervalNormal()J
    .locals 2

    const-string v0, "RC_CHANNELS_FETCH_INTERVAL_NORMAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_DOMAIN"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaqFetchIntervalLaidback()J
    .locals 2

    const-string v0, "RC_FAQ_FETCH_INTERVAL_LAIDBACK"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFaqFetchIntervalNormal()J
    .locals 2

    const-string v0, "RC_FAQ_FETCH_INTERVAL_NORMAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxAllowedEventsPerDay()J
    .locals 3

    const-string v0, "RC_USER_EVENT_ALLOWED_LIMIT_PER_DAY"

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxAllowedPropertiesPerEvent()J
    .locals 3

    const-string v0, "RC_USER_EVENT_MAX_PROPERTIES_LIMIT"

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxCharsPerEventName()I
    .locals 2

    const-string v0, "RC_USER_EVENT_MAX_CHARS_PER_EVENT_NAME "

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxCharsPerEventPropertyName()I
    .locals 2

    const-string v0, "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_NAME"

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxCharsPerEventPropertyValue()I
    .locals 2

    const-string v0, "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_VALUE"

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxDelayInMillisUntilUpload()J
    .locals 3

    const-string v0, "RC_USER_EVENT_DELAY_IN_MILLIS_UNTIL_UPLOAD"

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxEventsPerBatch()J
    .locals 3

    const-string v0, "RC_USER_EVENT_BATCH_UPLOAD_COUNT"

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMsgFetchIntervalLaidback()J
    .locals 2

    const-string v0, "RC_MSG_FETCH_INTERVAL_LAIDBACK"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMsgFetchIntervalNormal()J
    .locals 2

    const-string v0, "RC_MSG_FETCH_INTERVAL_NORMAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteConfigFetchInterval()J
    .locals 2

    const-string v0, "RC_CONFIG_FETCH_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseTimeExpectationsFetchInterval()J
    .locals 2

    const-string v0, "RC_RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeoutInterval()J
    .locals 2

    const-string v0, "CONFIG_RC_SESSION_TIMEOUT_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerUploadOnEventsCount()J
    .locals 3

    const-string v0, "RC_USER_EVENT_TRIGGER_UPLOAD_COUNT"

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public gh()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_JWT_ID_TOKEN"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gi()V
    .locals 1

    const-string v0, "CONFIG_USER_JWT_ID_TOKEN"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public gj()I
    .locals 2

    const-string v0, "CONFIG_USER_JWT_ID_TOKEN_STATUS"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public gk()Z
    .locals 1

    const-string v0, "RC_JWT_AUTH_STRICT_MODE_ENABLED"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public gl()J
    .locals 2

    const-string v0, "RC_JWT_AUTH_TIMEOUT_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public gm()Ljava/lang/String;
    .locals 1

    const-string v0, "RC_UNSUPPORTED_FRAGMENT_CONFIG"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gt()J
    .locals 2

    const-string v0, "CONFIG_LAST_SESSION_END_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public gu()V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    const-string v2, "CONFIG_LAST_SESSION_END_TIME"

    invoke-virtual {p0, v2, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public gw()I
    .locals 2

    const-string v0, "CONFIG_NOTIFICATION_IMPORTANCE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h(I)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_PRIORITY"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    const-string v0, "CONFIG_AUDIO_STREAM_SPEAKERPHONE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public hA()Ljava/lang/String;
    .locals 1

    const-string v0, "CONFIG_USER_CALENDAR_EMAIL"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(I)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_SMALL_ICON"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_SOUND_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public iK()Lorg/json/JSONObject;
    .locals 1

    const-string v0, "CONFIG_VOTED_ARTICLES"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public iL()V
    .locals 1

    const-string v0, "CONFIG_VOTED_ARTICLES"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public iM()I
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/DefaultAccountConfig;->DEFAULT_FAQ_API_VERSION:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->asInt()I

    move-result v0

    const-string v1, "RC_ACCOUNT_FAQ_API_VERSION"

    invoke-virtual {p0, v1, v0}, Lcom/freshchat/consumer/sdk/j/i;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public iN()J
    .locals 3

    const-string v0, "CONFIG_FAQ_API_VERSION_UPDATED_AT"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/i;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public iO()V
    .locals 1

    const-string v0, "CONFIG_FAQ_API_VERSION_UPDATED_AT"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->at(Ljava/lang/String;)V

    return-void
.end method

.method public iP()V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_REQUESTED_TIME"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const-string v0, "SOLUTIONS_LAST_MODIFIED_AT"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const-string v0, "SOLUTIONS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    const-string v0, "SOLUTIONS_LAST_REQUESTED_LOCALE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->iL()V

    return-void
.end method

.method public is()V
    .locals 1

    const-string v0, "CONFIG_USER_RESTORE_ID"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public isAccountActive()Z
    .locals 2

    const-string v0, "RC_IS_ACCOUNT_ACTIVE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCameraCaptureEnabled()Z
    .locals 2

    const-string v0, "CONFIG_CAMERA_CAPTURE_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGallerySelectionEnabled()Z
    .locals 2

    const-string v0, "CONFIG_GALLERY_SELECTION_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isJwtAuthEnabled()Z
    .locals 1

    const-string v0, "RC_JWT_AUTH_ENABLED"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationInterceptionEnabled()Z
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_INTERCEPTION_ENABLED"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationSoundEnabled()Z
    .locals 2

    const-string v0, "CONFIG_NOTIFICATION_SOUND_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isResponseExpectationEnabled()Z
    .locals 2

    const-string v0, "CONFIG_RESPONSE_EXPECTATION_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTeamMemberInfoVisible()Z
    .locals 2

    const-string v0, "CONFIG_TEAM_MEMBER_INFO_VISIBLE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUserEventsTrackingEnabled()Z
    .locals 2

    const-string v0, "CONFIG_USER_EVENTS_TRACKING_ENABLED"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public it()Z
    .locals 1

    const-string v0, "RC_LIVE_TRANSLATION_ENABLED"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_LARGE_ICON"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    const-string v0, "CONFIG_RC_LAUNCH_DEEPLINK_TARGET_FROM_NOTIFICATION"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public k(I)V
    .locals 1

    const-string v0, "SDK_VERSION_CODE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_APP_ID"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_APP_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_FIRST_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_LAST_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public s(J)V
    .locals 1

    const-string v0, "RC_CSAT_AUTO_EXPIRY_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_EMAIL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAccountActive(Z)V
    .locals 1

    const-string v0, "RC_IS_ACCOUNT_ACTIVE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setActiveConvFetchBackoffRatio(D)V
    .locals 1

    const-string v0, "RC_ACTIVE_CONV_FETCH_BACKOFF_RATIO"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public setActiveConvMaxFetchInterval(J)V
    .locals 1

    const-string v0, "RC_ACTIVE_CONV_MAX_FETCH_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setActiveConvMinFetchInterval(J)V
    .locals 1

    const-string v0, "RC_ACTIVE_CONV_MIN_FETCH_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setActiveConvWindow(J)V
    .locals 1

    const-string v0, "RC_ACTIVE_CONV_WINDOW"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setChannelsFetchIntervalLaidback(J)V
    .locals 1

    const-string v0, "RC_CHANNELS_FETCH_INTERVAL_LAIDBACK"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setChannelsFetchIntervalNormal(J)V
    .locals 1

    const-string v0, "RC_CHANNELS_FETCH_INTERVAL_NORMAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setCsatAutoExpire(Z)V
    .locals 1

    const-string v0, "RC_CSAT_AUTO_EXPIRE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_DOMAIN"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFaqFetchIntervalLaidback(J)V
    .locals 1

    const-string v0, "RC_FAQ_FETCH_INTERVAL_LAIDBACK"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setFaqFetchIntervalNormal(J)V
    .locals 1

    const-string v0, "RC_FAQ_FETCH_INTERVAL_NORMAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setJwtAuthEnabled(Z)V
    .locals 1

    const-string v0, "RC_JWT_AUTH_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMaxAllowedEventsPerDay(J)V
    .locals 1

    const-string v0, "RC_USER_EVENT_ALLOWED_LIMIT_PER_DAY"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMaxAllowedPropertiesPerEvent(J)V
    .locals 1

    const-string v0, "RC_USER_EVENT_MAX_PROPERTIES_LIMIT"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMaxCharsPerEventName(I)V
    .locals 1

    const-string v0, "RC_USER_EVENT_MAX_CHARS_PER_EVENT_NAME "

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMaxCharsPerEventPropertyName(I)V
    .locals 1

    const-string v0, "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setMaxCharsPerEventPropertyValue(I)V
    .locals 2

    int-to-long v0, p1

    const-string p1, "RC_USER_EVENT_MAX_CHARS_PER_PROPERTY_VALUE"

    invoke-virtual {p0, p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMaxDelayInMillisUntilUpload(J)V
    .locals 1

    const-string v0, "RC_USER_EVENT_DELAY_IN_MILLIS_UNTIL_UPLOAD"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMaxEventsPerBatch(J)V
    .locals 1

    const-string v0, "RC_USER_EVENT_BATCH_UPLOAD_COUNT"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMsgFetchIntervalLaidback(J)V
    .locals 1

    const-string v0, "RC_MSG_FETCH_INTERVAL_LAIDBACK"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMsgFetchIntervalNormal(J)V
    .locals 1

    const-string v0, "RC_MSG_FETCH_INTERVAL_NORMAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setRemoteConfigFetchInterval(J)V
    .locals 1

    const-string v0, "RC_CONFIG_FETCH_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setResponseTimeExpectationsFetchInterval(J)V
    .locals 1

    const-string v0, "RC_RESPONSE_TIME_EXPECTATIONS_FETCH_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setSessionTimeoutInterval(J)V
    .locals 1

    const-string v0, "CONFIG_RC_SESSION_TIMEOUT_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setTriggerUploadOnEventsCount(J)V
    .locals 1

    const-string v0, "RC_USER_EVENT_TRIGGER_UPLOAD_COUNT"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setUserEventsTrackingEnabled(Z)V
    .locals 1

    const-string v0, "CONFIG_USER_EVENTS_TRACKING_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_USER_ALIAS"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(Z)V
    .locals 1

    const-string v0, "RC_JWT_AUTH_STRICT_MODE_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public u(J)V
    .locals 1

    const-string v0, "RC_JWT_AUTH_TIMEOUT_INTERVAL"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONFIG_USER_EXTERNAL_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/i;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public u(Z)V
    .locals 1

    const-string v0, "CONFIG_NOTIFICATION_INTERCEPTION_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_LAST_APP_VER_CODE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(J)V
    .locals 1

    const-string v0, "FRESHCHAT_LAST_EVENT_LOGGED_TIME"

    invoke-virtual {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/i;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_LINK_REGEX"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Z)V
    .locals 1

    const-string v0, "CONFIG_RESPONSE_EXPECTATION_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CONFIG_LINK_SCHEME"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_MODIFIED_AT"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOLUTIONS_LAST_RECEIVED_LOCALE"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z(Z)V
    .locals 1

    const-string v0, "RC_LIVE_TRANSLATION_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
