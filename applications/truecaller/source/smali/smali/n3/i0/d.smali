.class public Ln3/i0/d;
.super Ln3/i0/c;
.source "SourceFile"


# instance fields
.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroid/os/Parcel;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    new-instance v5, Ln3/g/a;

    invoke-direct {v5}, Ln3/g/a;-><init>()V

    new-instance v6, Ln3/g/a;

    invoke-direct {v6}, Ln3/g/a;-><init>()V

    new-instance v7, Ln3/g/a;

    invoke-direct {v7}, Ln3/g/a;-><init>()V

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ln3/i0/d;-><init>(Landroid/os/Parcel;IILjava/lang/String;Ln3/g/a;Ln3/g/a;Ln3/g/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Ln3/g/a;Ln3/g/a;Ln3/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Ln3/g/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ln3/g/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ln3/g/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p5, p6, p7}, Ln3/i0/c;-><init>(Ln3/g/a;Ln3/g/a;Ln3/g/a;)V

    .line 3
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Ln3/i0/d;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 4
    iput p5, p0, Ln3/i0/d;->i:I

    const/4 p6, 0x0

    .line 5
    iput p6, p0, Ln3/i0/d;->j:I

    .line 6
    iput p5, p0, Ln3/i0/d;->k:I

    .line 7
    iput-object p1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    .line 8
    iput p2, p0, Ln3/i0/d;->f:I

    .line 9
    iput p3, p0, Ln3/i0/d;->g:I

    .line 10
    iput p2, p0, Ln3/i0/d;->j:I

    .line 11
    iput-object p4, p0, Ln3/i0/d;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/i0/d;->a()V

    .line 2
    iput p1, p0, Ln3/i0/d;->i:I

    .line 3
    iget-object v0, p0, Ln3/i0/d;->d:Landroid/util/SparseIntArray;

    iget-object v1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public C(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public D(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public E([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public F(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public H(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public I(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public J(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public K(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public M(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget v0, p0, Ln3/i0/d;->i:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Ln3/i0/d;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 4
    iget-object v3, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public b()Ln3/i0/c;
    .locals 9

    .line 1
    new-instance v8, Ln3/i0/d;

    iget-object v1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Ln3/i0/d;->j:I

    iget v3, p0, Ln3/i0/d;->f:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Ln3/i0/d;->g:I

    :cond_0
    move v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ln3/i0/d;->h:Ljava/lang/String;

    const-string v5, "  "

    invoke-static {v0, v4, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ln3/i0/c;->a:Ln3/g/a;

    iget-object v6, p0, Ln3/i0/c;->b:Ln3/g/a;

    iget-object v7, p0, Ln3/i0/c;->c:Ln3/g/a;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ln3/i0/d;-><init>(Landroid/os/Parcel;IILjava/lang/String;Ln3/g/a;Ln3/g/a;Ln3/g/a;)V

    return-object v8
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    const-class v1, Ln3/i0/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public k()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object v1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public n(I)Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Ln3/i0/d;->j:I

    iget v1, p0, Ln3/i0/d;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 2
    iget v0, p0, Ln3/i0/d;->k:I

    if-ne v0, p1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    iget v1, p0, Ln3/i0/d;->j:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6
    iget-object v1, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Ln3/i0/d;->k:I

    .line 7
    iget v1, p0, Ln3/i0/d;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Ln3/i0/d;->j:I

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Ln3/i0/d;->k:I

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public o()F
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    const-class v1, Ln3/i0/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i0/d;->e:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
