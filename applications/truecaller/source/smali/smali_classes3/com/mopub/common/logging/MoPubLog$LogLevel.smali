.class public final enum Lcom/mopub/common/logging/MoPubLog$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLog$LogLevelInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/logging/MoPubLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$LogLevelInt;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field public static final enum INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field public static final enum NONE:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field public static final synthetic c:[Lcom/mopub/common/logging/MoPubLog$LogLevel;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/mopub/common/logging/MoPubLog$LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 2
    new-instance v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-direct {v1, v3, v4, v5, v3}, Lcom/mopub/common/logging/MoPubLog$LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 3
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const/16 v7, 0x46

    invoke-direct {v3, v5, v6, v7, v5}, Lcom/mopub/common/logging/MoPubLog$LogLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$LogLevel;->NONE:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mopub/common/logging/MoPubLog$LogLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/mopub/common/logging/MoPubLog$LogLevel;->c:[Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->a:I

    .line 3
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->NONE:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->c:[Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->b:Ljava/lang/String;

    return-object v0
.end method
