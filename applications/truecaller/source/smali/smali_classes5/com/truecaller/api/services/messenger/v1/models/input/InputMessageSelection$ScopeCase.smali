.class public final enum Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScopeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

.field public static final enum MARKED:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

.field public static final enum PEER:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

.field public static final enum SCOPE_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    const-string v1, "MARKED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->MARKED:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    const-string v4, "PEER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->PEER:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    const-string v6, "SCOPE_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->SCOPE_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->PEER:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->MARKED:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->SCOPE_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->value:I

    return v0
.end method
