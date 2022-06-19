.class public final enum Lg/g/a/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/a/a/e;",
        ">;",
        "Lg/g/a/a/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/a/a/e;

.field public static final enum DELETE_ALLOW_LIST_ITEM:Lg/g/a/a/e;

.field public static final enum DELETE_CALL_LOGS:Lg/g/a/a/e;

.field public static final enum DELETE_DENY_LIST_ITEM:Lg/g/a/a/e;

.field public static final enum DELETE_SUBSCRIPTION:Lg/g/a/a/e;

.field public static final enum DELETE_TRIAL:Lg/g/a/a/e;

.field public static final enum GET_AD_CONSENT:Lg/g/a/a/e;

.field public static final enum GET_ALLOW_LIST:Lg/g/a/a/e;

.field public static final enum GET_CALLER_ID:Lg/g/a/a/e;

.field public static final enum GET_CALL_LOGS:Lg/g/a/a/e;

.field public static final enum GET_CATEGORIES:Lg/g/a/a/e;

.field public static final enum GET_CATEGORIES_CACHE:Lg/g/a/a/e;

.field public static final enum GET_DEFAULT_SPAM_CATEGORY_SETTINGS:Lg/g/a/a/e;

.field public static final enum GET_DENY_LIST:Lg/g/a/a/e;

.field public static final enum GET_DIRECTORY_DETAILS:Lg/g/a/a/e;

.field public static final enum GET_DIRECTORY_RESULTS:Lg/g/a/a/e;

.field public static final enum GET_PHONE_REPORTS:Lg/g/a/a/e;

.field public static final enum GET_PHONE_STATISTICS_ITEM:Lg/g/a/a/e;

.field public static final enum GET_REPORT_CATEGORIES:Lg/g/a/a/e;

.field public static final enum GET_SERVICE_PLANS:Lg/g/a/a/e;

.field public static final enum GET_SPAM_BLOCKING_CONFIG:Lg/g/a/a/e;

.field public static final enum GET_SUBSCRIPTION:Lg/g/a/a/e;

.field public static final enum GET_TERMS_AND_CONDITIONS:Lg/g/a/a/e;

.field public static final enum GET_TRIAL:Lg/g/a/a/e;

.field public static final enum MATERIALIZE_CALL_LOGS:Lg/g/a/a/e;

.field public static final enum POST_AD_CONSENT:Lg/g/a/a/e;

.field public static final enum POST_ALLOW_LIST_ITEM:Lg/g/a/a/e;

.field public static final enum POST_AUTH:Lg/g/a/a/e;

.field public static final enum POST_DENY_LIST_ITEM:Lg/g/a/a/e;

.field public static final enum POST_EVENT_PROFILES:Lg/g/a/a/e;

.field public static final enum POST_FEEDBACK:Lg/g/a/a/e;

.field public static final enum POST_PHONE_REPORT_ITEM:Lg/g/a/a/e;

.field public static final enum POST_SETTINGS:Lg/g/a/a/e;

.field public static final enum POST_SUBSCRIBE:Lg/g/a/a/e;

.field public static final enum POST_SUBSCRIPTION:Lg/g/a/a/e;

.field public static final enum POST_TERMS_AND_CONDITIONS:Lg/g/a/a/e;

.field public static final enum POST_TRACK_EVENT:Lg/g/a/a/e;

.field public static final enum POST_TRIAL:Lg/g/a/a/e;

.field public static final enum POST_USER_FEEDBACK:Lg/g/a/a/e;

.field public static final enum PUT_SPAM_BLOCKING_CONFIG:Lg/g/a/a/e;

.field public static final enum REGISTER_FCM_TOKEN:Lg/g/a/a/e;

.field public static final enum REMOVE_FCM_TOKEN:Lg/g/a/a/e;

.field public static final enum SNAP_TOKEN:Lg/g/a/a/e;

.field public static final enum UNDEFINED:Lg/g/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    new-instance v0, Lg/g/a/a/e;

    const-string v1, "GET_CATEGORIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/g/a/a/e;->GET_CATEGORIES:Lg/g/a/a/e;

    .line 2
    new-instance v1, Lg/g/a/a/e;

    const-string v3, "GET_DIRECTORY_RESULTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/a/a/e;->GET_DIRECTORY_RESULTS:Lg/g/a/a/e;

    .line 3
    new-instance v3, Lg/g/a/a/e;

    const-string v5, "GET_DIRECTORY_DETAILS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/g/a/a/e;->GET_DIRECTORY_DETAILS:Lg/g/a/a/e;

    .line 4
    new-instance v5, Lg/g/a/a/e;

    const-string v7, "POST_TRACK_EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/g/a/a/e;->POST_TRACK_EVENT:Lg/g/a/a/e;

    .line 5
    new-instance v7, Lg/g/a/a/e;

    const-string v9, "POST_DENY_LIST_ITEM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/g/a/a/e;->POST_DENY_LIST_ITEM:Lg/g/a/a/e;

    .line 6
    new-instance v9, Lg/g/a/a/e;

    const-string v11, "GET_DENY_LIST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/g/a/a/e;->GET_DENY_LIST:Lg/g/a/a/e;

    .line 7
    new-instance v11, Lg/g/a/a/e;

    const-string v13, "DELETE_DENY_LIST_ITEM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/g/a/a/e;->DELETE_DENY_LIST_ITEM:Lg/g/a/a/e;

    .line 8
    new-instance v13, Lg/g/a/a/e;

    const-string v15, "POST_ALLOW_LIST_ITEM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/g/a/a/e;->POST_ALLOW_LIST_ITEM:Lg/g/a/a/e;

    .line 9
    new-instance v15, Lg/g/a/a/e;

    const-string v14, "GET_ALLOW_LIST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/g/a/a/e;->GET_ALLOW_LIST:Lg/g/a/a/e;

    .line 10
    new-instance v14, Lg/g/a/a/e;

    const-string v12, "DELETE_ALLOW_LIST_ITEM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg/g/a/a/e;->DELETE_ALLOW_LIST_ITEM:Lg/g/a/a/e;

    .line 11
    new-instance v12, Lg/g/a/a/e;

    const-string v10, "GET_SPAM_BLOCKING_CONFIG"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lg/g/a/a/e;->GET_SPAM_BLOCKING_CONFIG:Lg/g/a/a/e;

    .line 12
    new-instance v10, Lg/g/a/a/e;

    const-string v8, "PUT_SPAM_BLOCKING_CONFIG"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lg/g/a/a/e;->PUT_SPAM_BLOCKING_CONFIG:Lg/g/a/a/e;

    .line 13
    new-instance v8, Lg/g/a/a/e;

    const-string v6, "GET_DEFAULT_SPAM_CATEGORY_SETTINGS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lg/g/a/a/e;->GET_DEFAULT_SPAM_CATEGORY_SETTINGS:Lg/g/a/a/e;

    .line 14
    new-instance v6, Lg/g/a/a/e;

    const-string v4, "MATERIALIZE_CALL_LOGS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/g/a/a/e;->MATERIALIZE_CALL_LOGS:Lg/g/a/a/e;

    .line 15
    new-instance v4, Lg/g/a/a/e;

    const-string v2, "POST_EVENT_PROFILES"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->POST_EVENT_PROFILES:Lg/g/a/a/e;

    .line 16
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "POST_FEEDBACK"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->POST_FEEDBACK:Lg/g/a/a/e;

    .line 17
    new-instance v6, Lg/g/a/a/e;

    const-string v4, "GET_CATEGORIES_CACHE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/g/a/a/e;->GET_CATEGORIES_CACHE:Lg/g/a/a/e;

    .line 18
    new-instance v4, Lg/g/a/a/e;

    const-string v2, "GET_REPORT_CATEGORIES"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->GET_REPORT_CATEGORIES:Lg/g/a/a/e;

    .line 19
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "POST_PHONE_REPORT_ITEM"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->POST_PHONE_REPORT_ITEM:Lg/g/a/a/e;

    .line 20
    new-instance v6, Lg/g/a/a/e;

    const-string v4, "GET_PHONE_REPORTS"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/g/a/a/e;->GET_PHONE_REPORTS:Lg/g/a/a/e;

    .line 21
    new-instance v4, Lg/g/a/a/e;

    const-string v2, "POST_USER_FEEDBACK"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->POST_USER_FEEDBACK:Lg/g/a/a/e;

    .line 22
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "GET_PHONE_STATISTICS_ITEM"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->GET_PHONE_STATISTICS_ITEM:Lg/g/a/a/e;

    .line 23
    new-instance v6, Lg/g/a/a/e;

    const-string v4, "POST_SETTINGS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/g/a/a/e;->POST_SETTINGS:Lg/g/a/a/e;

    .line 24
    new-instance v2, Lg/g/a/a/e;

    const-string v4, "POST_AUTH"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->POST_AUTH:Lg/g/a/a/e;

    .line 25
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "SNAP_TOKEN"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->SNAP_TOKEN:Lg/g/a/a/e;

    .line 26
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "GET_SUBSCRIPTION"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->GET_SUBSCRIPTION:Lg/g/a/a/e;

    .line 27
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "POST_SUBSCRIPTION"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->POST_SUBSCRIPTION:Lg/g/a/a/e;

    .line 28
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "DELETE_SUBSCRIPTION"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->DELETE_SUBSCRIPTION:Lg/g/a/a/e;

    .line 29
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "GET_SERVICE_PLANS"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->GET_SERVICE_PLANS:Lg/g/a/a/e;

    .line 30
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "POST_SUBSCRIBE"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->POST_SUBSCRIBE:Lg/g/a/a/e;

    .line 31
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "GET_TERMS_AND_CONDITIONS"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->GET_TERMS_AND_CONDITIONS:Lg/g/a/a/e;

    .line 32
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "POST_TERMS_AND_CONDITIONS"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->POST_TERMS_AND_CONDITIONS:Lg/g/a/a/e;

    .line 33
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "GET_CALL_LOGS"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->GET_CALL_LOGS:Lg/g/a/a/e;

    .line 34
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "DELETE_CALL_LOGS"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->DELETE_CALL_LOGS:Lg/g/a/a/e;

    .line 35
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "GET_CALLER_ID"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->GET_CALLER_ID:Lg/g/a/a/e;

    .line 36
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "REGISTER_FCM_TOKEN"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->REGISTER_FCM_TOKEN:Lg/g/a/a/e;

    .line 37
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "REMOVE_FCM_TOKEN"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->REMOVE_FCM_TOKEN:Lg/g/a/a/e;

    .line 38
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "GET_AD_CONSENT"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->GET_AD_CONSENT:Lg/g/a/a/e;

    .line 39
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "POST_AD_CONSENT"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->POST_AD_CONSENT:Lg/g/a/a/e;

    .line 40
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "GET_TRIAL"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->GET_TRIAL:Lg/g/a/a/e;

    .line 41
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "POST_TRIAL"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->POST_TRIAL:Lg/g/a/a/e;

    .line 42
    new-instance v2, Lg/g/a/a/e;

    const-string v6, "DELETE_TRIAL"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/g/a/a/e;->DELETE_TRIAL:Lg/g/a/a/e;

    .line 43
    new-instance v4, Lg/g/a/a/e;

    const-string v6, "UNDEFINED"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lg/g/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/g/a/a/e;->UNDEFINED:Lg/g/a/a/e;

    const/16 v2, 0x2b

    new-array v2, v2, [Lg/g/a/a/e;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v39, v2, v0

    const/16 v0, 0x25

    aput-object v40, v2, v0

    const/16 v0, 0x26

    aput-object v41, v2, v0

    const/16 v0, 0x27

    aput-object v42, v2, v0

    const/16 v0, 0x28

    aput-object v43, v2, v0

    const/16 v0, 0x29

    aput-object v44, v2, v0

    const/16 v0, 0x2a

    aput-object v4, v2, v0

    .line 44
    sput-object v2, Lg/g/a/a/e;->$VALUES:[Lg/g/a/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/a/a/e;
    .locals 1

    .line 1
    const-class v0, Lg/g/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/a/a/e;

    return-object p0
.end method

.method public static values()[Lg/g/a/a/e;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/e;->$VALUES:[Lg/g/a/a/e;

    invoke-virtual {v0}, [Lg/g/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/a/a/e;

    return-object v0
.end method
