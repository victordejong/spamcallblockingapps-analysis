.class public Lorg/apache/avro/JsonProperties$2$1;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/avro/JsonProperties$2;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Le/k/a/c/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/apache/avro/JsonProperties$2;


# direct methods
.method public constructor <init>(Lorg/apache/avro/JsonProperties$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/JsonProperties$2$1;->this$1:Lorg/apache/avro/JsonProperties$2;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/JsonProperties$2$1$1;

    invoke-direct {v0, p0}, Lorg/apache/avro/JsonProperties$2$1$1;-><init>(Lorg/apache/avro/JsonProperties$2$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties$2$1;->this$1:Lorg/apache/avro/JsonProperties$2;

    invoke-static {v0}, Lorg/apache/avro/JsonProperties$2;->access$200(Lorg/apache/avro/JsonProperties$2;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
