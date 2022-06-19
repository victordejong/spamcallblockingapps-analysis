.class public Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LitS"
.end annotation


# instance fields
.field public final actual:Lorg/apache/avro/Schema;


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lorg/apache/avro/Schema;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lorg/apache/avro/Schema;

    check-cast p1, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;

    iget-object p1, p1, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;->actual:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v0

    return v0
.end method
