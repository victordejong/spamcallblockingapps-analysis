.class public Lorg/apache/avro/Resolver$Container;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Container"
.end annotation


# instance fields
.field public final elementAction:Lorg/apache/avro/Resolver$Action;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->CONTAINER:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    .line 2
    iput-object p4, p0, Lorg/apache/avro/Resolver$Container;->elementAction:Lorg/apache/avro/Resolver$Action;

    return-void
.end method
