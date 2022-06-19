.class public final synthetic Lw3/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/util/tc/Java8Support$MappingFunction;


# instance fields
.field public final synthetic a:Lorg/apache/avro/specific/SpecificData;

.field public final synthetic b:Lorg/apache/avro/Schema;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/avro/specific/SpecificData;Lorg/apache/avro/Schema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a/a/c/a;->a:Lorg/apache/avro/specific/SpecificData;

    iput-object p2, p0, Lw3/a/a/c/a;->b:Lorg/apache/avro/Schema;

    return-void
.end method


# virtual methods
.method public final map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/a/a/c/a;->a:Lorg/apache/avro/specific/SpecificData;

    iget-object v1, p0, Lw3/a/a/c/a;->b:Lorg/apache/avro/Schema;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/specific/SpecificData;->a(Lorg/apache/avro/Schema;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
