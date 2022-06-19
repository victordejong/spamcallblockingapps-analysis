.class public final enum Lcom/truecaller/presence/AvailabilityContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/presence/AvailabilityContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/presence/AvailabilityContext;

.field public static final enum CALL:Lcom/truecaller/presence/AvailabilityContext;

.field public static final enum MEETING:Lcom/truecaller/presence/AvailabilityContext;

.field public static final enum SLEEP:Lcom/truecaller/presence/AvailabilityContext;

.field public static final enum UNKNOWN:Lcom/truecaller/presence/AvailabilityContext;


# instance fields
.field private final mGrpcContext:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/truecaller/presence/AvailabilityContext;

    sget-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->CALL:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    const-string v2, "CALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/truecaller/presence/AvailabilityContext;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Context;)V

    sput-object v0, Lcom/truecaller/presence/AvailabilityContext;->CALL:Lcom/truecaller/presence/AvailabilityContext;

    .line 2
    new-instance v1, Lcom/truecaller/presence/AvailabilityContext;

    sget-object v2, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->MEETING:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    const-string v4, "MEETING"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/truecaller/presence/AvailabilityContext;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Context;)V

    sput-object v1, Lcom/truecaller/presence/AvailabilityContext;->MEETING:Lcom/truecaller/presence/AvailabilityContext;

    .line 3
    new-instance v2, Lcom/truecaller/presence/AvailabilityContext;

    sget-object v4, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->SLEEP:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    const-string v6, "SLEEP"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/truecaller/presence/AvailabilityContext;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Context;)V

    sput-object v2, Lcom/truecaller/presence/AvailabilityContext;->SLEEP:Lcom/truecaller/presence/AvailabilityContext;

    .line 4
    new-instance v4, Lcom/truecaller/presence/AvailabilityContext;

    sget-object v6, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->NOTSET:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    const-string v8, "UNKNOWN"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/truecaller/presence/AvailabilityContext;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Context;)V

    sput-object v4, Lcom/truecaller/presence/AvailabilityContext;->UNKNOWN:Lcom/truecaller/presence/AvailabilityContext;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/truecaller/presence/AvailabilityContext;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    .line 5
    sput-object v6, Lcom/truecaller/presence/AvailabilityContext;->$VALUES:[Lcom/truecaller/presence/AvailabilityContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/truecaller/api/services/presence/v1/models/Availability$Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/api/services/presence/v1/models/Availability$Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/truecaller/presence/AvailabilityContext;->mGrpcContext:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    return-void
.end method

.method public static fromGrpcContext(Lcom/truecaller/api/services/presence/v1/models/Availability$Context;)Lcom/truecaller/presence/AvailabilityContext;
    .locals 1

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->SLEEP:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->MEETING:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->CALL:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->UNKNOWN:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 6
    :cond_4
    :goto_0
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->UNKNOWN:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;Lcom/truecaller/presence/AvailabilityContext;)Lcom/truecaller/presence/AvailabilityContext;
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
    const-string v1, "MEETING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "SLEEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "CALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 2
    :pswitch_0
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->MEETING:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->UNKNOWN:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->SLEEP:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/truecaller/presence/AvailabilityContext;->CALL:Lcom/truecaller/presence/AvailabilityContext;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f725e -> :sswitch_3
        0x4b536b7 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x62f1d61b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/presence/AvailabilityContext;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/presence/AvailabilityContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/presence/AvailabilityContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/presence/AvailabilityContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/presence/AvailabilityContext;->$VALUES:[Lcom/truecaller/presence/AvailabilityContext;

    invoke-virtual {v0}, [Lcom/truecaller/presence/AvailabilityContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/presence/AvailabilityContext;

    return-object v0
.end method


# virtual methods
.method public toGrpcContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/presence/AvailabilityContext;->mGrpcContext:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    return-object v0
.end method
