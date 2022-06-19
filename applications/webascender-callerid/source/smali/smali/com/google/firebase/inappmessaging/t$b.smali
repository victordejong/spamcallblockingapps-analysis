.class public final enum Lcom/google/firebase/inappmessaging/t$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/t$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/t$b;

.field public static final enum IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/t$b;

.field public static final enum IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/t$b;

.field public static final enum IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/t$b;

.field public static final enum UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/t$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/t$b;

    const-string v1, "UNSPECIFIED_RENDER_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/t$b;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/t$b;

    .line 2
    new-instance v1, Lcom/google/firebase/inappmessaging/t$b;

    const-string v3, "IMAGE_FETCH_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/inappmessaging/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/inappmessaging/t$b;->IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/t$b;

    .line 3
    new-instance v3, Lcom/google/firebase/inappmessaging/t$b;

    const-string v5, "IMAGE_DISPLAY_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/inappmessaging/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/inappmessaging/t$b;->IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/t$b;

    .line 4
    new-instance v5, Lcom/google/firebase/inappmessaging/t$b;

    const-string v7, "IMAGE_UNSUPPORTED_FORMAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/firebase/inappmessaging/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/inappmessaging/t$b;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/t$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/firebase/inappmessaging/t$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/firebase/inappmessaging/t$b;->$VALUES:[Lcom/google/firebase/inappmessaging/t$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/t$b;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/inappmessaging/t$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/t$b;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/t$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/t$b;->$VALUES:[Lcom/google/firebase/inappmessaging/t$b;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/t$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/t$b;

    return-object v0
.end method
