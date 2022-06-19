.class final Lcom/google/i18n/phonenumbers/r/b;
.super Lcom/google/i18n/phonenumbers/r/e;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:Ljava/nio/ByteBuffer;

.field private f:Ljava/nio/ByteBuffer;

.field private g:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/r/e;-><init>()V

    return-void
.end method

.method private g(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    if-ge v0, v1, :cond_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    iget v1, p0, Lcom/google/i18n/phonenumbers/r/b;->c:I

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->e:Ljava/nio/ByteBuffer;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    if-ge v0, v1, :cond_3

    .line 5
    :cond_2
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    iget v1, p0, Lcom/google/i18n/phonenumbers/r/b;->d:I

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->f:Ljava/nio/ByteBuffer;

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    if-ge v0, v1, :cond_4

    .line 7
    iget v1, p0, Lcom/google/i18n/phonenumbers/r/b;->c:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/r/b;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/r/b;->h(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 8
    iget v1, p0, Lcom/google/i18n/phonenumbers/r/b;->d:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/r/b;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/google/i18n/phonenumbers/r/b;->h(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static h(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int p3, p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private static i(Ljava/nio/ByteBuffer;II)I
    .locals 1

    mul-int p2, p2, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static j(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int p3, p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeShort(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/r/b;->d:I

    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/r/b;->i(Ljava/nio/ByteBuffer;II)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->g:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/r/b;->c:I

    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/r/b;->i(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/r/b;->c:I

    .line 2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/r/b;->d:I

    .line 3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/r/e;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/r/e;->b:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/r/b;->g:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge v2, v0, :cond_2

    .line 8
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/r/b;->g:[Ljava/lang/String;

    :cond_2
    :goto_1
    if-ge v1, v0, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/r/b;->g:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/r/b;->g(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public f(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/b;->c:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/b;->d:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/e;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 4
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/e;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/r/b;->g:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 9
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 11
    :goto_2
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/e;->a:I

    if-ge v2, v0, :cond_2

    .line 12
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/b;->c:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/r/b;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/r/b;->j(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 13
    iget v0, p0, Lcom/google/i18n/phonenumbers/r/b;->d:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/r/b;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/r/b;->j(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
