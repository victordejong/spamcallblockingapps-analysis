.class public final Lio/agora/rtm/jni/LOGOUT_ERR_CODE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOGOUT_ERR_NOT_INITIALIZED:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

.field public static final LOGOUT_ERR_OK:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

.field public static final LOGOUT_ERR_REJECTED:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

.field public static final LOGOUT_ERR_USER_NOT_LOGGED_IN:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

.field private static swigNext:I

.field private static swigValues:[Lio/agora/rtm/jni/LOGOUT_ERR_CODE;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    const-string v1, "LOGOUT_ERR_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_OK:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    .line 2
    new-instance v1, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    const-string v3, "LOGOUT_ERR_REJECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_REJECTED:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    .line 3
    new-instance v3, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    const-string v5, "LOGOUT_ERR_NOT_INITIALIZED"

    const/16 v6, 0x65

    invoke-direct {v3, v5, v6}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_NOT_INITIALIZED:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    .line 4
    new-instance v5, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    const-string v6, "LOGOUT_ERR_USER_NOT_LOGGED_IN"

    const/16 v7, 0x66

    invoke-direct {v5, v6, v7}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_USER_NOT_LOGGED_IN:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    const/4 v6, 0x4

    new-array v6, v6, [Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    .line 5
    sput-object v6, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValues:[Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    .line 6
    sput v2, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigNext:I

    iput p1, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/agora/rtm/jni/LOGOUT_ERR_CODE;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    iput p1, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lio/agora/rtm/jni/LOGOUT_ERR_CODE;
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValues:[Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValues:[Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v2, v1, v0

    iget v2, v2, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    if-ne v2, p0, :cond_1

    .line 5
    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_REJECTED:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    invoke-static {p0, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->swigToEnumOnError(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    return-object p0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigName:Ljava/lang/String;

    return-object v0
.end method
