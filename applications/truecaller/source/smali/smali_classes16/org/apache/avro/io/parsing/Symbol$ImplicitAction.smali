.class public Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplicitAction"
.end annotation


# instance fields
.field public final isTrailing:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 4
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;)V

    .line 5
    iput-boolean p1, p0, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;->isTrailing:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Z)V

    return-void
.end method
