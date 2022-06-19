.class public Lorg/apache/avro/Schema$Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private names:Lorg/apache/avro/Schema$Names;

.field private validate:Z

.field private validateDefaults:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/avro/Schema$Names;

    invoke-direct {v0}, Lorg/apache/avro/Schema$Names;-><init>()V

    iput-object v0, p0, Lorg/apache/avro/Schema$Parser;->names:Lorg/apache/avro/Schema$Names;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/avro/Schema$Parser;->validate:Z

    .line 4
    iput-boolean v0, p0, Lorg/apache/avro/Schema$Parser;->validateDefaults:Z

    return-void
.end method

.method private parse(Le/k/a/b/j;)Lorg/apache/avro/Schema;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {}, Lorg/apache/avro/Schema;->access$1600()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 14
    invoke-static {}, Lorg/apache/avro/Schema;->access$1700()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 15
    :try_start_0
    invoke-static {}, Lorg/apache/avro/Schema;->access$1600()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/avro/Schema$Parser;->validate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lorg/apache/avro/Schema;->access$1700()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/avro/Schema$Parser;->validateDefaults:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    sget-object v2, Lorg/apache/avro/Schema;->MAPPER:Le/k/a/c/r;

    invoke-virtual {v2, p1}, Le/k/a/c/r;->i(Le/k/a/b/j;)Le/k/a/b/t;

    move-result-object v2

    check-cast v2, Le/k/a/c/l;

    iget-object v3, p0, Lorg/apache/avro/Schema$Parser;->names:Lorg/apache/avro/Schema$Names;

    invoke-static {v2, v3}, Lorg/apache/avro/Schema;->parse(Le/k/a/c/l;Lorg/apache/avro/Schema$Names;)Lorg/apache/avro/Schema;

    move-result-object v2
    :try_end_0
    .catch Le/k/a/b/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->close()V

    .line 19
    invoke-static {}, Lorg/apache/avro/Schema;->access$1600()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lorg/apache/avro/Schema;->access$1700()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 21
    :try_start_1
    new-instance v3, Lorg/apache/avro/SchemaParseException;

    invoke-direct {v3, v2}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    invoke-virtual {p1}, Le/k/a/b/j;->close()V

    .line 23
    invoke-static {}, Lorg/apache/avro/Schema;->access$1600()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lorg/apache/avro/Schema;->access$1700()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    throw v2
.end method


# virtual methods
.method public addTypes(Ljava/util/Map;)Lorg/apache/avro/Schema$Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema;",
            ">;)",
            "Lorg/apache/avro/Schema$Parser;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema;

    .line 2
    iget-object v1, p0, Lorg/apache/avro/Schema$Parser;->names:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v1, v0}, Lorg/apache/avro/Schema$Names;->add(Lorg/apache/avro/Schema;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/avro/Schema;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/avro/Schema$Parser;->names:Lorg/apache/avro/Schema$Names;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/avro/Schema;

    .line 3
    invoke-virtual {v2}, Lorg/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getValidate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/Schema$Parser;->validate:Z

    return v0
.end method

.method public getValidateDefaults()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/avro/Schema$Parser;->validateDefaults:Z

    return v0
.end method

.method public parse(Ljava/io/File;)Lorg/apache/avro/Schema;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    .line 2
    new-instance v1, Le/k/a/b/w/b;

    invoke-virtual {v0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v0, v2, v1}, Le/k/a/b/e;->b(Ljava/io/InputStream;Le/k/a/b/w/b;)Le/k/a/b/j;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/avro/Schema$Parser;->parse(Le/k/a/b/j;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)Lorg/apache/avro/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v0, p1}, Le/k/a/b/e;->f(Ljava/io/InputStream;)Le/k/a/b/j;

    move-result-object p1

    sget-object v0, Le/k/a/b/j$a;->c:Le/k/a/b/j$a;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->s(Le/k/a/b/j$a;)Le/k/a/b/j;

    invoke-direct {p0, p1}, Lorg/apache/avro/Schema$Parser;->parse(Le/k/a/b/j;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 1

    .line 11
    :try_start_0
    sget-object v0, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v0, p1}, Le/k/a/b/e;->g(Ljava/lang/String;)Le/k/a/b/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/Schema$Parser;->parse(Le/k/a/b/j;)Lorg/apache/avro/Schema;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lorg/apache/avro/SchemaParseException;

    invoke-direct {v0, p1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs parse(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/avro/Schema$Parser;->parse(Ljava/lang/String;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public setValidate(Z)Lorg/apache/avro/Schema$Parser;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/avro/Schema$Parser;->validate:Z

    return-object p0
.end method

.method public setValidateDefaults(Z)Lorg/apache/avro/Schema$Parser;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/avro/Schema$Parser;->validateDefaults:Z

    return-object p0
.end method
