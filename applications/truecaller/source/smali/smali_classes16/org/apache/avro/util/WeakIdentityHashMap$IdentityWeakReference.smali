.class public Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/util/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdentityWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public hash:I

.field public final synthetic this$0:Lorg/apache/avro/util/WeakIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->this$0:Lorg/apache/avro/util/WeakIdentityHashMap;

    .line 2
    invoke-static {p1}, Lorg/apache/avro/util/WeakIdentityHashMap;->access$000(Lorg/apache/avro/util/WeakIdentityHashMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 3
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;

    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap$IdentityWeakReference;->hash:I

    return v0
.end method
