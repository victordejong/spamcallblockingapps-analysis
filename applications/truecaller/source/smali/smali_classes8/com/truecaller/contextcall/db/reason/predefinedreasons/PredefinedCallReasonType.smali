.class public final enum Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Predefined",
        "SecondCall",
        "MidCall",
        "MissedCall",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

.field public static final enum MidCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

.field public static final enum MissedCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

.field public static final enum Predefined:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

.field public static final enum SecondCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    new-instance v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    const-string v2, "Predefined"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->Predefined:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    const-string v2, "SecondCall"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->SecondCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    const-string v2, "MidCall"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MidCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    const-string v2, "MissedCall"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MissedCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->$VALUES:[Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

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

    iput p3, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;
    .locals 1

    const-class v0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;
    .locals 1

    sget-object v0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->$VALUES:[Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-virtual {v0}, [Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->value:I

    return v0
.end method
