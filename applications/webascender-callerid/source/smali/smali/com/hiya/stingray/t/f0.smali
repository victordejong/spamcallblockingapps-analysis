.class public final enum Lcom/hiya/stingray/t/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/t/f0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/t/f0;

.field public static final enum BLOCKED:Lcom/hiya/stingray/t/f0;

.field public static final enum DECLINED:Lcom/hiya/stingray/t/f0;

.field public static final enum INCOMING:Lcom/hiya/stingray/t/f0;

.field public static final enum MISSED:Lcom/hiya/stingray/t/f0;

.field public static final enum OUTGOING:Lcom/hiya/stingray/t/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/f0;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/t/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    new-instance v1, Lcom/hiya/stingray/t/f0;

    const-string v3, "OUTGOING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hiya/stingray/t/f0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/stingray/t/f0;->OUTGOING:Lcom/hiya/stingray/t/f0;

    new-instance v3, Lcom/hiya/stingray/t/f0;

    const-string v5, "MISSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hiya/stingray/t/f0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hiya/stingray/t/f0;->MISSED:Lcom/hiya/stingray/t/f0;

    new-instance v5, Lcom/hiya/stingray/t/f0;

    const-string v7, "DECLINED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hiya/stingray/t/f0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hiya/stingray/t/f0;->DECLINED:Lcom/hiya/stingray/t/f0;

    new-instance v7, Lcom/hiya/stingray/t/f0;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hiya/stingray/t/f0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hiya/stingray/t/f0;->BLOCKED:Lcom/hiya/stingray/t/f0;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/hiya/stingray/t/f0;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/hiya/stingray/t/f0;->$VALUES:[Lcom/hiya/stingray/t/f0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/t/f0;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/t/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/t/f0;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/t/f0;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/f0;->$VALUES:[Lcom/hiya/stingray/t/f0;

    invoke-virtual {v0}, [Lcom/hiya/stingray/t/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/t/f0;

    return-object v0
.end method
