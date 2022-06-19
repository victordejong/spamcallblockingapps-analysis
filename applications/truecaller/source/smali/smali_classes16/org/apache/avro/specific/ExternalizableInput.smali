.class public Lorg/apache/avro/specific/ExternalizableInput;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final in:Ljava/io/ObjectInput;


# direct methods
.method public constructor <init>(Ljava/io/ObjectInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    invoke-interface {v0}, Ljava/io/ObjectInput;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    invoke-interface {v0}, Ljava/io/ObjectInput;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    invoke-interface {v0, p1}, Ljava/io/ObjectInput;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/ObjectInput;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableInput;->in:Ljava/io/ObjectInput;

    invoke-interface {v0, p1, p2}, Ljava/io/ObjectInput;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
