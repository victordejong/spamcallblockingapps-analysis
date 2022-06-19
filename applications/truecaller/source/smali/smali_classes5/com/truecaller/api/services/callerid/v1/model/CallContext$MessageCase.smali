.class public final enum Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/callerid/v1/model/CallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

.field public static final enum CUSTOMMESSAGE:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

.field public static final enum MESSAGE_NOT_SET:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

.field public static final enum PREDEFINEDMESSAGE:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    const-string v1, "CUSTOMMESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->CUSTOMMESSAGE:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    const-string v4, "PREDEFINEDMESSAGE"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->PREDEFINEDMESSAGE:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    const-string v6, "MESSAGE_NOT_SET"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v2}, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->MESSAGE_NOT_SET:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    new-array v5, v5, [Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    .line 4
    sput-object v5, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->$VALUES:[Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

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
    iput p3, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->PREDEFINEDMESSAGE:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->CUSTOMMESSAGE:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->MESSAGE_NOT_SET:Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->forNumber(I)Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->$VALUES:[Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext$MessageCase;->value:I

    return v0
.end method
