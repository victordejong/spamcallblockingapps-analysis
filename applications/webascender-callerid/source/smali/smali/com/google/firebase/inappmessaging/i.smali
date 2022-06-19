.class public final enum Lcom/google/firebase/inappmessaging/i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/i;",
        ">;",
        "Lcom/google/protobuf/a0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/i;

.field public static final enum AUTO:Lcom/google/firebase/inappmessaging/i;

.field public static final AUTO_VALUE:I = 0x1

.field public static final enum CLICK:Lcom/google/firebase/inappmessaging/i;

.field public static final CLICK_VALUE:I = 0x2

.field public static final enum SWIPE:Lcom/google/firebase/inappmessaging/i;

.field public static final SWIPE_VALUE:I = 0x3

.field public static final enum UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/i;

.field public static final UNKNOWN_DISMISS_TYPE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$d<",
            "Lcom/google/firebase/inappmessaging/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/i;

    const-string v1, "UNKNOWN_DISMISS_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/i;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/i;

    .line 2
    new-instance v1, Lcom/google/firebase/inappmessaging/i;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/firebase/inappmessaging/i;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/i;->AUTO:Lcom/google/firebase/inappmessaging/i;

    .line 3
    new-instance v3, Lcom/google/firebase/inappmessaging/i;

    const-string v5, "CLICK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/firebase/inappmessaging/i;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/inappmessaging/i;->CLICK:Lcom/google/firebase/inappmessaging/i;

    .line 4
    new-instance v5, Lcom/google/firebase/inappmessaging/i;

    const-string v7, "SWIPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/firebase/inappmessaging/i;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firebase/inappmessaging/i;->SWIPE:Lcom/google/firebase/inappmessaging/i;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/firebase/inappmessaging/i;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/firebase/inappmessaging/i;->$VALUES:[Lcom/google/firebase/inappmessaging/i;

    .line 6
    new-instance v0, Lcom/google/firebase/inappmessaging/i$a;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/i$a;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/i;->internalValueMap:Lcom/google/protobuf/a0$d;

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
    iput p3, p0, Lcom/google/firebase/inappmessaging/i;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/i;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/firebase/inappmessaging/i;->SWIPE:Lcom/google/firebase/inappmessaging/i;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/firebase/inappmessaging/i;->CLICK:Lcom/google/firebase/inappmessaging/i;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/firebase/inappmessaging/i;->AUTO:Lcom/google/firebase/inappmessaging/i;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/firebase/inappmessaging/i;->UNKNOWN_DISMISS_TYPE:Lcom/google/firebase/inappmessaging/i;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/a0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a0$d<",
            "Lcom/google/firebase/inappmessaging/i;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/i;->internalValueMap:Lcom/google/protobuf/a0$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/a0$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/i$b;->a:Lcom/google/protobuf/a0$e;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/i;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/i;->forNumber(I)Lcom/google/firebase/inappmessaging/i;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/i;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/inappmessaging/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/i;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/i;->$VALUES:[Lcom/google/firebase/inappmessaging/i;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/i;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/inappmessaging/i;->value:I

    return v0
.end method
