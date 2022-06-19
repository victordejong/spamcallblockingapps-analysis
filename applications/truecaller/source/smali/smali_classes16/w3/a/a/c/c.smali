.class public final synthetic Lw3/a/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/avro/generic/GenericData$InstanceSupplier;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Ljava/lang/reflect/Constructor;

.field public final synthetic c:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a/a/c/c;->a:Ljava/lang/Class;

    iput-object p2, p0, Lw3/a/a/c/c;->b:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lw3/a/a/c/c;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;Lorg/apache/avro/Schema;)Ljava/lang/Object;
    .locals 3

    iget-object p2, p0, Lw3/a/a/c/c;->a:Ljava/lang/Class;

    iget-object v0, p0, Lw3/a/a/c/c;->b:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lw3/a/a/c/c;->c:[Ljava/lang/Object;

    .line 1
    sget-object v2, Lorg/apache/avro/specific/SpecificData;->CLASS_PROP:Ljava/lang/String;

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
