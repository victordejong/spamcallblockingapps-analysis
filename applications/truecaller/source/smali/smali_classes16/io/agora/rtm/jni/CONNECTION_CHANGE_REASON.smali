.class public final Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECTION_CHANGE_REASON_BANNED_BY_SERVER:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_INTERRUPTED:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_LOGIN:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_LOGIN_FAILURE:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_LOGIN_SUCCESS:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_LOGIN_TIMEOUT:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_LOGOUT:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field public static final CONNECTION_CHANGE_REASON_REMOTE_LOGIN:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

.field private static swigNext:I

.field private static swigValues:[Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v1, "CONNECTION_CHANGE_REASON_LOGIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_LOGIN:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 2
    new-instance v1, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v3, "CONNECTION_CHANGE_REASON_LOGIN_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_LOGIN_SUCCESS:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 3
    new-instance v3, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v5, "CONNECTION_CHANGE_REASON_LOGIN_FAILURE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_LOGIN_FAILURE:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 4
    new-instance v5, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v7, "CONNECTION_CHANGE_REASON_LOGIN_TIMEOUT"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_LOGIN_TIMEOUT:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 5
    new-instance v7, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v9, "CONNECTION_CHANGE_REASON_INTERRUPTED"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v10}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_INTERRUPTED:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 6
    new-instance v9, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v11, "CONNECTION_CHANGE_REASON_LOGOUT"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v12}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_LOGOUT:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 7
    new-instance v11, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v13, "CONNECTION_CHANGE_REASON_BANNED_BY_SERVER"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v14}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_BANNED_BY_SERVER:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 8
    new-instance v13, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const-string v15, "CONNECTION_CHANGE_REASON_REMOTE_LOGIN"

    const/16 v14, 0x8

    invoke-direct {v13, v15, v14}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->CONNECTION_CHANGE_REASON_REMOTE_LOGIN:Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    new-array v14, v14, [Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    aput-object v1, v14, v2

    aput-object v3, v14, v4

    aput-object v5, v14, v6

    aput-object v7, v14, v8

    aput-object v9, v14, v10

    aput-object v11, v14, v12

    const/4 v0, 0x7

    aput-object v13, v14, v0

    .line 9
    sput-object v14, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValues:[Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    .line 10
    sput v15, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigNext:I

    iput p1, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

    iput p1, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValues:[Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValues:[Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v2, v1, v0

    iget v2, v2, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

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

    const-class v2, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

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
    iget v0, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigName:Ljava/lang/String;

    return-object v0
.end method
