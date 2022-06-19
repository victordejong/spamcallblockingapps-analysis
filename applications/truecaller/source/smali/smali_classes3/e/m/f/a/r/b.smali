.class public final Le/m/f/a/r/b;
.super Le/m/f/a/r/e;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:Ljava/nio/ByteBuffer;

.field public f:Ljava/nio/ByteBuffer;

.field public g:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/f/a/r/e;-><init>()V

    return-void
.end method

.method public static e(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/2addr p3, p1

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

.method public static f(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/2addr p3, p1

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
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/f/a/r/b;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Le/m/f/a/r/b;->d:I

    mul-int/2addr p1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 3
    :goto_0
    iget-object v0, p0, Le/m/f/a/r/b;->g:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/f/a/r/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Le/m/f/a/r/b;->c:I

    mul-int/2addr p1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public c(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Le/m/f/a/r/b;->c:I

    .line 2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Le/m/f/a/r/b;->d:I

    .line 3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 4
    iget-object v1, p0, Le/m/f/a/r/e;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Le/m/f/a/r/e;->b:Ljava/util/TreeSet;

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
    iget-object v2, p0, Le/m/f/a/r/b;->g:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge v2, v0, :cond_2

    .line 8
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Le/m/f/a/r/b;->g:[Ljava/lang/String;

    :cond_2
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Le/m/f/a/r/b;->g:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Le/m/f/a/r/e;->a:I

    .line 12
    iget-object v0, p0, Le/m/f/a/r/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, p0, Le/m/f/a/r/e;->a:I

    if-ge v0, v2, :cond_5

    .line 13
    :cond_4
    iget v0, p0, Le/m/f/a/r/e;->a:I

    iget v2, p0, Le/m/f/a/r/b;->c:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Le/m/f/a/r/b;->e:Ljava/nio/ByteBuffer;

    .line 14
    :cond_5
    iget-object v0, p0, Le/m/f/a/r/b;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, p0, Le/m/f/a/r/e;->a:I

    if-ge v0, v2, :cond_7

    .line 15
    :cond_6
    iget v0, p0, Le/m/f/a/r/e;->a:I

    iget v2, p0, Le/m/f/a/r/b;->d:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Le/m/f/a/r/b;->f:Ljava/nio/ByteBuffer;

    .line 16
    :cond_7
    :goto_2
    iget v0, p0, Le/m/f/a/r/e;->a:I

    if-ge v1, v0, :cond_8

    .line 17
    iget v0, p0, Le/m/f/a/r/b;->c:I

    iget-object v2, p0, Le/m/f/a/r/b;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v2, v1}, Le/m/f/a/r/b;->e(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 18
    iget v0, p0, Le/m/f/a/r/b;->d:I

    iget-object v2, p0, Le/m/f/a/r/b;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v2, v1}, Le/m/f/a/r/b;->e(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public d(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/f/a/r/b;->c:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 2
    iget v0, p0, Le/m/f/a/r/b;->d:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 3
    iget-object v0, p0, Le/m/f/a/r/e;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 4
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 5
    iget-object v0, p0, Le/m/f/a/r/e;->b:Ljava/util/TreeSet;

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
    iget-object v0, p0, Le/m/f/a/r/b;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 8
    iget-object v0, p0, Le/m/f/a/r/b;->g:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 9
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget v0, p0, Le/m/f/a/r/e;->a:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 11
    :goto_2
    iget v0, p0, Le/m/f/a/r/e;->a:I

    if-ge v2, v0, :cond_2

    .line 12
    iget v0, p0, Le/m/f/a/r/b;->c:I

    iget-object v1, p0, Le/m/f/a/r/b;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Le/m/f/a/r/b;->f(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 13
    iget v0, p0, Le/m/f/a/r/b;->d:I

    iget-object v1, p0, Le/m/f/a/r/b;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Le/m/f/a/r/b;->f(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
