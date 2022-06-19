.class public final enum Lcom/hiya/stingray/util/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/util/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/util/i$a;

.field public static final enum INCOMING:Lcom/hiya/stingray/util/i$a;

.field public static final enum OUTGOING:Lcom/hiya/stingray/util/i$a;

.field public static final enum UNKNOWN:Lcom/hiya/stingray/util/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/i$a;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/util/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    new-instance v1, Lcom/hiya/stingray/util/i$a;

    const-string v3, "OUTGOING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/util/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    new-instance v3, Lcom/hiya/stingray/util/i$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/util/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/util/i$a;->UNKNOWN:Lcom/hiya/stingray/util/i$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hiya/stingray/util/i$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/hiya/stingray/util/i$a;->$VALUES:[Lcom/hiya/stingray/util/i$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/util/i$a;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/util/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/util/i$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/util/i$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/util/i$a;->$VALUES:[Lcom/hiya/stingray/util/i$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/util/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/util/i$a;

    return-object v0
.end method
