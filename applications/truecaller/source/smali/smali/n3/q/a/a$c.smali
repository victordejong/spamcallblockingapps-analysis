.class public Ln3/q/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/q/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:[B


# direct methods
.method public constructor <init>(IIJ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/q/a/a$c;->a:I

    .line 3
    iput p2, p0, Ln3/q/a/a$c;->b:I

    .line 4
    iput-wide p3, p0, Ln3/q/a/a$c;->c:J

    .line 5
    iput-object p5, p0, Ln3/q/a/a$c;->d:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Ln3/q/a/a$c;->a:I

    .line 8
    iput p2, p0, Ln3/q/a/a$c;->b:I

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Ln3/q/a/a$c;->c:J

    .line 10
    iput-object p3, p0, Ln3/q/a/a$c;->d:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Ln3/q/a/a$c;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ln3/q/a/a;->Z:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    new-instance v0, Ln3/q/a/a$c;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Ln3/q/a/a$c;-><init>(II[B)V

    return-object v0
.end method

.method public static b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    .line 1
    sget-object p0, Ln3/q/a/a;->H:[I

    const/4 p1, 0x4

    aget p0, p0, p1

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-wide v3, v1, v2

    long-to-int p2, v3

    .line 4
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ln3/q/a/a$c;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {p2, p1, v0, p0}, Ln3/q/a/a$c;-><init>(II[B)V

    return-object p2
.end method

.method public static c(Ln3/q/a/a$e;Ljava/nio/ByteOrder;)Ln3/q/a/a$c;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ln3/q/a/a$e;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    sget-object p0, Ln3/q/a/a;->H:[I

    const/4 v3, 0x5

    aget p0, p0, v3

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-object p1, v1, v2

    .line 4
    iget-wide v4, p1, Ln3/q/a/a$e;->a:J

    long-to-int v4, v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget-wide v4, p1, Ln3/q/a/a$e;->b:J

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ln3/q/a/a$c;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {p1, v3, v0, p0}, Ln3/q/a/a$c;-><init>(II[B)V

    return-object p1
.end method

.method public static d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 1
    sget-object p0, Ln3/q/a/a;->H:[I

    const/4 v3, 0x3

    aget p0, p0, v3

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget p1, v1, v2

    int-to-short p1, p1

    .line 4
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ln3/q/a/a$c;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {p1, v3, v0, p0}, Ln3/q/a/a$c;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public e(Ljava/nio/ByteOrder;)D
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, [J

    .line 6
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 7
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, [I

    .line 11
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 12
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 15
    check-cast p1, [D

    .line 16
    array-length v0, p1

    if-ne v0, v3, :cond_5

    .line 17
    aget-wide v0, p1, v1

    return-wide v0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    instance-of v0, p1, [Ln3/q/a/a$e;

    if-eqz v0, :cond_8

    .line 20
    check-cast p1, [Ln3/q/a/a$e;

    .line 21
    array-length v0, p1

    if-ne v0, v3, :cond_7

    .line 22
    aget-object p1, p1, v1

    .line 23
    iget-wide v0, p1, Ln3/q/a/a$e;->a:J

    long-to-double v0, v0

    iget-wide v2, p1, Ln3/q/a/a$e;->b:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/nio/ByteOrder;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, [J

    .line 6
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 7
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, [I

    .line 11
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 12
    aget p1, p1, v1

    return p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 6
    check-cast p1, [J

    .line 7
    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_3

    .line 8
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 9
    array-length v0, p1

    if-eq v4, v0, :cond_2

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    .line 13
    check-cast p1, [I

    .line 14
    :cond_5
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_6

    .line 15
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 16
    array-length v0, p1

    if-eq v4, v0, :cond_5

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    .line 20
    check-cast p1, [D

    .line 21
    :cond_8
    :goto_2
    array-length v0, p1

    if-ge v4, v0, :cond_9

    .line 22
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 23
    array-length v0, p1

    if-eq v4, v0, :cond_8

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_a
    instance-of v2, p1, [Ln3/q/a/a$e;

    if-eqz v2, :cond_d

    .line 27
    check-cast p1, [Ln3/q/a/a$e;

    .line 28
    :cond_b
    :goto_3
    array-length v0, p1

    if-ge v4, v0, :cond_c

    .line 29
    aget-object v0, p1, v4

    iget-wide v5, v0, Ln3/q/a/a$e;->a:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    aget-object v0, p1, v4

    iget-wide v5, v0, Ln3/q/a/a$e;->b:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 32
    array-length v0, p1

    if-eq v4, v0, :cond_b

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 34
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public h(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ln3/q/a/a$b;

    iget-object v2, p0, Ln3/q/a/a$c;->d:[B

    invoke-direct {v1, v2}, Ln3/q/a/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iput-object p1, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 3
    iget p1, p0, Ln3/q/a/a$c;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_d

    .line 4
    :pswitch_0
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [D

    .line 5
    :goto_0
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ln3/q/a/a$b;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    .line 8
    :pswitch_1
    :try_start_3
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [D

    .line 9
    :goto_1
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_1

    .line 10
    invoke-virtual {v1}, Ln3/q/a/a$b;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, p1, v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object p1

    .line 12
    :pswitch_2
    :try_start_5
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [Ln3/q/a/a$e;

    .line 13
    :goto_2
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_2

    .line 14
    invoke-virtual {v1}, Ln3/q/a/a$b;->readInt()I

    move-result v2

    int-to-long v4, v2

    .line 15
    invoke-virtual {v1}, Ln3/q/a/a$b;->readInt()I

    move-result v2

    int-to-long v6, v2

    .line 16
    new-instance v2, Ln3/q/a/a$e;

    invoke-direct {v2, v4, v5, v6, v7}, Ln3/q/a/a$e;-><init>(JJ)V

    aput-object v2, p1, v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object p1

    .line 18
    :pswitch_3
    :try_start_7
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [I

    .line 19
    :goto_3
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_3

    .line 20
    invoke-virtual {v1}, Ln3/q/a/a$b;->readInt()I

    move-result v2

    aput v2, p1, v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 21
    :cond_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    return-object p1

    .line 22
    :pswitch_4
    :try_start_9
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [I

    .line 23
    :goto_4
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_4

    .line 24
    invoke-virtual {v1}, Ln3/q/a/a$b;->readShort()S

    move-result v2

    aput v2, p1, v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 25
    :cond_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    return-object p1

    .line 26
    :pswitch_5
    :try_start_b
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [Ln3/q/a/a$e;

    .line 27
    :goto_5
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_5

    .line 28
    invoke-virtual {v1}, Ln3/q/a/a$b;->b()J

    move-result-wide v4

    .line 29
    invoke-virtual {v1}, Ln3/q/a/a$b;->b()J

    move-result-wide v6

    .line 30
    new-instance v2, Ln3/q/a/a$e;

    invoke-direct {v2, v4, v5, v6, v7}, Ln3/q/a/a$e;-><init>(JJ)V

    aput-object v2, p1, v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 31
    :cond_5
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    return-object p1

    .line 32
    :pswitch_6
    :try_start_d
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [J

    .line 33
    :goto_6
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_6

    .line 34
    invoke-virtual {v1}, Ln3/q/a/a$b;->b()J

    move-result-wide v4

    aput-wide v4, p1, v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 35
    :cond_6
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :catch_6
    return-object p1

    .line 36
    :pswitch_7
    :try_start_f
    iget p1, p0, Ln3/q/a/a$c;->b:I

    new-array p1, p1, [I

    .line 37
    :goto_7
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_7

    .line 38
    invoke-virtual {v1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v2

    aput v2, p1, v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 39
    :cond_7
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :catch_7
    return-object p1

    .line 40
    :pswitch_8
    :try_start_11
    iget p1, p0, Ln3/q/a/a$c;->b:I

    sget-object v4, Ln3/q/a/a;->I:[B

    array-length v4, v4

    if-lt p1, v4, :cond_a

    move p1, v3

    .line 41
    :goto_8
    sget-object v4, Ln3/q/a/a;->I:[B

    array-length v5, v4

    if-ge p1, v5, :cond_9

    .line 42
    iget-object v5, p0, Ln3/q/a/a$c;->d:[B

    aget-byte v5, v5, p1

    aget-byte v6, v4, p1

    if-eq v5, v6, :cond_8

    move v2, v3

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 43
    array-length v3, v4

    .line 44
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    :goto_a
    iget v2, p0, Ln3/q/a/a$c;->b:I

    if-ge v3, v2, :cond_d

    .line 46
    iget-object v2, p0, Ln3/q/a/a$c;->d:[B

    aget-byte v2, v2, v3

    if-nez v2, :cond_b

    goto :goto_c

    :cond_b
    const/16 v4, 0x20

    if-lt v2, v4, :cond_c

    int-to-char v2, v2

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    const/16 v2, 0x3f

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 49
    :cond_d
    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 50
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    :catch_8
    return-object p1

    .line 51
    :pswitch_9
    :try_start_13
    iget-object p1, p0, Ln3/q/a/a$c;->d:[B

    array-length v4, p1

    if-ne v4, v2, :cond_e

    aget-byte v4, p1, v3

    if-ltz v4, :cond_e

    aget-byte p1, p1, v3

    if-gt p1, v2, :cond_e

    .line 52
    new-instance p1, Ljava/lang/String;

    new-array v2, v2, [C

    iget-object v4, p0, Ln3/q/a/a$c;->d:[B

    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v3

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 53
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    :catch_9
    return-object p1

    .line 54
    :cond_e
    :try_start_15
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Ln3/q/a/a$c;->d:[B

    sget-object v3, Ln3/q/a/a;->Z:Ljava/nio/charset/Charset;

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 55
    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    :catch_a
    return-object p1

    :goto_d
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    :catch_b
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_e

    :catchall_1
    move-exception p1

    :goto_e
    if-eqz v0, :cond_f

    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    .line 56
    :catch_c
    :cond_f
    throw p1

    :catch_d
    move-object v1, v0

    :catch_e
    if-eqz v1, :cond_10

    .line 57
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    :catch_f
    :cond_10
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ln3/q/a/a;->G:[Ljava/lang/String;

    iget v2, p0, Ln3/q/a/a$c;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/q/a/a$c;->d:[B

    array-length v1, v1

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
