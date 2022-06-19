.class public final enum Lg/g/b/c/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/b/c/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/b/c/l;

.field public static final enum BLOCK_EVENT:Lg/g/b/c/l;

.field public static final enum PHONE_CALL:Lg/g/b/c/l;

.field public static final enum TEXT_MESSAGE:Lg/g/b/c/l;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lg/g/b/c/l;

    new-instance v1, Lg/g/b/c/l;

    const-string v2, "PHONE_CALL"

    const/4 v3, 0x0

    const-string v4, "EventProfileCallEvent"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lg/g/b/c/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/c/l;->PHONE_CALL:Lg/g/b/c/l;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/l;

    const-string v2, "TEXT_MESSAGE"

    const/4 v3, 0x1

    const-string v4, "EventProfileTextEvent"

    invoke-direct {v1, v2, v3, v4}, Lg/g/b/c/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/c/l;->TEXT_MESSAGE:Lg/g/b/c/l;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/b/c/l;

    const-string v2, "BLOCK_EVENT"

    const/4 v3, 0x2

    const-string v4, "EventProfileBlockEvent"

    invoke-direct {v1, v2, v3, v4}, Lg/g/b/c/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/g/b/c/l;->BLOCK_EVENT:Lg/g/b/c/l;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/b/c/l;->$VALUES:[Lg/g/b/c/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/g/b/c/l;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/g/b/c/l;
    .locals 1

    const-class v0, Lg/g/b/c/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/b/c/l;

    return-object p0
.end method

.method public static values()[Lg/g/b/c/l;
    .locals 1

    sget-object v0, Lg/g/b/c/l;->$VALUES:[Lg/g/b/c/l;

    invoke-virtual {v0}, [Lg/g/b/c/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/b/c/l;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/l;->value:Ljava/lang/String;

    return-object v0
.end method
