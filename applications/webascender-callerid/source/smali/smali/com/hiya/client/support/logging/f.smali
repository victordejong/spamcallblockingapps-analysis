.class public final enum Lcom/hiya/client/support/logging/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/client/support/logging/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/client/support/logging/f;

.field public static final enum PROD:Lcom/hiya/client/support/logging/f;

.field public static final enum STG:Lcom/hiya/client/support/logging/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hiya/client/support/logging/f;

    new-instance v1, Lcom/hiya/client/support/logging/f;

    const-string v2, "STG"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/support/logging/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/support/logging/f;->STG:Lcom/hiya/client/support/logging/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/hiya/client/support/logging/f;

    const-string v2, "PROD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hiya/client/support/logging/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hiya/client/support/logging/f;->PROD:Lcom/hiya/client/support/logging/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hiya/client/support/logging/f;->$VALUES:[Lcom/hiya/client/support/logging/f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/client/support/logging/f;
    .locals 1

    const-class v0, Lcom/hiya/client/support/logging/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/client/support/logging/f;

    return-object p0
.end method

.method public static values()[Lcom/hiya/client/support/logging/f;
    .locals 1

    sget-object v0, Lcom/hiya/client/support/logging/f;->$VALUES:[Lcom/hiya/client/support/logging/f;

    invoke-virtual {v0}, [Lcom/hiya/client/support/logging/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/client/support/logging/f;

    return-object v0
.end method
