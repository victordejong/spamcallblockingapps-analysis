.class public final Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;",
        "Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AVAILABILITY_FIELD_NUMBER:I = 0x1

.field public static final CALLCONTEXT_FIELD_NUMBER:I = 0x9

.field public static final COVID_MEDICAL_SUPPLY_FIELD_NUMBER:I = 0xb

.field public static final CRED_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

.field public static final FLASH_FIELD_NUMBER:I = 0x2

.field public static final IM_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_FIELD_NUMBER:I = 0x8

.field public static final PREMIUM_FIELD_NUMBER:I = 0x7

.field public static final REFERRAL_FIELD_NUMBER:I = 0x3

.field public static final UPDATELASTSEEN_FIELD_NUMBER:I = 0x5

.field public static final VIDEO_CALLER_ID_FIELD_NUMBER:I = 0xc

.field public static final VOIP_FIELD_NUMBER:I = 0x6


# instance fields
.field private availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

.field private callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

.field private covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

.field private cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

.field private flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

.field private im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

.field private payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

.field private premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

.field private referral_:Lcom/google/protobuf/StringValue;

.field private updateLastSeen_:Z

.field private videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

.field private voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-direct {v0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    .line 3
    const-class v1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setUpdateLastSeen(Z)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Flash;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeFlash(Lcom/truecaller/api/services/presence/v1/models/Flash;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearFlash()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setIm(Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeIm(Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearIm()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Voip;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setVoip(Lcom/truecaller/api/services/presence/v1/models/Voip;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Voip;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeVoip(Lcom/truecaller/api/services/presence/v1/models/Voip;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearVoip()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Premium;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setPremium(Lcom/truecaller/api/services/presence/v1/models/Premium;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Premium;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergePremium(Lcom/truecaller/api/services/presence/v1/models/Premium;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearUpdateLastSeen()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearPremium()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Payment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setPayment(Lcom/truecaller/api/services/presence/v1/models/Payment;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Payment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergePayment(Lcom/truecaller/api/services/presence/v1/models/Payment;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearPayment()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/CallContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setCallContext(Lcom/truecaller/api/services/presence/v1/models/CallContext;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/CallContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeCallContext(Lcom/truecaller/api/services/presence/v1/models/CallContext;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearCallContext()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Cred;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setCred(Lcom/truecaller/api/services/presence/v1/models/Cred;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Cred;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeCred(Lcom/truecaller/api/services/presence/v1/models/Cred;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearCred()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/google/protobuf/StringValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setReferral(Lcom/google/protobuf/StringValue;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setCovidMedicalSupply(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeCovidMedicalSupply(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearCovidMedicalSupply()V

    return-void
.end method

.method public static synthetic access$3300(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setVideoCallerId(Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeVideoCallerId(Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearVideoCallerId()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/google/protobuf/StringValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeReferral(Lcom/google/protobuf/StringValue;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearReferral()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Availability;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setAvailability(Lcom/truecaller/api/services/presence/v1/models/Availability;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Availability;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->mergeAvailability(Lcom/truecaller/api/services/presence/v1/models/Availability;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->clearAvailability()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;Lcom/truecaller/api/services/presence/v1/models/Flash;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->setFlash(Lcom/truecaller/api/services/presence/v1/models/Flash;)V

    return-void
.end method

.method private clearAvailability()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    return-void
.end method

.method private clearCallContext()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    return-void
.end method

.method private clearCovidMedicalSupply()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    return-void
.end method

.method private clearCred()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    return-void
.end method

.method private clearFlash()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    return-void
.end method

.method private clearIm()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    return-void
.end method

.method private clearPayment()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    return-void
.end method

.method private clearPremium()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    return-void
.end method

.method private clearReferral()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    return-void
.end method

.method private clearUpdateLastSeen()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->updateLastSeen_:Z

    return-void
.end method

.method private clearVideoCallerId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    return-void
.end method

.method private clearVoip()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object v0
.end method

.method private mergeAvailability(Lcom/truecaller/api/services/presence/v1/models/Availability;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Availability;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/Availability;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/Availability;)Lcom/truecaller/api/services/presence/v1/models/Availability$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Availability$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Availability;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    :goto_0
    return-void
.end method

.method private mergeCallContext(Lcom/truecaller/api/services/presence/v1/models/CallContext;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/CallContext;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/CallContext;)Lcom/truecaller/api/services/presence/v1/models/CallContext$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/CallContext$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/CallContext;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    :goto_0
    return-void
.end method

.method private mergeCovidMedicalSupply(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    :goto_0
    return-void
.end method

.method private mergeCred(Lcom/truecaller/api/services/presence/v1/models/Cred;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Cred;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Cred;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/Cred;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/Cred;)Lcom/truecaller/api/services/presence/v1/models/Cred$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Cred$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Cred;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    :goto_0
    return-void
.end method

.method private mergeFlash(Lcom/truecaller/api/services/presence/v1/models/Flash;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Flash;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/Flash;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/Flash;)Lcom/truecaller/api/services/presence/v1/models/Flash$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Flash$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Flash;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    :goto_0
    return-void
.end method

.method private mergeIm(Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)Lcom/truecaller/api/services/presence/v1/models/InstantMessaging$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    :goto_0
    return-void
.end method

.method private mergePayment(Lcom/truecaller/api/services/presence/v1/models/Payment;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Payment;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Payment;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/Payment;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/Payment;)Lcom/truecaller/api/services/presence/v1/models/Payment$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Payment$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Payment;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    :goto_0
    return-void
.end method

.method private mergePremium(Lcom/truecaller/api/services/presence/v1/models/Premium;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Premium;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/Premium;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/Premium;)Lcom/truecaller/api/services/presence/v1/models/Premium$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Premium$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Premium;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    :goto_0
    return-void
.end method

.method private mergeReferral(Lcom/google/protobuf/StringValue;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/StringValue;->getDefaultInstance()Lcom/google/protobuf/StringValue;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/StringValue;->newBuilder(Lcom/google/protobuf/StringValue;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/StringValue$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/StringValue;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    :goto_0
    return-void
.end method

.method private mergeVideoCallerId(Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)Lcom/truecaller/api/services/presence/v1/models/VideoCallerID$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    :goto_0
    return-void
.end method

.method private mergeVoip(Lcom/truecaller/api/services/presence/v1/models/Voip;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Voip;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/Voip;->newBuilder(Lcom/truecaller/api/services/presence/v1/models/Voip;)Lcom/truecaller/api/services/presence/v1/models/Voip$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Voip$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/presence/v1/models/Voip;

    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAvailability(Lcom/truecaller/api/services/presence/v1/models/Availability;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    return-void
.end method

.method private setCallContext(Lcom/truecaller/api/services/presence/v1/models/CallContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    return-void
.end method

.method private setCovidMedicalSupply(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    return-void
.end method

.method private setCred(Lcom/truecaller/api/services/presence/v1/models/Cred;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    return-void
.end method

.method private setFlash(Lcom/truecaller/api/services/presence/v1/models/Flash;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    return-void
.end method

.method private setIm(Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    return-void
.end method

.method private setPayment(Lcom/truecaller/api/services/presence/v1/models/Payment;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    return-void
.end method

.method private setPremium(Lcom/truecaller/api/services/presence/v1/models/Premium;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    return-void
.end method

.method private setReferral(Lcom/google/protobuf/StringValue;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    return-void
.end method

.method private setUpdateLastSeen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->updateLastSeen_:Z

    return-void
.end method

.method private setVideoCallerId(Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    return-void
.end method

.method private setVoip(Lcom/truecaller/api/services/presence/v1/models/Voip;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "availability_"

    aput-object v0, p1, p3

    const-string p3, "flash_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "referral_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "im_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "updateLastSeen_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "voip_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "premium_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "payment_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "callContext_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "cred_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "covidMedicalSupply_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "videoCallerId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0000\u0000\u0001\u000c\u000c\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\u0007\u0006\t\u0007\t\u0008\t\t\t\n\t\u000b\t\u000c\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$b;-><init>(Lcom/truecaller/api/services/presence/v1/SetPresenceRequest$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;

    invoke-direct {p1}, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getAvailability()Lcom/truecaller/api/services/presence/v1/models/Availability;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Availability;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCallContext()Lcom/truecaller/api/services/presence/v1/models/CallContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/CallContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCovidMedicalSupply()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCred()Lcom/truecaller/api/services/presence/v1/models/Cred;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Cred;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Cred;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFlash()Lcom/truecaller/api/services/presence/v1/models/Flash;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Flash;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIm()Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPayment()Lcom/truecaller/api/services/presence/v1/models/Payment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Payment;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Payment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPremium()Lcom/truecaller/api/services/presence/v1/models/Premium;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Premium;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReferral()Lcom/google/protobuf/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/StringValue;->getDefaultInstance()Lcom/google/protobuf/StringValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpdateLastSeen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->updateLastSeen_:Z

    return v0
.end method

.method public getVideoCallerId()Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVoip()Lcom/truecaller/api/services/presence/v1/models/Voip;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/Voip;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAvailability()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->availability_:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCallContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->callContext_:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCovidMedicalSupply()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->covidMedicalSupply_:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCred()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->cred_:Lcom/truecaller/api/services/presence/v1/models/Cred;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFlash()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->flash_:Lcom/truecaller/api/services/presence/v1/models/Flash;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->im_:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPayment()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->payment_:Lcom/truecaller/api/services/presence/v1/models/Payment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPremium()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->premium_:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReferral()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->referral_:Lcom/google/protobuf/StringValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideoCallerId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->videoCallerId_:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/presence/v1/SetPresenceRequest;->voip_:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
