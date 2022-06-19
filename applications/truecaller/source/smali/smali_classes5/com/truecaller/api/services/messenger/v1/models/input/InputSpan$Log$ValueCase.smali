.class public final enum Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

.field public static final enum TEXT:Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

.field public static final enum VALUE_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->TEXT:Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    const-string v4, "VALUE_NOT_SET"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->VALUE_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    new-array v3, v3, [Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 3
    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->TEXT:Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->VALUE_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputSpan$Log$ValueCase;->value:I

    return v0
.end method
