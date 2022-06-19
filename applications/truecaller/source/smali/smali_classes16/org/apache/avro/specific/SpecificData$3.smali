.class public Lorg/apache/avro/specific/SpecificData$3;
.super Lorg/apache/avro/util/tc/LazyValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/specific/SpecificData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/util/tc/LazyValue<",
        "Lorg/apache/avro/Schema;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/avro/specific/SpecificData;


# direct methods
.method public constructor <init>(Lorg/apache/avro/specific/SpecificData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/specific/SpecificData$3;->this$0:Lorg/apache/avro/specific/SpecificData;

    invoke-direct {p0}, Lorg/apache/avro/util/tc/LazyValue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/avro/specific/SpecificData$3;->computeValue(Ljava/lang/Class;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public computeValue(Ljava/lang/Class;)Lorg/apache/avro/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/avro/Schema;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/specific/SpecificData$3;->this$0:Lorg/apache/avro/specific/SpecificData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method
