.class public final enum Lcom/truecaller/api/services/presence/v1/models/Availability$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/presence/v1/models/Availability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/presence/v1/models/Availability$Status$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/presence/v1/models/Availability$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

.field public static final enum AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

.field public static final AVAILABLE_VALUE:I = 0x1

.field public static final enum BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

.field public static final BUSY_VALUE:I = 0x2

.field public static final enum DISABLED:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

.field public static final DISABLED_VALUE:I = 0x3

.field public static final enum UNKNOWN:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

.field public static final UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/presence/v1/models/Availability$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->UNKNOWN:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v3, "AVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v5, "BUSY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    .line 4
    new-instance v5, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v7, "DISABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->DISABLED:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    .line 5
    new-instance v7, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->$VALUES:[Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    .line 7
    new-instance v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/presence/v1/models/Availability$Status;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->DISABLED:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->UNKNOWN:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/presence/v1/models/Availability$Status;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/presence/v1/models/Availability$Status;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->forNumber(I)Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/presence/v1/models/Availability$Status;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/presence/v1/models/Availability$Status;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->$VALUES:[Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
