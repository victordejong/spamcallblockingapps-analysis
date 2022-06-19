.class public Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionAdjustAction"
.end annotation


# instance fields
.field public final rindex:I

.field public final symToParse:Lorg/apache/avro/io/parsing/Symbol;


# direct methods
.method public constructor <init>(ILorg/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    .line 2
    iput p1, p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->rindex:I

    .line 3
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lorg/apache/avro/io/parsing/Symbol;

    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;
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
            "Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    iget v1, p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->rindex:I

    iget-object v2, p0, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->symToParse:Lorg/apache/avro/io/parsing/Symbol;

    invoke-virtual {v2, p1, p2}, Lorg/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;-><init>(ILorg/apache/avro/io/parsing/Symbol;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    move-result-object p1

    return-object p1
.end method
