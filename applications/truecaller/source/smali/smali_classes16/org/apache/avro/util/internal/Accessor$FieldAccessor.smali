.class public abstract Lorg/apache/avro/util/internal/Accessor$FieldAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/util/internal/Accessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FieldAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;)Lorg/apache/avro/Schema$Field;
.end method

.method public abstract createField(Ljava/lang/String;Lorg/apache/avro/Schema;Ljava/lang/String;Le/k/a/c/l;ZLorg/apache/avro/Schema$Field$Order;)Lorg/apache/avro/Schema$Field;
.end method

.method public abstract defaultValue(Lorg/apache/avro/Schema$Field;)Le/k/a/c/l;
.end method
