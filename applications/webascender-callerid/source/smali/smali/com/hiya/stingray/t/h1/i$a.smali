.class public final enum Lcom/hiya/stingray/t/h1/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/h1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/h1/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/h1/i$a;

.field public static final enum GPS:Lcom/hiya/stingray/t/h1/i$a;

.field public static final enum MAP:Lcom/hiya/stingray/t/h1/i$a;

.field public static final enum RECENT:Lcom/hiya/stingray/t/h1/i$a;

.field public static final enum SEARCH:Lcom/hiya/stingray/t/h1/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hiya/stingray/t/h1/i$a;

    new-instance v1, Lcom/hiya/stingray/t/h1/i$a;

    const-string v2, "GPS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/i$a;->GPS:Lcom/hiya/stingray/t/h1/i$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/i$a;

    const-string v2, "MAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/i$a;->MAP:Lcom/hiya/stingray/t/h1/i$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/i$a;

    const-string v2, "RECENT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/i$a;->RECENT:Lcom/hiya/stingray/t/h1/i$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/h1/i$a;

    const-string v2, "SEARCH"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/h1/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/h1/i$a;->SEARCH:Lcom/hiya/stingray/t/h1/i$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/h1/i$a;->$VALUES:[Lcom/hiya/stingray/t/h1/i$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/h1/i$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/h1/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/h1/i$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/h1/i$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/h1/i$a;->$VALUES:[Lcom/hiya/stingray/t/h1/i$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/h1/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/h1/i$a;

    return-object v0
.end method
