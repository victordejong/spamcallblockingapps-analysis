.class public final enum Lcom/mopub/common/privacy/PrivacyKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/privacy/PrivacyKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_AGAIN_AFTER_SECS:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CONSENT_CHANGE_REASON:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_PRIVACY_POLICY_LINK:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_PRIVACY_POLICY_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_IAB_FORMAT:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_IAB_HASH:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_LINK:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum CURRENT_VENDOR_LIST_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum EXTRAS:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum FORCE_EXPLICIT_NO:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum FORCE_GDPR_APPLIES:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum INVALIDATE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum IS_GDPR_REGION:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum IS_WHITELISTED:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final enum REACQUIRE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

.field public static final synthetic b:[Lcom/mopub/common/privacy/PrivacyKey;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v1, "IS_GDPR_REGION"

    const/4 v2, 0x0

    const-string v3, "is_gdpr_region"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/PrivacyKey;->IS_GDPR_REGION:Lcom/mopub/common/privacy/PrivacyKey;

    .line 2
    new-instance v1, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v3, "IS_WHITELISTED"

    const/4 v4, 0x1

    const-string v5, "is_whitelisted"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/privacy/PrivacyKey;->IS_WHITELISTED:Lcom/mopub/common/privacy/PrivacyKey;

    .line 3
    new-instance v3, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v5, "FORCE_GDPR_APPLIES"

    const/4 v6, 0x2

    const-string v7, "force_gdpr_applies"

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/common/privacy/PrivacyKey;->FORCE_GDPR_APPLIES:Lcom/mopub/common/privacy/PrivacyKey;

    .line 4
    new-instance v5, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v7, "FORCE_EXPLICIT_NO"

    const/4 v8, 0x3

    const-string v9, "force_explicit_no"

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/common/privacy/PrivacyKey;->FORCE_EXPLICIT_NO:Lcom/mopub/common/privacy/PrivacyKey;

    .line 5
    new-instance v7, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v9, "INVALIDATE_CONSENT"

    const/4 v10, 0x4

    const-string v11, "invalidate_consent"

    invoke-direct {v7, v9, v10, v11}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mopub/common/privacy/PrivacyKey;->INVALIDATE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

    .line 6
    new-instance v9, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v11, "REACQUIRE_CONSENT"

    const/4 v12, 0x5

    const-string v13, "reacquire_consent"

    invoke-direct {v9, v11, v12, v13}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mopub/common/privacy/PrivacyKey;->REACQUIRE_CONSENT:Lcom/mopub/common/privacy/PrivacyKey;

    .line 7
    new-instance v11, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v13, "EXTRAS"

    const/4 v14, 0x6

    const-string v15, "extras"

    invoke-direct {v11, v13, v14, v15}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mopub/common/privacy/PrivacyKey;->EXTRAS:Lcom/mopub/common/privacy/PrivacyKey;

    .line 8
    new-instance v13, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CURRENT_VENDOR_LIST_VERSION"

    const/4 v14, 0x7

    const-string v12, "current_vendor_list_version"

    invoke-direct {v13, v15, v14, v12}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

    .line 9
    new-instance v12, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CURRENT_VENDOR_LIST_LINK"

    const/16 v14, 0x8

    const-string v10, "current_vendor_list_link"

    invoke-direct {v12, v15, v14, v10}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_LINK:Lcom/mopub/common/privacy/PrivacyKey;

    .line 10
    new-instance v10, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CURRENT_PRIVACY_POLICY_VERSION"

    const/16 v14, 0x9

    const-string v8, "current_privacy_policy_version"

    invoke-direct {v10, v15, v14, v8}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_PRIVACY_POLICY_VERSION:Lcom/mopub/common/privacy/PrivacyKey;

    .line 11
    new-instance v8, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CURRENT_PRIVACY_POLICY_LINK"

    const/16 v14, 0xa

    const-string v6, "current_privacy_policy_link"

    invoke-direct {v8, v15, v14, v6}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_PRIVACY_POLICY_LINK:Lcom/mopub/common/privacy/PrivacyKey;

    .line 12
    new-instance v6, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CURRENT_VENDOR_LIST_IAB_FORMAT"

    const/16 v14, 0xb

    const-string v4, "current_vendor_list_iab_format"

    invoke-direct {v6, v15, v14, v4}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_IAB_FORMAT:Lcom/mopub/common/privacy/PrivacyKey;

    .line 13
    new-instance v4, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CURRENT_VENDOR_LIST_IAB_HASH"

    const/16 v14, 0xc

    const-string v2, "current_vendor_list_iab_hash"

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/common/privacy/PrivacyKey;->CURRENT_VENDOR_LIST_IAB_HASH:Lcom/mopub/common/privacy/PrivacyKey;

    .line 14
    new-instance v2, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CALL_AGAIN_AFTER_SECS"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "call_again_after_secs"

    invoke-direct {v2, v15, v14, v4}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mopub/common/privacy/PrivacyKey;->CALL_AGAIN_AFTER_SECS:Lcom/mopub/common/privacy/PrivacyKey;

    .line 15
    new-instance v4, Lcom/mopub/common/privacy/PrivacyKey;

    const-string v15, "CONSENT_CHANGE_REASON"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "consent_change_reason"

    invoke-direct {v4, v15, v14, v2}, Lcom/mopub/common/privacy/PrivacyKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mopub/common/privacy/PrivacyKey;->CONSENT_CHANGE_REASON:Lcom/mopub/common/privacy/PrivacyKey;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/mopub/common/privacy/PrivacyKey;

    const/4 v15, 0x0

    aput-object v0, v2, v15

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

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v14

    .line 16
    sput-object v2, Lcom/mopub/common/privacy/PrivacyKey;->b:[Lcom/mopub/common/privacy/PrivacyKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/mopub/common/privacy/PrivacyKey;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/privacy/PrivacyKey;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/common/privacy/PrivacyKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/privacy/PrivacyKey;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/privacy/PrivacyKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/privacy/PrivacyKey;->b:[Lcom/mopub/common/privacy/PrivacyKey;

    invoke-virtual {v0}, [Lcom/mopub/common/privacy/PrivacyKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/privacy/PrivacyKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/PrivacyKey;->a:Ljava/lang/String;

    return-object v0
.end method
