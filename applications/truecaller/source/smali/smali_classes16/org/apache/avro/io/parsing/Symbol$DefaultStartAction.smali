.class public Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultStartAction"
.end annotation


# instance fields
.field public final contents:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$DefaultStartAction;->contents:[B

    return-void
.end method
