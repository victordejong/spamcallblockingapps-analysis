.class public final enum Lcom/truecaller/calling/dialer/util/CallLogViewState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/calling/dialer/util/CallLogViewState;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/util/CallLogViewState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VISIBLE",
        "INVISIBLE",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/calling/dialer/util/CallLogViewState;

.field public static final enum INVISIBLE:Lcom/truecaller/calling/dialer/util/CallLogViewState;

.field public static final enum VISIBLE:Lcom/truecaller/calling/dialer/util/CallLogViewState;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/calling/dialer/util/CallLogViewState;

    new-instance v1, Lcom/truecaller/calling/dialer/util/CallLogViewState;

    const-string v2, "VISIBLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/dialer/util/CallLogViewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/dialer/util/CallLogViewState;->VISIBLE:Lcom/truecaller/calling/dialer/util/CallLogViewState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/dialer/util/CallLogViewState;

    const-string v2, "INVISIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/calling/dialer/util/CallLogViewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/calling/dialer/util/CallLogViewState;->INVISIBLE:Lcom/truecaller/calling/dialer/util/CallLogViewState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/calling/dialer/util/CallLogViewState;->$VALUES:[Lcom/truecaller/calling/dialer/util/CallLogViewState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/calling/dialer/util/CallLogViewState;
    .locals 1

    const-class v0, Lcom/truecaller/calling/dialer/util/CallLogViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/calling/dialer/util/CallLogViewState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/calling/dialer/util/CallLogViewState;
    .locals 1

    sget-object v0, Lcom/truecaller/calling/dialer/util/CallLogViewState;->$VALUES:[Lcom/truecaller/calling/dialer/util/CallLogViewState;

    invoke-virtual {v0}, [Lcom/truecaller/calling/dialer/util/CallLogViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/calling/dialer/util/CallLogViewState;

    return-object v0
.end method
