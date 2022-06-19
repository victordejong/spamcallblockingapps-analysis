.class public final enum Lcom/facebook/internal/u0/i$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/u0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/u0/i$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/InstrumentData$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "logPrefix",
        "",
        "getLogPrefix",
        "()Ljava/lang/String;",
        "toString",
        "Unknown",
        "Analysis",
        "AnrReport",
        "CrashReport",
        "CrashShield",
        "ThreadCheck",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/internal/u0/i$c;

.field public static final enum b:Lcom/facebook/internal/u0/i$c;

.field public static final enum c:Lcom/facebook/internal/u0/i$c;

.field public static final enum d:Lcom/facebook/internal/u0/i$c;

.field public static final enum e:Lcom/facebook/internal/u0/i$c;

.field public static final enum f:Lcom/facebook/internal/u0/i$c;

.field public static final synthetic g:[Lcom/facebook/internal/u0/i$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/facebook/internal/u0/i$c;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/u0/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/u0/i$c;->a:Lcom/facebook/internal/u0/i$c;

    .line 2
    new-instance v1, Lcom/facebook/internal/u0/i$c;

    const-string v3, "Analysis"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/internal/u0/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/u0/i$c;->b:Lcom/facebook/internal/u0/i$c;

    .line 3
    new-instance v3, Lcom/facebook/internal/u0/i$c;

    const-string v5, "AnrReport"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/internal/u0/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/internal/u0/i$c;->c:Lcom/facebook/internal/u0/i$c;

    .line 4
    new-instance v5, Lcom/facebook/internal/u0/i$c;

    const-string v7, "CrashReport"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/internal/u0/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/internal/u0/i$c;->d:Lcom/facebook/internal/u0/i$c;

    .line 5
    new-instance v7, Lcom/facebook/internal/u0/i$c;

    const-string v9, "CrashShield"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/internal/u0/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/internal/u0/i$c;->e:Lcom/facebook/internal/u0/i$c;

    .line 6
    new-instance v9, Lcom/facebook/internal/u0/i$c;

    const-string v11, "ThreadCheck"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/internal/u0/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/internal/u0/i$c;->f:Lcom/facebook/internal/u0/i$c;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/facebook/internal/u0/i$c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/facebook/internal/u0/i$c;->g:[Lcom/facebook/internal/u0/i$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/u0/i$c;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/internal/u0/i$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/internal/u0/i$c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/u0/i$c;
    .locals 2

    sget-object v0, Lcom/facebook/internal/u0/i$c;->g:[Lcom/facebook/internal/u0/i$c;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/internal/u0/i$c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "ThreadCheck"

    goto :goto_0

    :cond_1
    const-string v0, "CrashShield"

    goto :goto_0

    :cond_2
    const-string v0, "CrashReport"

    goto :goto_0

    :cond_3
    const-string v0, "AnrReport"

    goto :goto_0

    :cond_4
    const-string v0, "Analysis"

    :goto_0
    return-object v0
.end method
