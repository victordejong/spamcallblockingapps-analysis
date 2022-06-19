.class public final enum Lcom/hiya/stingray/manager/g1$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/g1$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/g1$c;

.field public static final enum CALLER_ID_STYLE_FULLSCREEN:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum CALL_SCREENER_ENABLED:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum CALL_SCREENING_SERVICE:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum CONTACT_PERMISSION_GRANTED:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum DEFAULT_DIALER:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum NON_CONTACTS_BLOCKING:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum NOTIFICATIONS_CHANNELS:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum PREMIUM_ACTIVE:Lcom/hiya/stingray/manager/g1$c;

.field public static final enum PROMO_PREMIUM:Lcom/hiya/stingray/manager/g1$c;


# instance fields
.field private final character:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hiya/stingray/manager/g1$c;

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "CALL_SCREENER_ENABLED"

    const/4 v3, 0x0

    const/16 v4, 0x53

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->CALL_SCREENER_ENABLED:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "PREMIUM_ACTIVE"

    const/4 v3, 0x1

    const/16 v4, 0x50

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->PREMIUM_ACTIVE:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "CONTACT_PERMISSION_GRANTED"

    const/4 v3, 0x2

    const/16 v4, 0x43

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->CONTACT_PERMISSION_GRANTED:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "DEFAULT_DIALER"

    const/4 v3, 0x3

    const/16 v4, 0x44

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->DEFAULT_DIALER:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "NOTIFICATIONS_CHANNELS"

    const/4 v3, 0x4

    const/16 v4, 0x4e

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->NOTIFICATIONS_CHANNELS:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "NON_CONTACTS_BLOCKING"

    const/4 v3, 0x5

    const/16 v4, 0x4f

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->NON_CONTACTS_BLOCKING:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "PROMO_PREMIUM"

    const/4 v3, 0x6

    const/16 v4, 0x46

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->PROMO_PREMIUM:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "CALL_SCREENING_SERVICE"

    const/4 v3, 0x7

    const/16 v4, 0x4b

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->CALL_SCREENING_SERVICE:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/manager/g1$c;

    const-string v2, "CALLER_ID_STYLE_FULLSCREEN"

    const/16 v3, 0x8

    const/16 v4, 0x49

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/stingray/manager/g1$c;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/hiya/stingray/manager/g1$c;->CALLER_ID_STYLE_FULLSCREEN:Lcom/hiya/stingray/manager/g1$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/manager/g1$c;->$VALUES:[Lcom/hiya/stingray/manager/g1$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lcom/hiya/stingray/manager/g1$c;->character:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/g1$c;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/g1$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/g1$c;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/g1$c;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->$VALUES:[Lcom/hiya/stingray/manager/g1$c;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/g1$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/g1$c;

    return-object v0
.end method


# virtual methods
.method public final getCharacter()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/hiya/stingray/manager/g1$c;->character:C

    return v0
.end method
