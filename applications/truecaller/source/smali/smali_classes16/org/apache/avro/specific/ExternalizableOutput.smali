.class public Lorg/apache/avro/specific/ExternalizableOutput;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final out:Ljava/io/ObjectOutput;


# direct methods
.method public constructor <init>(Ljava/io/ObjectOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/avro/specific/ExternalizableOutput;->out:Ljava/io/ObjectOutput;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableOutput;->out:Ljava/io/ObjectOutput;

    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableOutput;->out:Ljava/io/ObjectOutput;

    invoke-interface {v0}, Ljava/io/ObjectOutput;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableOutput;->out:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableOutput;->out:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/avro/specific/ExternalizableOutput;->out:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/ObjectOutput;->write([BII)V

    return-void
.end method
