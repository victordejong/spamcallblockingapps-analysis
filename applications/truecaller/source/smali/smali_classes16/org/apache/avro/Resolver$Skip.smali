.class public Lorg/apache/avro/Resolver$Skip;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Skip"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->SKIP:Lorg/apache/avro/Resolver$Action$Type;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    return-void
.end method
