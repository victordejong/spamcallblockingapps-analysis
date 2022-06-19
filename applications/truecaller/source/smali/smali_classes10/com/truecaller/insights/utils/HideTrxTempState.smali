.class public final enum Lcom/truecaller/insights/utils/HideTrxTempState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/utils/HideTrxTempState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/insights/utils/HideTrxTempState;",
        "",
        "",
        "isDefault",
        "()Z",
        "isShown",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DEFAULT",
        "SHOWN",
        "HIDDEN",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/utils/HideTrxTempState;

.field public static final enum DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

.field public static final enum HIDDEN:Lcom/truecaller/insights/utils/HideTrxTempState;

.field public static final enum SHOWN:Lcom/truecaller/insights/utils/HideTrxTempState;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/insights/utils/HideTrxTempState;

    new-instance v1, Lcom/truecaller/insights/utils/HideTrxTempState;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/utils/HideTrxTempState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/HideTrxTempState;

    const-string v2, "SHOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/utils/HideTrxTempState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->SHOWN:Lcom/truecaller/insights/utils/HideTrxTempState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/HideTrxTempState;

    const-string v2, "HIDDEN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/utils/HideTrxTempState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->HIDDEN:Lcom/truecaller/insights/utils/HideTrxTempState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->$VALUES:[Lcom/truecaller/insights/utils/HideTrxTempState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/utils/HideTrxTempState;
    .locals 1

    const-class v0, Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/utils/HideTrxTempState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/utils/HideTrxTempState;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->$VALUES:[Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-virtual {v0}, [Lcom/truecaller/insights/utils/HideTrxTempState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/utils/HideTrxTempState;

    return-object v0
.end method


# virtual methods
.method public final isDefault()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShown()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/insights/utils/HideTrxTempState;->SHOWN:Lcom/truecaller/insights/utils/HideTrxTempState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
