.class public final synthetic Lw3/a/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/util/tc/Java8Support$MappingFunction;


# instance fields
.field public final synthetic a:Lorg/apache/avro/specific/SpecificData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/avro/specific/SpecificData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a/a/c/b;->a:Lorg/apache/avro/specific/SpecificData;

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/a/a/c/b;->a:Lorg/apache/avro/specific/SpecificData;

    check-cast p1, Ljava/lang/reflect/Type;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method
