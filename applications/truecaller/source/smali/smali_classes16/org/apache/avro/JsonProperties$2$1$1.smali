.class public Lorg/apache/avro/JsonProperties$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/avro/JsonProperties$2$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Le/k/a/c/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field public it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/avro/reflect/MapEntry<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$2:Lorg/apache/avro/JsonProperties$2$1;


# direct methods
.method public constructor <init>(Lorg/apache/avro/JsonProperties$2$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/JsonProperties$2$1$1;->this$2:Lorg/apache/avro/JsonProperties$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/apache/avro/JsonProperties$2$1;->this$1:Lorg/apache/avro/JsonProperties$2;

    invoke-static {p1}, Lorg/apache/avro/JsonProperties$2;->access$200(Lorg/apache/avro/JsonProperties$2;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/avro/JsonProperties$2$1$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/JsonProperties$2$1$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/JsonProperties$2$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/JsonProperties$2$1$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
