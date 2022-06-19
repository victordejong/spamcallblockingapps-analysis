.class public final synthetic Lw3/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericData$InstanceSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/avro/generic/GenericData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/avro/generic/GenericData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a/a/b/a;->a:Lorg/apache/avro/generic/GenericData;

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/a/a/b/a;->a:Lorg/apache/avro/generic/GenericData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
