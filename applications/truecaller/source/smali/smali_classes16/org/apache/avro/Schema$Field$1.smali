.class public final Lorg/apache/avro/Schema$Field$1;
.super Lorg/apache/avro/util/internal/Accessor$FieldAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/util/internal/Accessor$FieldAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/Schema$Field;
    .locals 8

    .line 1
    new-instance v7, Lorg/apache/avro/Schema$Field;

    sget-object v6, Lorg/apache/avro/Schema$Field$Order;->ASCENDING:Lorg/apache/avro/Schema$Field$Order;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    return-object v7
.end method

.method public createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)Lorg/apache/avro/Schema$Field;
    .locals 8

    .line 2
    new-instance v7, Lorg/apache/avro/Schema$Field;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Schema$Field;-><init>(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)V

    return-object v7
.end method

.method public defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/avro/Schema$Field;->defaultValue()Le/k/a/c/l;

    move-result-object p1

    return-object p1
.end method
