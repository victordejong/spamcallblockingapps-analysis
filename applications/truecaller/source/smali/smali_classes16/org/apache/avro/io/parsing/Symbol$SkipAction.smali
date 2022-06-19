.class public Lorg/apache/avro/io/parsing/Symbol$SkipAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipAction"
.end annotation


# instance fields
.field public final symToSkip:Lorg/apache/avro/io/parsing/Symbol;


# direct methods
.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lorg/apache/avro/io/parsing/Symbol;

    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$SkipAction;
    .locals 2
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
            "Lorg/apache/avro/io/parsing/Symbol$SkipAction;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    iget-object v1, p0, Lorg/apache/avro/io/parsing/Symbol$SkipAction;->symToSkip:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v1, p1, p2}, Lorg/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/avro/io/parsing/Symbol$SkipAction;-><init>(Lorg/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$SkipAction;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$SkipAction;

    move-result-object p1

    return-object p1
.end method
