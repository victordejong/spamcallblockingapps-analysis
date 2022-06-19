.class public Lorg/apache/avro/io/parsing/Symbol$Sequence$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/avro/io/parsing/Symbol$Sequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/avro/io/parsing/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private pos:I

.field public final synthetic this$0:Lorg/apache/avro/io/parsing/Symbol$Sequence;


# direct methods
.method public constructor <init>(Lorg/apache/avro/io/parsing/Symbol$Sequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->this$0:Lorg/apache/avro/io/parsing/Symbol$Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    array-length p1, p1

    iput p1, p0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->next()Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/avro/io/parsing/Symbol;
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->this$0:Lorg/apache/avro/io/parsing/Symbol$Sequence;

    iget-object v1, v1, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;->pos:I

    aget-object v0, v1, v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
