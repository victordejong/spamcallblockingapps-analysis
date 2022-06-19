.class public Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolvingAction"
.end annotation


# instance fields
.field public final reader:Lorg/apache/avro/io/parsing/Symbol;

.field public final writer:Lorg/apache/avro/io/parsing/Symbol;


# direct methods
.method private constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lorg/apache/avro/io/parsing/Symbol;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)V

    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List<",
            "Lorg/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)",
            "Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    iget-object v1, p0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->writer:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, p1, p2}, Lorg/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->reader:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, p1, p2}, Lorg/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;-><init>(Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$ResolvingAction;

    move-result-object p1

    return-object p1
.end method
