.class public Lorg/apache/avro/JsonProperties$2;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/JsonProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Le/k/a/c/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private propOrder:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/avro/reflect/MapEntry<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lorg/apache/avro/JsonProperties;


# direct methods
.method public constructor <init>(Lorg/apache/avro/JsonProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/JsonProperties$2;->this$0:Lorg/apache/avro/JsonProperties;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/avro/JsonProperties$2;->propOrder:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/avro/JsonProperties$2;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/JsonProperties$2;->propOrder:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Le/k/a/c/l;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/JsonProperties$2$1;

    invoke-direct {v0, p0}, Lorg/apache/avro/JsonProperties$2$1;-><init>(Lorg/apache/avro/JsonProperties$2;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/JsonProperties$2;->putIfAbsent(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Le/k/a/c/l;

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/JsonProperties$2;->put(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;
    .locals 3

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l;

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/JsonProperties$2;->propOrder:Ljava/util/Queue;

    new-instance v2, Lorg/apache/avro/reflect/MapEntry;

    invoke-direct {v2, p1, p2}, Lorg/apache/avro/reflect/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Le/k/a/c/l;

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/JsonProperties$2;->putIfAbsent(Ljava/lang/String;Le/k/a/c/l;)Le/k/a/c/l;

    move-result-object p1

    return-object p1
.end method
