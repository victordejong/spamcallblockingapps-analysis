.class public Lorg/apache/avro/SchemaValidationException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/avro/SchemaValidationException;->getMessage(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/avro/SchemaValidationException;->getMessage(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getMessage(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)Ljava/lang/String;
    .locals 2

    const-string v0, "Unable to read schema: \n"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nusing schema:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
