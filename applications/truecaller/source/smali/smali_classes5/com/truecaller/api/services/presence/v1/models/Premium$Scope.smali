.class public final enum Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/presence/v1/models/Premium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/presence/v1/models/Premium$Scope$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final enum CustomerSupport:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final CustomerSupport_VALUE:I = 0x5

.field public static final enum NoneScope:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final NoneScope_VALUE:I = 0x0

.field public static final enum Offerwall:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final Offerwall_VALUE:I = 0x3

.field public static final enum Other:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final Other_VALUE:I = 0x1

.field public static final enum PaidPremium:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final PaidPremium_VALUE:I = 0x2

.field public static final enum Partner:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final Partner_VALUE:I = 0x8

.field public static final enum ProCampaigns:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final ProCampaigns_VALUE:I = 0x6

.field public static final enum Promotion:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final Promotion_VALUE:I = 0x4

.field public static final enum Referrals:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final Referrals_VALUE:I = 0x7

.field public static final enum TcPay:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final TcPay_VALUE:I = 0x9

.field public static final enum TcSupport:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final TcSupport_VALUE:I = 0xa

.field public static final enum Testing:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field public static final Testing_VALUE:I = 0xb

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;",
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
    new-instance v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v1, "NoneScope"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->NoneScope:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v3, "Other"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Other:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v5, "PaidPremium"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->PaidPremium:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 4
    new-instance v5, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v7, "Offerwall"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Offerwall:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 5
    new-instance v7, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v9, "Promotion"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Promotion:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 6
    new-instance v9, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v11, "CustomerSupport"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->CustomerSupport:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 7
    new-instance v11, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v13, "ProCampaigns"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->ProCampaigns:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 8
    new-instance v13, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v15, "Referrals"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Referrals:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 9
    new-instance v15, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v14, "Partner"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Partner:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 10
    new-instance v14, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v12, "TcPay"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->TcPay:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 11
    new-instance v12, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v10, "TcSupport"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->TcSupport:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 12
    new-instance v10, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v8, "Testing"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Testing:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 13
    new-instance v8, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const-string v6, "UNRECOGNIZED"

    const/16 v4, 0xc

    const/4 v2, -0x1

    invoke-direct {v8, v6, v4, v2}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

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

    aput-object v8, v2, v4

    .line 14
    sput-object v2, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->$VALUES:[Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    .line 15
    new-instance v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Testing:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->TcSupport:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->TcPay:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Partner:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Referrals:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->ProCampaigns:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->CustomerSupport:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Promotion:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Offerwall:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->PaidPremium:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->Other:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->NoneScope:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->forNumber(I)Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->$VALUES:[Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
