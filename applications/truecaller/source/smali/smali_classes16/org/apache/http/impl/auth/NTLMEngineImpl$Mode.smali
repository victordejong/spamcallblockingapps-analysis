.class public final enum Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

.field public static final enum CLIENT:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

.field public static final enum SERVER:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    const-string v1, "CLIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    const-string v3, "SERVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->SERVER:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->$VALUES:[Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->$VALUES:[Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    invoke-virtual {v0}, [Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    return-object v0
.end method
