.class public final enum Lcom/google/firebase/inappmessaging/display/internal/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/display/internal/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/display/internal/c$c;

.field public static final enum BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/c$c;

.field public static final enum LEFT:Lcom/google/firebase/inappmessaging/display/internal/c$c;

.field public static final enum RIGHT:Lcom/google/firebase/inappmessaging/display/internal/c$c;

.field public static final enum TOP:Lcom/google/firebase/inappmessaging/display/internal/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/c$c;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/display/internal/c$c;->LEFT:Lcom/google/firebase/inappmessaging/display/internal/c$c;

    .line 2
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/c$c;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/inappmessaging/display/internal/c$c;->RIGHT:Lcom/google/firebase/inappmessaging/display/internal/c$c;

    .line 3
    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/c$c;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/inappmessaging/display/internal/c$c;->TOP:Lcom/google/firebase/inappmessaging/display/internal/c$c;

    .line 4
    new-instance v5, Lcom/google/firebase/inappmessaging/display/internal/c$c;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/firebase/inappmessaging/display/internal/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/inappmessaging/display/internal/c$c;->BOTTOM:Lcom/google/firebase/inappmessaging/display/internal/c$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/firebase/inappmessaging/display/internal/c$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/firebase/inappmessaging/display/internal/c$c;->$VALUES:[Lcom/google/firebase/inappmessaging/display/internal/c$c;

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

.method static synthetic access$000(Lcom/google/firebase/inappmessaging/display/internal/c$c;Landroid/view/View;)Landroid/graphics/Point;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/c$c;->getPoint(Lcom/google/firebase/inappmessaging/display/internal/c$c;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static getPoint(Lcom/google/firebase/inappmessaging/display/internal/c$c;Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/display/internal/c$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    .line 3
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-direct {p0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/c$c;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/inappmessaging/display/internal/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/c$c;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/display/internal/c$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/display/internal/c$c;->$VALUES:[Lcom/google/firebase/inappmessaging/display/internal/c$c;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/display/internal/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/display/internal/c$c;

    return-object v0
.end method
