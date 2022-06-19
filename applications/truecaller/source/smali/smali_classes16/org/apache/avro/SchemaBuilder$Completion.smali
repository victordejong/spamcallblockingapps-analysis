.class public abstract Lorg/apache/avro/SchemaBuilder$Completion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Completion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/SchemaBuilder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/SchemaBuilder$Completion;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract complete(Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            ")TR;"
        }
    .end annotation
.end method
