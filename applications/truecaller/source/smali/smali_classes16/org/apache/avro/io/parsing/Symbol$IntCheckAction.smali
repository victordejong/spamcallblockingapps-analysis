.class public Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntCheckAction"
.end annotation


# instance fields
.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;)V

    .line 2
    iput p1, p0, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;->size:I

    return-void
.end method
