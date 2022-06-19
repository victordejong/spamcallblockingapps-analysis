.class public abstract Lorg/apache/avro/Resolver$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/avro/Resolver$Action$Type;
    }
.end annotation


# instance fields
.field public final conversion:Lorg/apache/avro/Conversion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/avro/Conversion<",
            "*>;"
        }
    .end annotation
.end field

.field public final logicalType:Lorg/apache/avro/LogicalType;

.field public final reader:Lorg/apache/avro/Schema;

.field public final type:Lorg/apache/avro/Resolver$Action$Type;

.field public final writer:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/Resolver$Action;->writer:Lorg/apache/avro/Schema;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/Resolver$Action;->reader:Lorg/apache/avro/Schema;

    .line 4
    iput-object p4, p0, Lorg/apache/avro/Resolver$Action;->type:Lorg/apache/avro/Resolver$Action$Type;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/avro/Resolver$Action;->logicalType:Lorg/apache/avro/LogicalType;

    .line 6
    iput-object p1, p0, Lorg/apache/avro/Resolver$Action;->conversion:Lorg/apache/avro/Conversion;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lorg/apache/avro/Schema;->getLogicalType()Lorg/apache/avro/LogicalType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Resolver$Action;->logicalType:Lorg/apache/avro/LogicalType;

    .line 8
    invoke-virtual {p3, p1}, Lorg/apache/avro/generic/GenericData;->getConversionFor(Lorg/apache/avro/LogicalType;)Lorg/apache/avro/Conversion;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/Resolver$Action;->conversion:Lorg/apache/avro/Conversion;

    :goto_0
    return-void
.end method
