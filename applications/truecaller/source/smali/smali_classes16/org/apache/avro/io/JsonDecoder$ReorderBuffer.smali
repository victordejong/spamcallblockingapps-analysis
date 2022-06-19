.class public Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/JsonDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReorderBuffer"
.end annotation


# instance fields
.field public origParser:Le/k/a/b/j;

.field public savedFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/n0/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->savedFields:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;->origParser:Le/k/a/b/j;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/JsonDecoder$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/avro/io/JsonDecoder$ReorderBuffer;-><init>()V

    return-void
.end method
