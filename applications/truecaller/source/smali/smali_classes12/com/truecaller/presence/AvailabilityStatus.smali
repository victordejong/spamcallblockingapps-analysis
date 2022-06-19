.class public final enum Lcom/truecaller/presence/AvailabilityStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/presence/AvailabilityStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/presence/AvailabilityStatus;

.field public static final enum AVAILABLE:Lcom/truecaller/presence/AvailabilityStatus;

.field public static final enum BUSY:Lcom/truecaller/presence/AvailabilityStatus;

.field public static final enum UNKNOWN:Lcom/truecaller/presence/AvailabilityStatus;


# instance fields
.field private final mGrpcStatus:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/truecaller/presence/AvailabilityStatus;

    sget-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v2, "AVAILABLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/truecaller/presence/AvailabilityStatus;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Status;)V

    sput-object v0, Lcom/truecaller/presence/AvailabilityStatus;->AVAILABLE:Lcom/truecaller/presence/AvailabilityStatus;

    .line 2
    new-instance v1, Lcom/truecaller/presence/AvailabilityStatus;

    sget-object v2, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v4, "BUSY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/truecaller/presence/AvailabilityStatus;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Status;)V

    sput-object v1, Lcom/truecaller/presence/AvailabilityStatus;->BUSY:Lcom/truecaller/presence/AvailabilityStatus;

    .line 3
    new-instance v2, Lcom/truecaller/presence/AvailabilityStatus;

    sget-object v4, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->UNKNOWN:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/truecaller/presence/AvailabilityStatus;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Status;)V

    sput-object v2, Lcom/truecaller/presence/AvailabilityStatus;->UNKNOWN:Lcom/truecaller/presence/AvailabilityStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/truecaller/presence/AvailabilityStatus;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 4
    sput-object v4, Lcom/truecaller/presence/AvailabilityStatus;->$VALUES:[Lcom/truecaller/presence/AvailabilityStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/api/services/presence/v1/models/Availability$Status;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/truecaller/presence/AvailabilityStatus;->mGrpcStatus:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-void
.end method

.method public static fromGrpsStatus(Lcom/truecaller/api/services/presence/v1/models/Availability$Status;)Lcom/truecaller/presence/AvailabilityStatus;
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->BUSY:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->AVAILABLE:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->UNKNOWN:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0

    .line 5
    :cond_3
    :goto_0
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->UNKNOWN:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;Lcom/truecaller/presence/AvailabilityStatus;)Lcom/truecaller/presence/AvailabilityStatus;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AVAILABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "BUSY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 2
    :pswitch_0
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->AVAILABLE:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->UNKNOWN:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/truecaller/presence/AvailabilityStatus;->BUSY:Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f49f9 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7a599aa9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/presence/AvailabilityStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/presence/AvailabilityStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/presence/AvailabilityStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/presence/AvailabilityStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/presence/AvailabilityStatus;->$VALUES:[Lcom/truecaller/presence/AvailabilityStatus;

    invoke-virtual {v0}, [Lcom/truecaller/presence/AvailabilityStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/presence/AvailabilityStatus;

    return-object v0
.end method


# virtual methods
.method public toGrpcStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/presence/AvailabilityStatus;->mGrpcStatus:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    return-object v0
.end method
