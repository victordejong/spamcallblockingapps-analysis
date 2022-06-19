.class public final enum Lcom/google/api/Distribution$BucketOptions$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/Distribution$BucketOptions$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/api/Distribution$BucketOptions$b;

.field public static final enum b:Lcom/google/api/Distribution$BucketOptions$b;

.field public static final enum c:Lcom/google/api/Distribution$BucketOptions$b;

.field public static final enum d:Lcom/google/api/Distribution$BucketOptions$b;

.field public static final synthetic e:[Lcom/google/api/Distribution$BucketOptions$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$b;

    const-string v1, "LINEAR_BUCKETS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/Distribution$BucketOptions$b;->a:Lcom/google/api/Distribution$BucketOptions$b;

    .line 2
    new-instance v1, Lcom/google/api/Distribution$BucketOptions$b;

    const-string v4, "EXPONENTIAL_BUCKETS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/Distribution$BucketOptions$b;->b:Lcom/google/api/Distribution$BucketOptions$b;

    .line 3
    new-instance v4, Lcom/google/api/Distribution$BucketOptions$b;

    const-string v6, "EXPLICIT_BUCKETS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/Distribution$BucketOptions$b;->c:Lcom/google/api/Distribution$BucketOptions$b;

    .line 4
    new-instance v6, Lcom/google/api/Distribution$BucketOptions$b;

    const-string v8, "OPTIONS_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, Lcom/google/api/Distribution$BucketOptions$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/api/Distribution$BucketOptions$b;->d:Lcom/google/api/Distribution$BucketOptions$b;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/api/Distribution$BucketOptions$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lcom/google/api/Distribution$BucketOptions$b;->e:[Lcom/google/api/Distribution$BucketOptions$b;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/Distribution$BucketOptions$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$BucketOptions$b;

    return-object p0
.end method

.method public static values()[Lcom/google/api/Distribution$BucketOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$b;->e:[Lcom/google/api/Distribution$BucketOptions$b;

    invoke-virtual {v0}, [Lcom/google/api/Distribution$BucketOptions$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/Distribution$BucketOptions$b;

    return-object v0
.end method
