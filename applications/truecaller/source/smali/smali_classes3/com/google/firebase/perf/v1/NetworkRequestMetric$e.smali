.class public final enum Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkRequestMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkRequestMetric$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

.field public static final enum c:Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

.field public static final synthetic d:[Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    const-string v1, "NETWORK_CLIENT_ERROR_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->b:Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    .line 2
    new-instance v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    const-string v3, "GENERIC_CLIENT_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->c:Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->d:[Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->a:I

    return-void
.end method

.method public static a(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->c:Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->b:Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->d:[Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$e;->a:I

    return v0
.end method
