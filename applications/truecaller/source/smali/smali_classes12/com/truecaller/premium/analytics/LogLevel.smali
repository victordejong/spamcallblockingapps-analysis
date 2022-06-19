.class public final enum Lcom/truecaller/premium/analytics/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/premium/analytics/LogLevel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/premium/analytics/LogLevel;",
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
        "Lcom/truecaller/premium/analytics/LogLevel;",
        "",
        "",
        "priority",
        "I",
        "getPriority",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "a",
        "VERBOSE",
        "DEBUG",
        "CORE",
        "NONE",
        "premium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/premium/analytics/LogLevel;

.field public static final enum CORE:Lcom/truecaller/premium/analytics/LogLevel;

.field public static final Companion:Lcom/truecaller/premium/analytics/LogLevel$a;

.field public static final enum DEBUG:Lcom/truecaller/premium/analytics/LogLevel;

.field public static final enum NONE:Lcom/truecaller/premium/analytics/LogLevel;

.field public static final enum VERBOSE:Lcom/truecaller/premium/analytics/LogLevel;


# instance fields
.field private final priority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/premium/analytics/LogLevel;

    new-instance v1, Lcom/truecaller/premium/analytics/LogLevel;

    const-string v2, "VERBOSE"

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/premium/analytics/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/premium/analytics/LogLevel;->VERBOSE:Lcom/truecaller/premium/analytics/LogLevel;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/premium/analytics/LogLevel;

    const-string v2, "DEBUG"

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2
    invoke-direct {v1, v2, v5, v6}, Lcom/truecaller/premium/analytics/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/premium/analytics/LogLevel;->DEBUG:Lcom/truecaller/premium/analytics/LogLevel;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/premium/analytics/LogLevel;

    const-string v2, "CORE"

    .line 3
    invoke-direct {v1, v2, v6, v5}, Lcom/truecaller/premium/analytics/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/premium/analytics/LogLevel;->CORE:Lcom/truecaller/premium/analytics/LogLevel;

    aput-object v1, v0, v6

    new-instance v1, Lcom/truecaller/premium/analytics/LogLevel;

    const-string v2, "NONE"

    .line 4
    invoke-direct {v1, v2, v4, v3}, Lcom/truecaller/premium/analytics/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/premium/analytics/LogLevel;->NONE:Lcom/truecaller/premium/analytics/LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/premium/analytics/LogLevel;->$VALUES:[Lcom/truecaller/premium/analytics/LogLevel;

    new-instance v0, Lcom/truecaller/premium/analytics/LogLevel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/premium/analytics/LogLevel$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/premium/analytics/LogLevel;->Companion:Lcom/truecaller/premium/analytics/LogLevel$a;

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

    iput p3, p0, Lcom/truecaller/premium/analytics/LogLevel;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    const-class v0, Lcom/truecaller/premium/analytics/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/premium/analytics/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/premium/analytics/LogLevel;
    .locals 1

    sget-object v0, Lcom/truecaller/premium/analytics/LogLevel;->$VALUES:[Lcom/truecaller/premium/analytics/LogLevel;

    invoke-virtual {v0}, [Lcom/truecaller/premium/analytics/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/premium/analytics/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/premium/analytics/LogLevel;->priority:I

    return v0
.end method
