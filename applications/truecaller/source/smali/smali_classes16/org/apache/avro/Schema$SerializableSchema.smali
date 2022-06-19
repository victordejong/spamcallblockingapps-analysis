.class public final Lorg/apache/avro/Schema$SerializableSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializableSchema"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private schemaString:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/Schema$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/avro/Schema$SerializableSchema;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lorg/apache/avro/Schema$SerializableSchema;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/Schema$SerializableSchema;->schemaString:Ljava/lang/String;

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/avro/Schema$Parser;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Parser;-><init>()V

    iget-object v1, p0, Lorg/apache/avro/Schema$SerializableSchema;->schemaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method
