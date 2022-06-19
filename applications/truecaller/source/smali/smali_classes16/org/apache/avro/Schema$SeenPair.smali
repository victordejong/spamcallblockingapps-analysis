.class public Lorg/apache/avro/Schema$SeenPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeenPair"
.end annotation


# instance fields
.field private s1:Ljava/lang/Object;

.field private s2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/Schema$SeenPair;->s1:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lorg/apache/avro/Schema$SeenPair;->s2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/avro/Schema$SeenPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/avro/Schema$SeenPair;->s1:Ljava/lang/Object;

    check-cast p1, Lorg/apache/avro/Schema$SeenPair;

    iget-object v2, p1, Lorg/apache/avro/Schema$SeenPair;->s1:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/avro/Schema$SeenPair;->s2:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/avro/Schema$SeenPair;->s2:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$SeenPair;->s1:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Schema$SeenPair;->s2:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
