.class public final enum Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

.field public static final enum ACTION_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

.field public static final enum REPLY:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    const-string v1, "REPLY"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->REPLY:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    const-string v3, "ACTION_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->ACTION_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->REPLY:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->ACTION_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$QuickAction$ActionCase;->value:I

    return v0
.end method
