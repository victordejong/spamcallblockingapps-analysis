.class public final enum Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TitleInfoCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

.field public static final enum TITLE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

.field public static final enum TITLEINFO_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

.field public static final enum TITLEUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    const-string v4, "TITLEUNCHANGED"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    const-string v6, "TITLEINFO_NOT_SET"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEINFO_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    new-array v5, v5, [Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    .line 4
    sput-object v5, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;
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
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEINFO_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->value:I

    return v0
.end method
