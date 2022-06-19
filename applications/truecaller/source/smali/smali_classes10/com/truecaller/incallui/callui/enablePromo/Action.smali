.class public final enum Lcom/truecaller/incallui/callui/enablePromo/Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/incallui/callui/enablePromo/Action;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/incallui/callui/enablePromo/Action;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "DialogShown",
        "NegativeBtnClicked",
        "PositiveBtnClicked",
        "DefaultDialerRejected",
        "InCallUIEnabled",
        "DialogCancelled",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/incallui/callui/enablePromo/Action;

.field public static final enum DefaultDialerRejected:Lcom/truecaller/incallui/callui/enablePromo/Action;

.field public static final enum DialogCancelled:Lcom/truecaller/incallui/callui/enablePromo/Action;

.field public static final enum DialogShown:Lcom/truecaller/incallui/callui/enablePromo/Action;

.field public static final enum InCallUIEnabled:Lcom/truecaller/incallui/callui/enablePromo/Action;

.field public static final enum NegativeBtnClicked:Lcom/truecaller/incallui/callui/enablePromo/Action;

.field public static final enum PositiveBtnClicked:Lcom/truecaller/incallui/callui/enablePromo/Action;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/incallui/callui/enablePromo/Action;

    new-instance v1, Lcom/truecaller/incallui/callui/enablePromo/Action;

    const-string v2, "DialogShown"

    const/4 v3, 0x0

    const-string v4, "Shown"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/incallui/callui/enablePromo/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/incallui/callui/enablePromo/Action;->DialogShown:Lcom/truecaller/incallui/callui/enablePromo/Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/enablePromo/Action;

    const-string v2, "NegativeBtnClicked"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/incallui/callui/enablePromo/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/incallui/callui/enablePromo/Action;->NegativeBtnClicked:Lcom/truecaller/incallui/callui/enablePromo/Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/enablePromo/Action;

    const-string v2, "PositiveBtnClicked"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/incallui/callui/enablePromo/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/incallui/callui/enablePromo/Action;->PositiveBtnClicked:Lcom/truecaller/incallui/callui/enablePromo/Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/enablePromo/Action;

    const-string v2, "DefaultDialerRejected"

    const/4 v3, 0x3

    const-string v4, "Disabled"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/incallui/callui/enablePromo/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/incallui/callui/enablePromo/Action;->DefaultDialerRejected:Lcom/truecaller/incallui/callui/enablePromo/Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/enablePromo/Action;

    const-string v2, "InCallUIEnabled"

    const/4 v3, 0x4

    const-string v4, "Enabled"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/incallui/callui/enablePromo/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/incallui/callui/enablePromo/Action;->InCallUIEnabled:Lcom/truecaller/incallui/callui/enablePromo/Action;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/enablePromo/Action;

    const-string v2, "DialogCancelled"

    const/4 v3, 0x5

    .line 6
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/incallui/callui/enablePromo/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/incallui/callui/enablePromo/Action;->DialogCancelled:Lcom/truecaller/incallui/callui/enablePromo/Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/incallui/callui/enablePromo/Action;->$VALUES:[Lcom/truecaller/incallui/callui/enablePromo/Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/incallui/callui/enablePromo/Action;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/incallui/callui/enablePromo/Action;
    .locals 1

    const-class v0, Lcom/truecaller/incallui/callui/enablePromo/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/incallui/callui/enablePromo/Action;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/incallui/callui/enablePromo/Action;
    .locals 1

    sget-object v0, Lcom/truecaller/incallui/callui/enablePromo/Action;->$VALUES:[Lcom/truecaller/incallui/callui/enablePromo/Action;

    invoke-virtual {v0}, [Lcom/truecaller/incallui/callui/enablePromo/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/incallui/callui/enablePromo/Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/enablePromo/Action;->value:Ljava/lang/String;

    return-object v0
.end method
