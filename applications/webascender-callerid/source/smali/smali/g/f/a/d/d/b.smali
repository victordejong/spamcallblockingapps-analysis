.class public Lg/f/a/d/d/b;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/f/a/d/d/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/common/data/DataHolder;

.field private h:Landroid/os/ParcelFileDescriptor;

.field private i:J

.field private j:[B

.field private k:[B

.field private l:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/f/a/d/d/b;

    new-instance v0, Lg/f/a/d/d/p;

    invoke-direct {v0}, Lg/f/a/d/d/p;-><init>()V

    sput-object v0, Lg/f/a/d/d/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lg/f/a/d/d/b;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Landroid/os/ParcelFileDescriptor;J[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Landroid/os/ParcelFileDescriptor;J[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput-object p1, p0, Lg/f/a/d/d/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lg/f/a/d/d/b;->g:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lg/f/a/d/d/b;->h:Landroid/os/ParcelFileDescriptor;

    iput-wide p4, p0, Lg/f/a/d/d/b;->i:J

    iput-object p6, p0, Lg/f/a/d/d/b;->j:[B

    return-void
.end method

.method private final D1()Ljava/io/FileOutputStream;
    .locals 5

    iget-object v0, p0, Lg/f/a/d/d/b;->l:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "xlb"

    const-string v3, ".tmp"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lg/f/a/d/d/b;->h:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    throw v1

    :catch_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return-object v1
.end method

.method private static E1(Ljava/io/Closeable;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public A1()J
    .locals 2

    iget-wide v0, p0, Lg/f/a/d/d/b;->i:J

    return-wide v0
.end method

.method public B1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/f/a/d/d/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public C1()[B
    .locals 1

    iget-object v0, p0, Lg/f/a/d/d/b;->j:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lg/f/a/d/d/b;->h:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/f/a/d/d/b;->k:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lg/f/a/d/d/b;->D1()Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v2, p0, Lg/f/a/d/d/b;->k:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lg/f/a/d/d/b;->k:[B

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lg/f/a/d/d/b;->E1(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lg/f/a/d/d/b;->E1(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    invoke-static {v0}, Lg/f/a/d/d/b;->E1(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    or-int/2addr p2, v1

    :goto_1
    invoke-static {p0, p1, p2}, Lg/f/a/d/d/p;->a(Lg/f/a/d/d/b;Landroid/os/Parcel;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg/f/a/d/d/b;->h:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public y1()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lg/f/a/d/d/b;->g:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public z1()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lg/f/a/d/d/b;->h:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
