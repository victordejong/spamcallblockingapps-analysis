.class public final enum Lcom/hiya/stingray/t/o0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/o0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/o0;

.field public static final enum API:Lcom/hiya/stingray/t/o0;

.field public static final enum CONTACT:Lcom/hiya/stingray/t/o0;

.field public static final enum DB_API:Lcom/hiya/stingray/t/o0;

.field public static final enum SCREENER:Lcom/hiya/stingray/t/o0;

.field public static final enum UNAVAILABLE:Lcom/hiya/stingray/t/o0;

.field public static final enum VOICEMAIL:Lcom/hiya/stingray/t/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hiya/stingray/t/o0;

    new-instance v1, Lcom/hiya/stingray/t/o0;

    const-string v2, "API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/o0;->API:Lcom/hiya/stingray/t/o0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/o0;

    const-string v2, "CONTACT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/o0;

    const-string v2, "DB_API"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/o0;->DB_API:Lcom/hiya/stingray/t/o0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/o0;

    const-string v2, "SCREENER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/o0;->SCREENER:Lcom/hiya/stingray/t/o0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/o0;

    const-string v2, "UNAVAILABLE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/o0;->UNAVAILABLE:Lcom/hiya/stingray/t/o0;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/stingray/t/o0;

    const-string v2, "VOICEMAIL"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/t/o0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/o0;->VOICEMAIL:Lcom/hiya/stingray/t/o0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/stingray/t/o0;->$VALUES:[Lcom/hiya/stingray/t/o0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/o0;
    .locals 1

    const-class v0, Lcom/hiya/stingray/t/o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/o0;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/o0;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/t/o0;->$VALUES:[Lcom/hiya/stingray/t/o0;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/o0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/o0;

    return-object v0
.end method
