.class public final Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PEER_SUBSCRIPTION_OPTION_ONLINE_STATUS:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

.field private static swigNext:I

.field private static swigValues:[Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    const-string v1, "PEER_SUBSCRIPTION_OPTION_ONLINE_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->PEER_SUBSCRIPTION_OPTION_ONLINE_STATUS:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValues:[Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    .line 3
    sput v2, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigNext:I

    iput p1, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    iput p1, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValues:[Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValues:[Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v2, v1, v0

    iget v2, v2, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 5
    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigName:Ljava/lang/String;

    return-object v0
.end method
