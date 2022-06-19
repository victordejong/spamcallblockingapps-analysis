.class public Lorg/apache/avro/Schema$NullSchema;
.super Lorg/apache/avro/Schema;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullSchema"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-direct {p0, v0}, Lorg/apache/avro/Schema;-><init>(Lorg/apache/avro/Schema$Type;)V

    return-void
.end method
