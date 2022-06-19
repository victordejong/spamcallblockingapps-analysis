.class public final Lio/agora/rtm/jni/RTM_AREA_CODE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AREA_CODE_AS:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field public static final AREA_CODE_CN:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field public static final AREA_CODE_EUR:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field public static final AREA_CODE_GLOBAL:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field public static final AREA_CODE_INDIAN:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field public static final AREA_CODE_JAPAN:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field public static final AREA_CODE_NA:Lio/agora/rtm/jni/RTM_AREA_CODE;

.field private static swigNext:I

.field private static swigValues:[Lio/agora/rtm/jni/RTM_AREA_CODE;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v1, "AREA_CODE_CN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_CN:Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 2
    new-instance v1, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v3, "AREA_CODE_NA"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_NA:Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 3
    new-instance v3, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v5, "AREA_CODE_EUR"

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_EUR:Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 4
    new-instance v5, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v7, "AREA_CODE_AS"

    const/16 v8, 0x8

    invoke-direct {v5, v7, v8}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_AS:Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 5
    new-instance v7, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v8, "AREA_CODE_JAPAN"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_JAPAN:Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 6
    new-instance v8, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v9, "AREA_CODE_INDIAN"

    const/16 v10, 0x20

    invoke-direct {v8, v9, v10}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_INDIAN:Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 7
    new-instance v9, Lio/agora/rtm/jni/RTM_AREA_CODE;

    const-string v10, "AREA_CODE_GLOBAL"

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Lio/agora/rtm/jni/RTM_AREA_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/agora/rtm/jni/RTM_AREA_CODE;->AREA_CODE_GLOBAL:Lio/agora/rtm/jni/RTM_AREA_CODE;

    const/4 v10, 0x7

    new-array v10, v10, [Lio/agora/rtm/jni/RTM_AREA_CODE;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    aput-object v1, v10, v2

    aput-object v3, v10, v4

    const/4 v0, 0x3

    aput-object v5, v10, v0

    aput-object v7, v10, v6

    const/4 v0, 0x5

    aput-object v8, v10, v0

    const/4 v0, 0x6

    aput-object v9, v10, v0

    .line 8
    sput-object v10, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValues:[Lio/agora/rtm/jni/RTM_AREA_CODE;

    .line 9
    sput v11, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigNext:I

    iput p1, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/agora/rtm/jni/RTM_AREA_CODE;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

    iput p1, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lio/agora/rtm/jni/RTM_AREA_CODE;
    .locals 3

    .line 1
    sget-object v0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValues:[Lio/agora/rtm/jni/RTM_AREA_CODE;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValues:[Lio/agora/rtm/jni/RTM_AREA_CODE;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    aget-object v2, v1, v0

    iget v2, v2, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

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

    const-class v2, Lio/agora/rtm/jni/RTM_AREA_CODE;

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
    iget v0, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/jni/RTM_AREA_CODE;->swigName:Ljava/lang/String;

    return-object v0
.end method
