.class public final enum Lcom/truecaller/api/services/messenger/v1/models/Feature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/Feature$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/Feature;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final enum ATTACHMENT_FILE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final ATTACHMENT_FILE_VALUE:I = 0x20

.field public static final enum ATTACHMENT_IMAGE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final ATTACHMENT_IMAGE_VALUE:I = 0x8

.field public static final enum ATTACHMENT_LOCATION:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final ATTACHMENT_LOCATION_VALUE:I = 0x80

.field public static final enum ATTACHMENT_VCARD:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final ATTACHMENT_VCARD_VALUE:I = 0x40

.field public static final enum ATTACHMENT_VIDEO:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final ATTACHMENT_VIDEO_VALUE:I = 0x10

.field public static final enum DEFAULT:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final enum MESSAGE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final MESSAGE_VALUE:I = 0x4

.field public static final enum READ_REPORT:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field public static final READ_REPORT_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/Feature;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->DEFAULT:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v3, "READ_REPORT"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/Feature;->READ_REPORT:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v6, "MESSAGE"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v7}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/Feature;->MESSAGE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 4
    new-instance v6, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v8, "ATTACHMENT_IMAGE"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_IMAGE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 5
    new-instance v8, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v11, "ATTACHMENT_VIDEO"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_VIDEO:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 6
    new-instance v11, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v12, "ATTACHMENT_FILE"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_FILE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 7
    new-instance v12, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v14, "ATTACHMENT_VCARD"

    const/4 v15, 0x6

    const/16 v13, 0x40

    invoke-direct {v12, v14, v15, v13}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_VCARD:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 8
    new-instance v13, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v14, "ATTACHMENT_LOCATION"

    const/4 v15, 0x7

    const/16 v7, 0x80

    invoke-direct {v13, v14, v15, v7}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_LOCATION:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 9
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const-string v14, "UNRECOGNIZED"

    const/4 v15, -0x1

    invoke-direct {v7, v14, v10, v15}, Lcom/truecaller/api/services/messenger/v1/models/Feature;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/models/Feature;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/truecaller/api/services/messenger/v1/models/Feature;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v5

    aput-object v6, v14, v9

    const/4 v0, 0x4

    aput-object v8, v14, v0

    const/4 v0, 0x5

    aput-object v11, v14, v0

    const/4 v0, 0x6

    aput-object v12, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v7, v14, v10

    .line 10
    sput-object v14, Lcom/truecaller/api/services/messenger/v1/models/Feature;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/Feature;

    .line 11
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/Feature$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/Feature$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/Feature;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_LOCATION:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_VCARD:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_FILE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_VIDEO:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->ATTACHMENT_IMAGE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->MESSAGE:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 7
    :cond_6
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->READ_REPORT:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0

    .line 8
    :cond_7
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->DEFAULT:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/Feature;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/Feature$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/Feature;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/Feature;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/Feature;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/Feature;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/Feature;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/Feature;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/Feature;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
