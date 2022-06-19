.class public Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriterUnionAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/parsing/Symbol$WriterUnionAction;-><init>()V

    return-void
.end method
