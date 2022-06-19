.class public final Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEAVE_CHANNEL_ERR_FAILURE:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

.field public static final LEAVE_CHANNEL_ERR_NOT_INITIALIZED:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

.field public static final LEAVE_CHANNEL_ERR_NOT_IN_CHANNEL:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

.field public static final LEAVE_CHANNEL_ERR_OK:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

.field public static final LEAVE_CHANNEL_ERR_REJECTED:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

.field public static final LEAVE_CHANNEL_ERR_USER_NOT_LOGGED_IN:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

.field private static swigNext:I

.field private static swigValues:[Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const-string v1, "LEAVE_CHANNEL_ERR_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_OK:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 2
    new-instance v1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const-string v3, "LEAVE_CHANNEL_ERR_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_FAILURE:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 3
    new-instance v3, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const-string v5, "LEAVE_CHANNEL_ERR_REJECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_REJECTED:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 4
    new-instance v5, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const-string v7, "LEAVE_CHANNEL_ERR_NOT_IN_CHANNEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_NOT_IN_CHANNEL:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 5
    new-instance v7, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const-string v9, "LEAVE_CHANNEL_ERR_NOT_INITIALIZED"

    const/16 v10, 0x65

    invoke-direct {v7, v9, v10}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_NOT_INITIALIZED:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 6
    new-instance v9, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const-string v10, "LEAVE_CHANNEL_ERR_USER_NOT_LOGGED_IN"

    const/16 v11, 0x66

    invoke-direct {v9, v10, v11}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_USER_NOT_LOGGED_IN:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    const/4 v10, 0x6

    new-array v10, v10, [Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    .line 7
    sput-object v10, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValues:[Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 8
    sput v2, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigNext:I

    iput p1, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    iput p1, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValues:[Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValues:[Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v2, v1, v0

    iget v2, v2, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 5
    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_FAILURE:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    invoke-static {p0, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->swigToEnumOnError(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    return-object p0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigName:Ljava/lang/String;

    return-object v0
.end method
