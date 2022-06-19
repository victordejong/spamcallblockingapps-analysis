.class public Lorg/apache/avro/io/parsing/Symbol$Terminal;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Terminal"
.end annotation


# instance fields
.field private final printName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$Terminal;->printName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol$Terminal;->printName:Ljava/lang/String;

    return-object v0
.end method
