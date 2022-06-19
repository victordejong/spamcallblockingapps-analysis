.class public final enum Lcom/truecaller/common/ui/tooltip/TooltipDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/common/ui/tooltip/TooltipDirection;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/common/ui/tooltip/TooltipDirection;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "START",
        "TOP",
        "END",
        "BOTTOM",
        "LEFT",
        "RIGHT",
        "TOP_END",
        "TOP_RIGHT",
        "TOP_LEFT",
        "TOP_FAR_END",
        "TOP_FAR_RIGHT",
        "TOP_FAR_LEFT",
        "BOTTOM_END",
        "BOTTOM_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_START",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum BOTTOM:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum BOTTOM_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum BOTTOM_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum BOTTOM_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum BOTTOM_START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP_FAR_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP_FAR_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP_FAR_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

.field public static final enum TOP_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "START"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "END"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "BOTTOM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "LEFT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "RIGHT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP_END"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP_RIGHT"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP_LEFT"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP_FAR_END"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_FAR_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP_FAR_RIGHT"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_FAR_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "TOP_FAR_LEFT"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_FAR_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "BOTTOM_END"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "BOTTOM_RIGHT"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "BOTTOM_LEFT"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const-string v2, "BOTTOM_START"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/tooltip/TooltipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->$VALUES:[Lcom/truecaller/common/ui/tooltip/TooltipDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/common/ui/tooltip/TooltipDirection;
    .locals 1

    const-class v0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/common/ui/tooltip/TooltipDirection;
    .locals 1

    sget-object v0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->$VALUES:[Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    invoke-virtual {v0}, [Lcom/truecaller/common/ui/tooltip/TooltipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    return-object v0
.end method
