.class public Lorg/apache/avro/util/WeakIdentityHashMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/avro/util/WeakIdentityHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/avro/util/WeakIdentityHashMap;

.field public final synthetic val$key:Ljava/lang/Object;

.field public final synthetic val$value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/avro/util/WeakIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/util/WeakIdentityHashMap$1;->this$0:Lorg/apache/avro/util/WeakIdentityHashMap;

    iput-object p2, p0, Lorg/apache/avro/util/WeakIdentityHashMap$1;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/avro/util/WeakIdentityHashMap$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/util/WeakIdentityHashMap$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
