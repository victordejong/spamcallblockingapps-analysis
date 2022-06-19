.class public final enum Lcom/truecaller/insights/models/pdo/ClassifierType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/models/pdo/ClassifierType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/models/pdo/ClassifierType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "a",
        "DEFAULT",
        "MODEL",
        "PARSER",
        "USER",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/models/pdo/ClassifierType;

.field public static final Companion:Lcom/truecaller/insights/models/pdo/ClassifierType$a;

.field public static final enum DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field public static final enum MODEL:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field public static final enum PARSER:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field public static final enum USER:Lcom/truecaller/insights/models/pdo/ClassifierType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/insights/models/pdo/ClassifierType;

    new-instance v1, Lcom/truecaller/insights/models/pdo/ClassifierType;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/models/pdo/ClassifierType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/pdo/ClassifierType;

    const-string v2, "MODEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/insights/models/pdo/ClassifierType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/models/pdo/ClassifierType;->MODEL:Lcom/truecaller/insights/models/pdo/ClassifierType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/pdo/ClassifierType;

    const-string v2, "PARSER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/insights/models/pdo/ClassifierType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/models/pdo/ClassifierType;->PARSER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/models/pdo/ClassifierType;

    const-string v2, "USER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/insights/models/pdo/ClassifierType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/models/pdo/ClassifierType;->$VALUES:[Lcom/truecaller/insights/models/pdo/ClassifierType;

    new-instance v0, Lcom/truecaller/insights/models/pdo/ClassifierType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/insights/models/pdo/ClassifierType$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/insights/models/pdo/ClassifierType;->Companion:Lcom/truecaller/insights/models/pdo/ClassifierType$a;

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

    iput p3, p0, Lcom/truecaller/insights/models/pdo/ClassifierType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/models/pdo/ClassifierType;
    .locals 1

    const-class v0, Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/models/pdo/ClassifierType;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/models/pdo/ClassifierType;->$VALUES:[Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v0}, [Lcom/truecaller/insights/models/pdo/ClassifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/ClassifierType;->value:I

    return v0
.end method
