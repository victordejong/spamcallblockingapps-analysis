.class public Ln3/q/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/q/a/a$b;,
        Ln3/q/a/a$d;,
        Ln3/q/a/a$c;,
        Ln3/q/a/a$e;
    }
.end annotation


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[B

.field public static final D:[B

.field public static E:Ljava/text/SimpleDateFormat;

.field public static F:Ljava/text/SimpleDateFormat;

.field public static final G:[Ljava/lang/String;

.field public static final H:[I

.field public static final I:[B

.field public static final J:[Ln3/q/a/a$d;

.field public static final K:[Ln3/q/a/a$d;

.field public static final L:[Ln3/q/a/a$d;

.field public static final M:[Ln3/q/a/a$d;

.field public static final N:[Ln3/q/a/a$d;

.field public static final O:Ln3/q/a/a$d;

.field public static final P:[Ln3/q/a/a$d;

.field public static final Q:[Ln3/q/a/a$d;

.field public static final R:[Ln3/q/a/a$d;

.field public static final S:[Ln3/q/a/a$d;

.field public static final T:[[Ln3/q/a/a$d;

.field public static final U:[Ln3/q/a/a$d;

.field public static final V:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ln3/q/a/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final W:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln3/q/a/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z:Ljava/nio/charset/Charset;

.field public static final a0:[B

.field public static final b0:[B

.field public static final m:Z

.field public static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:[I

.field public static final q:[I

.field public static final r:[B

.field public static final s:[B

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/FileDescriptor;

.field public c:I

.field public final d:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln3/q/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/nio/ByteOrder;

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ln3/q/a/a;->m:Z

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v2, v3, v8

    const/16 v10, 0x8

    .line 6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Ln3/q/a/a;->n:Ljava/util/List;

    new-array v3, v0, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v1

    .line 10
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Ln3/q/a/a;->o:Ljava/util/List;

    new-array v3, v1, [I

    .line 11
    fill-array-data v3, :array_0

    sput-object v3, Ln3/q/a/a;->p:[I

    new-array v3, v4, [I

    aput v10, v3, v6

    .line 12
    sput-object v3, Ln3/q/a/a;->q:[I

    new-array v3, v1, [B

    .line 13
    fill-array-data v3, :array_1

    sput-object v3, Ln3/q/a/a;->r:[B

    new-array v3, v0, [B

    .line 14
    fill-array-data v3, :array_2

    sput-object v3, Ln3/q/a/a;->s:[B

    new-array v3, v0, [B

    .line 15
    fill-array-data v3, :array_3

    sput-object v3, Ln3/q/a/a;->t:[B

    new-array v3, v0, [B

    .line 16
    fill-array-data v3, :array_4

    sput-object v3, Ln3/q/a/a;->u:[B

    new-array v3, v7, [B

    .line 17
    fill-array-data v3, :array_5

    sput-object v3, Ln3/q/a/a;->v:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    .line 18
    fill-array-data v12, :array_6

    sput-object v12, Ln3/q/a/a;->w:[B

    new-array v12, v10, [B

    .line 19
    fill-array-data v12, :array_7

    sput-object v12, Ln3/q/a/a;->x:[B

    new-array v12, v0, [B

    .line 20
    fill-array-data v12, :array_8

    sput-object v12, Ln3/q/a/a;->y:[B

    new-array v12, v0, [B

    .line 21
    fill-array-data v12, :array_9

    sput-object v12, Ln3/q/a/a;->z:[B

    new-array v12, v0, [B

    .line 22
    fill-array-data v12, :array_a

    sput-object v12, Ln3/q/a/a;->A:[B

    new-array v12, v0, [B

    .line 23
    fill-array-data v12, :array_b

    sput-object v12, Ln3/q/a/a;->B:[B

    new-array v12, v0, [B

    .line 24
    fill-array-data v12, :array_c

    sput-object v12, Ln3/q/a/a;->C:[B

    new-array v12, v0, [B

    .line 25
    fill-array-data v12, :array_d

    sput-object v12, Ln3/q/a/a;->D:[B

    .line 26
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    const-string v3, "VP8X"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 27
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8L"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8 "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANIM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANMF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    const-string v29, "IFD"

    .line 31
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ln3/q/a/a;->G:[Ljava/lang/String;

    const/16 v3, 0xe

    new-array v12, v3, [I

    .line 32
    fill-array-data v12, :array_e

    sput-object v12, Ln3/q/a/a;->H:[I

    new-array v12, v10, [B

    .line 33
    fill-array-data v12, :array_f

    sput-object v12, Ln3/q/a/a;->I:[B

    const/16 v12, 0x2a

    new-array v12, v12, [Ln3/q/a/a$d;

    .line 34
    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v3, v10, v7, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v3, v7, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v4

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v3, v7, v10, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v8

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v3, v7, v10, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v1

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v3, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v0

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "Compression"

    const/16 v10, 0x103

    invoke-direct {v3, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v14

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v3, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v3, v7, v10, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "Make"

    const/16 v10, 0x10f

    invoke-direct {v3, v7, v10, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "Model"

    const/16 v10, 0x110

    invoke-direct {v3, v7, v10, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v10, v7, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xa

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v3, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "SamplesPerPixel"

    const/16 v7, 0x115

    invoke-direct {v3, v10, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "RowsPerStrip"

    const/16 v7, 0x116

    invoke-direct {v3, v10, v7, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xd

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "StripByteCounts"

    const/16 v7, 0x117

    invoke-direct {v3, v10, v7, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xe

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v3, v7, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "YResolution"

    const/16 v7, 0x11b

    invoke-direct {v3, v10, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "PlanarConfiguration"

    const/16 v7, 0x11c

    invoke-direct {v3, v10, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "ResolutionUnit"

    const/16 v7, 0x128

    invoke-direct {v3, v10, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "TransferFunction"

    const/16 v7, 0x12d

    invoke-direct {v3, v10, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "Software"

    const/16 v7, 0x131

    invoke-direct {v3, v10, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "DateTime"

    const/16 v7, 0x132

    invoke-direct {v3, v10, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v3, v7, v10, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v7, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v3, v7, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x17

    aput-object v3, v12, v7

    new-instance v3, Ln3/q/a/a$d;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v3, v10, v6, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "SubIFDPointer"

    const/16 v10, 0x14a

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v3, v6, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v3, v6, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v3, v6, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v3, v6, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "Copyright"

    const v10, 0x8298

    invoke-direct {v3, v6, v10, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "SensorTopBorder"

    invoke-direct {v3, v6, v0, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v3, v6, v14, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "SensorBottomBorder"

    const/4 v10, 0x6

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "SensorRightBorder"

    const/4 v10, 0x7

    invoke-direct {v3, v6, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "ISO"

    invoke-direct {v3, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "JpgFromRaw"

    const/16 v7, 0x2e

    invoke-direct {v3, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v3, v12, v6

    new-instance v3, Ln3/q/a/a$d;

    const-string v6, "Xmp"

    const/16 v7, 0x2bc

    invoke-direct {v3, v6, v7, v4}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v3, v12, v6

    sput-object v12, Ln3/q/a/a;->J:[Ln3/q/a/a$d;

    const/16 v3, 0x4a

    new-array v3, v3, [Ln3/q/a/a$d;

    .line 35
    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v6, v7, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "FNumber"

    const v10, 0x829d

    invoke-direct {v6, v7, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v6, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v8

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v6, v7, v10, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v1

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v6, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v0

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "OECF"

    const v10, 0x8828

    const/4 v4, 0x7

    invoke-direct {v6, v7, v10, v4}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v14

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v6, v7, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v6, v7, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "RecommendedExposureIndex"

    const v7, 0x8832

    invoke-direct {v4, v6, v7, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ISOSpeed"

    const v7, 0x8833

    invoke-direct {v4, v6, v7, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v7, 0x8834

    invoke-direct {v4, v6, v7, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ISOSpeedLatitudezzz"

    const v7, 0x8835

    invoke-direct {v4, v6, v7, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ExifVersion"

    const v7, 0x9000

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "DateTimeOriginal"

    const v7, 0x9003

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "DateTimeDigitized"

    const v7, 0x9004

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "OffsetTime"

    const v7, 0x9010

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "OffsetTimeOriginal"

    const v7, 0x9011

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "OffsetTimeDigitized"

    const v7, 0x9012

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ComponentsConfiguration"

    const v7, 0x9101

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "CompressedBitsPerPixel"

    const v7, 0x9102

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ShutterSpeedValue"

    const v7, 0x9201

    const/16 v10, 0xa

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ApertureValue"

    const v7, 0x9202

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "BrightnessValue"

    const v7, 0x9203

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ExposureBiasValue"

    const v7, 0x9204

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "MaxApertureValue"

    const v7, 0x9205

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubjectDistance"

    const v7, 0x9206

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "MeteringMode"

    const v7, 0x9207

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "LightSource"

    const v7, 0x9208

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "Flash"

    const v7, 0x9209

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FocalLength"

    const v7, 0x920a

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubjectArea"

    const v7, 0x9214

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "MakerNote"

    const v7, 0x927c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "UserComment"

    const v7, 0x9286

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubSecTime"

    const v7, 0x9290

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubSecTimeOriginal"

    const v7, 0x9291

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubSecTimeDigitized"

    const v7, 0x9292

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FlashpixVersion"

    const v7, 0xa000

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ColorSpace"

    const v7, 0xa001

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "PixelXDimension"

    const v7, 0xa002

    invoke-direct {v4, v6, v7, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "PixelYDimension"

    const v7, 0xa003

    invoke-direct {v4, v6, v7, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "RelatedSoundFile"

    const v7, 0xa004

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v4, v6, v7, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FlashEnergy"

    const v7, 0xa20b

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SpatialFrequencyResponse"

    const v7, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FocalPlaneXResolution"

    const v7, 0xa20e

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FocalPlaneYResolution"

    const v7, 0xa20f

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FocalPlaneResolutionUnit"

    const v7, 0xa210

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubjectLocation"

    const v7, 0xa214

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ExposureIndex"

    const v7, 0xa215

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SensingMethod"

    const v7, 0xa217

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FileSource"

    const v7, 0xa300

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SceneType"

    const v7, 0xa301

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "CFAPattern"

    const v7, 0xa302

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "CustomRendered"

    const v7, 0xa401

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ExposureMode"

    const v7, 0xa402

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "WhiteBalance"

    const v7, 0xa403

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "DigitalZoomRatio"

    const v7, 0xa404

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "FocalLengthIn35mmFilm"

    const v7, 0xa405

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SceneCaptureType"

    const v7, 0xa406

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "GainControl"

    const v7, 0xa407

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "Contrast"

    const v7, 0xa408

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "Saturation"

    const v7, 0xa409

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "Sharpness"

    const v7, 0xa40a

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "DeviceSettingDescription"

    const v7, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "SubjectDistanceRange"

    const v7, 0xa40c

    invoke-direct {v4, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "ImageUniqueID"

    const v7, 0xa420

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "CameraOwnerName"

    const v7, 0xa430

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "BodySerialNumber"

    const v7, 0xa431

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "LensSpecification"

    const v7, 0xa432

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "LensMake"

    const v7, 0xa433

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "LensModel"

    const v7, 0xa434

    invoke-direct {v4, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "Gamma"

    const v7, 0xa500

    invoke-direct {v4, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "DNGVersion"

    const v7, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-instance v4, Ln3/q/a/a$d;

    const-string v6, "DefaultCropSize"

    const v7, 0xc620

    invoke-direct {v4, v6, v7, v1, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v3, v6

    sput-object v3, Ln3/q/a/a;->K:[Ln3/q/a/a$d;

    const/16 v4, 0x20

    new-array v4, v4, [Ln3/q/a/a$d;

    .line 36
    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v0}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Ln3/q/a/a$d;

    const-string v7, "GPSLatitudeRef"

    invoke-direct {v6, v7, v0, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v0

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSLatitude"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v8, v14, v7}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v0, v4, v8

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v0, v6, v1, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v0, v6, v10, v14, v7}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v0, v4, v10

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSAltitudeRef"

    const/4 v7, 0x1

    invoke-direct {v0, v6, v14, v7}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSAltitude"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSTimeStamp"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSSatellites"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSStatus"

    const/16 v7, 0x9

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSMeasureMode"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDOP"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSSpeedRef"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSSpeed"

    const/16 v7, 0xd

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSTrack"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSImgDirectionRef"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSImgDirection"

    const/16 v7, 0x11

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSMapDatum"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v7, 0x13

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestLatitude"

    const/16 v7, 0x14

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v7, 0x15

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestLongitude"

    const/16 v7, 0x16

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestBearingRef"

    const/16 v7, 0x17

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestBearing"

    const/16 v7, 0x18

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDestDistance"

    const/16 v7, 0x1a

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSProcessingMethod"

    const/16 v7, 0x1b

    const/4 v10, 0x7

    invoke-direct {v0, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSAreaInformation"

    const/16 v7, 0x1c

    invoke-direct {v0, v6, v7, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDateStamp"

    const/16 v7, 0x1d

    invoke-direct {v0, v6, v7, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSDifferential"

    const/16 v7, 0x1e

    invoke-direct {v0, v6, v7, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v4, v6

    new-instance v0, Ln3/q/a/a$d;

    const-string v6, "GPSHPositioningError"

    const/16 v7, 0x1f

    invoke-direct {v0, v6, v7, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v4, v6

    sput-object v4, Ln3/q/a/a;->L:[Ln3/q/a/a$d;

    const/4 v0, 0x1

    new-array v6, v0, [Ln3/q/a/a$d;

    .line 37
    new-instance v7, Ln3/q/a/a$d;

    const-string v10, "InteroperabilityIndex"

    invoke-direct {v7, v10, v0, v8}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    sput-object v6, Ln3/q/a/a;->M:[Ln3/q/a/a$d;

    const/16 v7, 0x25

    new-array v7, v7, [Ln3/q/a/a$d;

    .line 38
    new-instance v10, Ln3/q/a/a$d;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v1, 0x4

    invoke-direct {v10, v14, v8, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v0

    new-instance v0, Ln3/q/a/a$d;

    const-string v8, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v0, v8, v10, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v7, v8

    new-instance v0, Ln3/q/a/a$d;

    const-string v8, "ThumbnailImageWidth"

    const/16 v10, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v10, v14, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-instance v0, Ln3/q/a/a$d;

    const-string v8, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v0, v8, v10, v14, v1}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    aput-object v0, v7, v14

    new-instance v0, Ln3/q/a/a$d;

    const-string v8, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v0, v8, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v1, v8, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v1, v8, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v1, v8, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v1, v8, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v14, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v1, v8, v14, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x12

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x13

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "Software"

    const/16 v8, 0x131

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x15

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x17

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x19

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1d

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1e

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1f

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "Copyright"

    const v8, 0x8298

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x21

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x22

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v0, v1, v8, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    aput-object v0, v7, v1

    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x24

    aput-object v0, v7, v1

    sput-object v7, Ln3/q/a/a;->N:[Ln3/q/a/a$d;

    .line 39
    new-instance v0, Ln3/q/a/a$d;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v1, v8, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln3/q/a/a;->O:Ln3/q/a/a$d;

    new-array v0, v14, [Ln3/q/a/a$d;

    .line 40
    new-instance v1, Ln3/q/a/a$d;

    const-string v8, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v14, 0x7

    invoke-direct {v1, v8, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v1, v0, v8

    new-instance v1, Ln3/q/a/a$d;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v8, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Ln3/q/a/a$d;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v8, v10, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    sput-object v0, Ln3/q/a/a;->P:[Ln3/q/a/a$d;

    new-array v1, v8, [Ln3/q/a/a$d;

    .line 41
    new-instance v8, Ln3/q/a/a$d;

    const-string v10, "PreviewImageStart"

    move-object/from16 v16, v11

    const/16 v11, 0x101

    invoke-direct {v8, v10, v11, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v8, v1, v10

    new-instance v8, Ln3/q/a/a$d;

    const-string v10, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v10, v11, v14}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v8, v1, v10

    sput-object v1, Ln3/q/a/a;->Q:[Ln3/q/a/a$d;

    new-array v8, v10, [Ln3/q/a/a$d;

    .line 42
    new-instance v11, Ln3/q/a/a$d;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v20, v13

    const/4 v13, 0x3

    invoke-direct {v11, v14, v10, v13}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v11, v8, v10

    sput-object v8, Ln3/q/a/a;->R:[Ln3/q/a/a$d;

    const/4 v11, 0x1

    new-array v14, v11, [Ln3/q/a/a$d;

    .line 43
    new-instance v11, Ln3/q/a/a$d;

    const-string v10, "ColorSpace"

    move-object/from16 v21, v2

    const/16 v2, 0x37

    invoke-direct {v11, v10, v2, v13}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v11, v14, v2

    sput-object v14, Ln3/q/a/a;->S:[Ln3/q/a/a$d;

    const/16 v10, 0xa

    new-array v10, v10, [[Ln3/q/a/a$d;

    aput-object v12, v10, v2

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    aput-object v6, v10, v13

    const/4 v2, 0x4

    aput-object v7, v10, v2

    const/4 v3, 0x5

    aput-object v12, v10, v3

    const/4 v3, 0x6

    aput-object v0, v10, v3

    const/4 v0, 0x7

    aput-object v1, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    .line 44
    sput-object v10, Ln3/q/a/a;->T:[[Ln3/q/a/a$d;

    new-array v0, v3, [Ln3/q/a/a$d;

    .line 45
    new-instance v1, Ln3/q/a/a$d;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v1, v3, v4, v2}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Ln3/q/a/a$d;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v3, v4, v2}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ln3/q/a/a$d;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v3, v4, v2}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ln3/q/a/a$d;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v3, v4, v2}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Ln3/q/a/a$d;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Ln3/q/a/a$d;

    const-string v2, "ImageProcessingIFDPointer"

    const/16 v3, 0x2040

    invoke-direct {v1, v2, v3, v6}, Ln3/q/a/a$d;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ln3/q/a/a;->U:[Ln3/q/a/a$d;

    .line 46
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Ln3/q/a/a;->V:[Ljava/util/HashMap;

    .line 47
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Ln3/q/a/a;->W:[Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v3, "ExposureTime"

    const-string v4, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ln3/q/a/a;->X:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ln3/q/a/a;->Y:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 50
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ln3/q/a/a;->Z:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Ln3/q/a/a;->a0:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Ln3/q/a/a;->b0:[B

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Ln3/q/a/a;->E:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    .line 54
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Ln3/q/a/a;->F:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 56
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    .line 57
    :goto_0
    sget-object v0, Ln3/q/a/a;->T:[[Ln3/q/a/a$d;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    .line 58
    sget-object v1, Ln3/q/a/a;->V:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 59
    sget-object v1, Ln3/q/a/a;->W:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 60
    aget-object v0, v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 61
    sget-object v4, Ln3/q/a/a;->V:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget v6, v3, Ln3/q/a/a$d;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v4, Ln3/q/a/a;->W:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget-object v6, v3, Ln3/q/a/a$d;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Ln3/q/a/a;->Y:Ljava/util/HashMap;

    sget-object v1, Ln3/q/a/a;->U:[Ln3/q/a/a$d;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Ln3/q/a/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 64
    aget-object v2, v1, v2

    iget v2, v2, Ln3/q/a/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 65
    aget-object v2, v1, v2

    iget v2, v2, Ln3/q/a/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 66
    aget-object v2, v1, v2

    iget v2, v2, Ln3/q/a/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 67
    aget-object v2, v1, v2

    iget v2, v2, Ln3/q/a/a$d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 68
    aget-object v1, v1, v2

    iget v1, v1, Ln3/q/a/a$d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 71
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_3
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_8
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_b
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_d
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/q/a/a;->T:[[Ln3/q/a/a$d;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Ln3/q/a/a;->e:Ljava/util/Set;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    const-string v0, "filename cannot be null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Ln3/q/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    .line 9
    :try_start_2
    sget v4, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 10
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Ln3/q/a/a;->b:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 11
    :cond_0
    iput-object v0, p0, Ln3/q/a/a;->b:Ljava/io/FileDescriptor;

    .line 12
    :goto_1
    invoke-virtual {p0, v1}, Ln3/q/a/a;->r(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 14
    throw p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_1

    .line 15
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception p1

    .line 16
    throw p1

    .line 17
    :catch_4
    :cond_1
    :goto_3
    throw p1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, [I

    .line 3
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 3
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(Ln3/q/a/a$b;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    .line 3
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    .line 5
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/q/a/a$c;

    .line 7
    iget-object v3, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/q/a/a$c;

    .line 9
    iget-object v4, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/q/a/a$c;

    const-string v5, "ImageWidth"

    const-string v6, "ImageLength"

    if-eqz v0, :cond_5

    .line 11
    iget p1, v0, Ln3/q/a/a$c;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v1, :cond_2

    .line 12
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 13
    invoke-virtual {v0, p1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln3/q/a/a$e;

    if-eqz p1, :cond_1

    .line 14
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v0, v1}, Ln3/q/a/a$c;->c(Ln3/q/a/a$e;Ljava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v0

    .line 17
    aget-object p1, p1, v2

    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 18
    invoke-static {p1, v1}, Ln3/q/a/a$c;->c(Ln3/q/a/a$e;Ljava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 20
    :cond_2
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 21
    invoke-virtual {v0, p1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 22
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 24
    invoke-static {v0, v1}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v0

    .line 25
    aget p1, p1, v2

    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 26
    invoke-static {p1, v1}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object p1

    .line 27
    :goto_1
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 29
    :cond_4
    :goto_2
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 30
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 31
    iget-object v0, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 32
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 33
    iget-object v3, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_8

    if-le v1, v2, :cond_8

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 34
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 35
    invoke-static {v0, p1}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object p1

    .line 36
    iget-object v0, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 37
    invoke-static {v1, v0}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v0

    .line 38
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 40
    :cond_6
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    .line 41
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    .line 42
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    .line 43
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    if-eqz v0, :cond_7

    if-nez v1, :cond_8

    .line 44
    :cond_7
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    .line 46
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 48
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 49
    invoke-virtual {v0, v1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 50
    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 51
    invoke-virtual {v0, v2}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    .line 52
    invoke-virtual {p1, v2, v3}, Ln3/q/a/a$b;->d(J)V

    .line 53
    new-array v0, v0, [B

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 55
    new-instance p1, Ln3/q/a/a$b;

    invoke-direct {p1, v0}, Ln3/q/a/a$b;-><init>([B)V

    invoke-virtual {p0, p1, v1, p2}, Ln3/q/a/a;->h(Ln3/q/a/a$b;II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final B()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    invoke-virtual {p0, v0, v1}, Ln3/q/a/a;->z(II)V

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v0, v2}, Ln3/q/a/a;->z(II)V

    .line 3
    invoke-virtual {p0, v1, v2}, Ln3/q/a/a;->z(II)V

    .line 4
    iget-object v3, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 5
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/q/a/a$c;

    .line 6
    iget-object v5, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 7
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/q/a/a$c;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 8
    iget-object v5, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ln3/q/a/a;->q(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v0, v1

    aput-object v3, v0, v2

    .line 13
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 14
    :cond_1
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ln3/q/a/a;->q(Ljava/util/HashMap;)Z

    move-result v0

    return-void
.end method

.method public final a()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 1
    invoke-virtual {p0, v0}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 2
    invoke-virtual {p0, v2}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 4
    invoke-static {v0}, Ln3/q/a/a$c;->a(Ljava/lang/String;)Ln3/q/a/a$c;

    move-result-object v0

    .line 5
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 6
    invoke-virtual {p0, v0}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 8
    invoke-static {v3, v4, v5}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 10
    invoke-virtual {p0, v0}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v3, v4, v5}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 14
    invoke-virtual {p0, v0}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 16
    invoke-static {v3, v4, v2}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 18
    invoke-virtual {p0, v0}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {v3, v4, v2}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a;->f(Ljava/lang/String;)Ln3/q/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget-object v2, Ln3/q/a/a;->X:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ln3/q/a/a$c;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget p1, v0, Ln3/q/a/a$c;->a:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    return-object v1

    .line 6
    :cond_1
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln3/q/a/a$e;

    if-eqz p1, :cond_3

    .line 7
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    aget-object v2, p1, v1

    iget-wide v2, v2, Ln3/q/a/a$e;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Ln3/q/a/a$e;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Ln3/q/a/a$e;->a:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Ln3/q/a/a$e;->b:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Ln3/q/a/a$e;->a:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Ln3/q/a/a$e;->b:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 12
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    return-object v1

    .line 14
    :cond_4
    :try_start_0
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ln3/q/a/a$c;->e(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method public e(Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a;->f(Ljava/lang/String;)Ln3/q/a/a$c;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public final f(Ljava/lang/String;)Ln3/q/a/a$c;
    .locals 2

    const-string v0, "ISOSpeedRatings"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Ln3/q/a/a;->T:[[Ln3/q/a/a$d;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ln3/q/a/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    .line 1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Ln3/q/a/a$a;

    invoke-direct {v2, p0, p1}, Ln3/q/a/a$a;-><init>(Ln3/q/a/a;Ln3/q/a/a$b;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 v2, 0x21

    .line 3
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    .line 4
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    .line 5
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    .line 6
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/16 v0, 0x1d

    .line 8
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x1e

    .line 9
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f

    .line 10
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    .line 12
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x13

    .line 13
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x18

    .line 14
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v0, v6

    move-object v4, v0

    :goto_0
    const/4 v5, 0x0

    if-eqz v6, :cond_2

    .line 15
    iget-object v7, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    const-string v8, "ImageWidth"

    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-static {v6, v9}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v6

    .line 17
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 18
    iget-object v6, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    const-string v7, "ImageLength"

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v8, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-static {v0, v8}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v0

    .line 20
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x6

    if-eqz v4, :cond_7

    const/4 v6, 0x1

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x5a

    if-eq v4, v7, :cond_6

    const/16 v7, 0xb4

    if-eq v4, v7, :cond_5

    const/16 v7, 0x10e

    if-eq v4, v7, :cond_4

    goto :goto_1

    :cond_4
    const/16 v6, 0x8

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    goto :goto_1

    :cond_6
    move v6, v0

    .line 22
    :goto_1
    iget-object v4, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    const-string v7, "Orientation"

    iget-object v8, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 23
    invoke-static {v6, v8}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v6

    .line 24
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v0, :cond_b

    int-to-long v6, v2

    .line 27
    invoke-virtual {p1, v6, v7}, Ln3/q/a/a$b;->d(J)V

    new-array v4, v0, [B

    .line 28
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_a

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, -0x6

    .line 29
    sget-object v0, Ln3/q/a/a;->a0:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    new-array v0, v3, [B

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 32
    iput v2, p0, Ln3/q/a/a;->i:I

    .line 33
    invoke-virtual {p0, v0, v5}, Ln3/q/a/a;->v([BI)V

    goto :goto_2

    .line 34
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_c
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 39
    throw p1
.end method

.method public final h(Ln3/q/a/a$b;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1
    sget-boolean v3, Ln3/q/a/a;->m:Z

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJpegAttributes starting with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ln3/q/a/a$b;->mark(I)V

    .line 4
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 5
    iput-object v4, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readByte()B

    move-result v4

    const-string v5, "Invalid marker: "

    const/4 v6, -0x1

    if-ne v4, v6, :cond_11

    .line 7
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-ne v7, v8, :cond_10

    const/4 v4, 0x2

    move v5, v4

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readByte()B

    move-result v7

    if-ne v7, v6, :cond_f

    const/4 v7, 0x1

    add-int/2addr v4, v7

    .line 9
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readByte()B

    move-result v8

    .line 10
    sget-boolean v9, Ln3/q/a/a;->m:Z

    if-eqz v9, :cond_1

    and-int/lit16 v10, v8, 0xff

    .line 11
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_1
    add-int/2addr v4, v7

    const/16 v10, -0x27

    if-eq v8, v10, :cond_e

    const/16 v10, -0x26

    if-ne v8, v10, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v10

    sub-int/2addr v10, v5

    add-int/2addr v4, v5

    if-eqz v9, :cond_3

    and-int/lit16 v5, v8, 0xff

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_3
    const-string v5, "Invalid length"

    if-ltz v10, :cond_d

    const/16 v9, -0x1f

    if-eq v8, v9, :cond_7

    const/4 v9, -0x2

    if-eq v8, v9, :cond_5

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    packed-switch v8, :pswitch_data_3

    move v3, v10

    goto/16 :goto_2

    .line 14
    :pswitch_0
    invoke-virtual {v1, v7}, Ln3/q/a/a$b;->skipBytes(I)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 15
    iget-object v3, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    .line 16
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 17
    invoke-static {v7, v8, v9}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v7

    const-string v8, "ImageLength"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v3, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    .line 19
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {v7, v8, v9}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v7

    const-string v8, "ImageWidth"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v10, -0x5

    goto/16 :goto_2

    .line 21
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid SOFx"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_5
    new-array v8, v10, [B

    .line 23
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v10, :cond_6

    const-string v9, "UserComment"

    .line 24
    invoke-virtual {v0, v9}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    .line 25
    iget-object v10, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v7, v10, v7

    new-instance v10, Ljava/lang/String;

    sget-object v11, Ln3/q/a/a;->Z:Ljava/nio/charset/Charset;

    invoke-direct {v10, v8, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v10}, Ln3/q/a/a$c;->a(Ljava/lang/String;)Ln3/q/a/a$c;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 26
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_7
    new-array v7, v10, [B

    .line 28
    invoke-virtual {v1, v7}, Ln3/q/a/a$b;->readFully([B)V

    add-int v8, v4, v10

    .line 29
    sget-object v9, Ln3/q/a/a;->a0:[B

    invoke-static {v7, v9}, Ln3/q/a/a;->y([B[B)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 30
    array-length v3, v9

    invoke-static {v7, v3, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    add-int v4, p2, v4

    .line 31
    array-length v7, v9

    add-int/2addr v4, v7

    iput v4, v0, Ln3/q/a/a;->i:I

    .line 32
    invoke-virtual {v0, v3, v2}, Ln3/q/a/a;->v([BI)V

    .line 33
    new-instance v4, Ln3/q/a/a$b;

    invoke-direct {v4, v3}, Ln3/q/a/a$b;-><init>([B)V

    invoke-virtual {v0, v4}, Ln3/q/a/a;->x(Ln3/q/a/a$b;)V

    goto :goto_1

    .line 34
    :cond_8
    sget-object v9, Ln3/q/a/a;->b0:[B

    invoke-static {v7, v9}, Ln3/q/a/a;->y([B[B)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 35
    array-length v11, v9

    add-int/2addr v4, v11

    .line 36
    array-length v9, v9

    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const-string v9, "Xmp"

    .line 37
    invoke-virtual {v0, v9}, Ln3/q/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_9

    .line 38
    iget-object v10, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v10, v3

    new-instance v10, Ln3/q/a/a$c;

    const/4 v12, 0x1

    array-length v13, v7

    int-to-long v14, v4

    move-object v11, v10

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Ln3/q/a/a$c;-><init>(IIJ[B)V

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_1
    const/4 v3, 0x0

    move v4, v8

    :cond_a
    :goto_2
    if-ltz v3, :cond_c

    .line 39
    invoke-virtual {v1, v3}, Ln3/q/a/a$b;->skipBytes(I)I

    move-result v5

    if-ne v5, v3, :cond_b

    add-int/2addr v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 40
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid JPEG segment"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_e
    :goto_3
    iget-object v2, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 44
    iput-object v2, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    return-void

    .line 45
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid marker:"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v7, 0xff

    invoke-static {v3, v2}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_10
    new-instance v1, Ljava/io/IOException;

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3, v2}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_11
    new-instance v1, Ljava/io/IOException;

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3, v2}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/io/BufferedInputStream;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x1388

    .line 1
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v3, v2, [B

    .line 2
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v4, 0x0

    .line 4
    :goto_0
    sget-object v5, Ln3/q/a/a;->r:[B

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v4, v6, :cond_1

    .line 5
    aget-byte v6, v3, v4

    aget-byte v5, v5, v4

    if-eq v6, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x4

    if-eqz v4, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v6, "FUJIFILMCCD-RAW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v6, 0x0

    .line 7
    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_4

    .line 8
    aget-byte v8, v3, v6

    aget-byte v9, v4, v6

    if-eq v8, v9, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_3
    if-eqz v4, :cond_5

    const/16 v0, 0x9

    return v0

    :cond_5
    const/4 v4, 0x0

    .line 9
    :try_start_0
    new-instance v6, Ln3/q/a/a$b;

    invoke-direct {v6, v3}, Ln3/q/a/a$b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {v6}, Ln3/q/a/a$b;->readInt()I

    move-result v8

    int-to-long v8, v8

    new-array v10, v5, [B

    .line 11
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    .line 12
    sget-object v11, Ln3/q/a/a;->s:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_8

    :cond_6
    const-wide/16 v10, 0x1

    cmp-long v12, v8, v10

    const-wide/16 v13, 0x10

    const-wide/16 v15, 0x8

    if-nez v12, :cond_7

    .line 13
    invoke-virtual {v6}, Ln3/q/a/a$b;->readLong()J

    move-result-wide v8

    cmp-long v12, v8, v13

    if-gez v12, :cond_8

    goto :goto_8

    :cond_7
    move-wide v13, v15

    :cond_8
    int-to-long v0, v2

    cmp-long v2, v8, v0

    if-lez v2, :cond_9

    move-wide v8, v0

    :cond_9
    sub-long/2addr v8, v13

    cmp-long v0, v8, v15

    if-gez v0, :cond_a

    goto :goto_8

    :cond_a
    new-array v0, v5, [B

    const-wide/16 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    const-wide/16 v14, 0x4

    .line 14
    div-long v14, v8, v14

    cmp-long v14, v1, v14

    if-gez v14, :cond_11

    .line 15
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-eq v14, v5, :cond_b

    goto :goto_8

    :cond_b
    cmp-long v14, v1, v10

    if-nez v14, :cond_c

    goto :goto_6

    .line 16
    :cond_c
    sget-object v14, Ln3/q/a/a;->t:[B

    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_d

    move v12, v7

    goto :goto_5

    .line 17
    :cond_d
    sget-object v14, Ln3/q/a/a;->u:[B

    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_e

    move v13, v7

    :cond_e
    :goto_5
    if-eqz v12, :cond_f

    if-eqz v13, :cond_f

    .line 18
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    move v0, v7

    goto :goto_9

    :cond_f
    :goto_6
    add-long/2addr v1, v10

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 19
    :cond_10
    throw v0

    :catch_0
    move-object v6, v4

    :catch_1
    if-eqz v6, :cond_12

    .line 20
    :cond_11
    :goto_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_12
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_13

    const/16 v0, 0xc

    return v0

    .line 21
    :cond_13
    :try_start_2
    new-instance v1, Ln3/q/a/a$b;

    invoke-direct {v1, v3}, Ln3/q/a/a$b;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v2, p0

    .line 22
    :try_start_3
    invoke-virtual {v2, v1}, Ln3/q/a/a;->u(Ln3/q/a/a$b;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, v2, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 23
    iput-object v0, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 24
    invoke-virtual {v1}, Ln3/q/a/a$b;->readShort()S

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v6, 0x4f52

    if-eq v0, v6, :cond_15

    const/16 v6, 0x5352

    if-ne v0, v6, :cond_14

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    goto :goto_b

    :cond_15
    :goto_a
    move v0, v7

    .line 25
    :goto_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v2, p0

    :goto_c
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 26
    :cond_16
    throw v0

    :catch_2
    move-object/from16 v2, p0

    move-object v1, v4

    :catch_3
    if-eqz v1, :cond_17

    .line 27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_17
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_18

    const/4 v0, 0x7

    return v0

    .line 28
    :cond_18
    :try_start_4
    new-instance v1, Ln3/q/a/a$b;

    invoke-direct {v1, v3}, Ln3/q/a/a$b;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 29
    :try_start_5
    invoke-virtual {v2, v1}, Ln3/q/a/a;->u(Ln3/q/a/a$b;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, v2, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 30
    iput-object v0, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 31
    invoke-virtual {v1}, Ln3/q/a/a$b;->readShort()S

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v4, 0x55

    if-ne v0, v4, :cond_19

    move v0, v7

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    .line 32
    :goto_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v4, v1

    goto :goto_f

    :catch_4
    move-object v4, v1

    goto :goto_10

    :catchall_5
    move-exception v0

    :goto_f
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 33
    :cond_1a
    throw v0

    :catch_5
    :goto_10
    if-eqz v4, :cond_1b

    .line 34
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1b
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1c

    const/16 v0, 0xa

    return v0

    :cond_1c
    const/4 v0, 0x0

    .line 35
    :goto_12
    sget-object v1, Ln3/q/a/a;->x:[B

    array-length v4, v1

    if-ge v0, v4, :cond_1e

    .line 36
    aget-byte v4, v3, v0

    aget-byte v1, v1, v0

    if-eq v4, v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_13

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    move v0, v7

    :goto_13
    if-eqz v0, :cond_1f

    const/16 v0, 0xd

    return v0

    :cond_1f
    const/4 v0, 0x0

    .line 37
    :goto_14
    sget-object v1, Ln3/q/a/a;->B:[B

    array-length v4, v1

    if-ge v0, v4, :cond_21

    .line 38
    aget-byte v4, v3, v0

    aget-byte v1, v1, v0

    if-eq v4, v1, :cond_20

    goto :goto_16

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_21
    const/4 v0, 0x0

    .line 39
    :goto_15
    sget-object v1, Ln3/q/a/a;->C:[B

    array-length v4, v1

    if-ge v0, v4, :cond_23

    .line 40
    sget-object v4, Ln3/q/a/a;->B:[B

    array-length v4, v4

    add-int/2addr v4, v0

    add-int/2addr v4, v5

    aget-byte v4, v3, v4

    aget-byte v1, v1, v0

    if-eq v4, v1, :cond_22

    :goto_16
    const/4 v7, 0x0

    goto :goto_17

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_23
    :goto_17
    if-eqz v7, :cond_24

    const/16 v0, 0xe

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Ln3/q/a/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a;->m(Ln3/q/a/a$b;)V

    .line 2
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    if-eqz p1, :cond_6

    .line 4
    new-instance v1, Ln3/q/a/a$b;

    iget-object p1, p1, Ln3/q/a/a$c;->d:[B

    invoke-direct {v1, p1}, Ln3/q/a/a$b;-><init>([B)V

    .line 5
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 6
    iput-object p1, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 7
    sget-object p1, Ln3/q/a/a;->v:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 8
    invoke-virtual {v1, v2}, Ln3/q/a/a$b;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 9
    invoke-virtual {v1, v3, v4}, Ln3/q/a/a$b;->d(J)V

    .line 10
    sget-object v3, Ln3/q/a/a;->w:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 11
    invoke-virtual {v1, v4}, Ln3/q/a/a$b;->readFully([B)V

    .line 12
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 13
    invoke-virtual {v1, v2, v3}, Ln3/q/a/a$b;->d(J)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 15
    invoke-virtual {v1, v2, v3}, Ln3/q/a/a$b;->d(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, v1, p1}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    .line 17
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 18
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    .line 19
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 21
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    if-eqz p1, :cond_6

    .line 25
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 26
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 27
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 28
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 29
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 30
    :cond_4
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 31
    invoke-static {v1, p1}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object p1

    .line 32
    iget-object v0, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 33
    invoke-static {v2, v0}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v0

    .line 34
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 36
    :cond_5
    :goto_1
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    :cond_6
    :goto_2
    return-void
.end method

.method public final k(Ln3/q/a/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln3/q/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ln3/q/a/a$b;->mark(I)V

    .line 4
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 5
    iput-object v1, p1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 6
    sget-object v1, Ln3/q/a/a;->x:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Ln3/q/a/a$b;->skipBytes(I)I

    .line 7
    array-length v1, v1

    add-int/2addr v1, v0

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ln3/q/a/a$b;->readInt()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v1, v3

    new-array v4, v3, [B

    .line 9
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v1, v3

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 10
    sget-object v3, Ln3/q/a/a;->z:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_1
    sget-object v3, Ln3/q/a/a;->A:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    sget-object v3, Ln3/q/a/a;->y:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    new-array v3, v2, [B

    .line 15
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 16
    invoke-virtual {p1}, Ln3/q/a/a$b;->readInt()I

    move-result p1

    .line 17
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 18
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 20
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    if-ne v4, p1, :cond_4

    .line 21
    iput v1, p0, Ln3/q/a/a;->i:I

    .line 22
    invoke-virtual {p0, v3, v0}, Ln3/q/a/a;->v([BI)V

    .line 23
    invoke-virtual {p0}, Ln3/q/a/a;->B()V

    .line 24
    new-instance p1, Ln3/q/a/a$b;

    invoke-direct {p1, v3}, Ln3/q/a/a$b;-><init>([B)V

    invoke-virtual {p0, p1}, Ln3/q/a/a;->x(Ln3/q/a/a$b;)V

    :goto_2
    return-void

    .line 25
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v4}, Ln3/q/a/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 29
    invoke-virtual {p1, v2}, Ln3/q/a/a$b;->skipBytes(I)I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 30
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ln3/q/a/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln3/q/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRafAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ln3/q/a/a$b;->mark(I)V

    const/16 v1, 0x54

    .line 4
    invoke-virtual {p1, v1}, Ln3/q/a/a$b;->skipBytes(I)I

    const/4 v1, 0x4

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v1, v1, [B

    .line 5
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 6
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 7
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 8
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 9
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 11
    new-array v3, v3, [B

    int-to-long v4, v2

    .line 12
    invoke-virtual {p1, v4, v5}, Ln3/q/a/a$b;->d(J)V

    .line 13
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 14
    new-instance v4, Ln3/q/a/a$b;

    invoke-direct {v4, v3}, Ln3/q/a/a$b;-><init>([B)V

    const/4 v3, 0x5

    .line 15
    invoke-virtual {p0, v4, v2, v3}, Ln3/q/a/a;->h(Ln3/q/a/a$b;II)V

    int-to-long v1, v1

    .line 16
    invoke-virtual {p1, v1, v2}, Ln3/q/a/a$b;->d(J)V

    .line 17
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 18
    iput-object v1, p1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 19
    invoke-virtual {p1}, Ln3/q/a/a$b;->readInt()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    invoke-virtual {p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v3

    .line 21
    invoke-virtual {p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v4

    .line 22
    sget-object v5, Ln3/q/a/a;->O:Ln3/q/a/a$d;

    iget v5, v5, Ln3/q/a/a$d;->a:I

    if-ne v3, v5, :cond_1

    .line 23
    invoke-virtual {p1}, Ln3/q/a/a$b;->readShort()S

    move-result v1

    .line 24
    invoke-virtual {p1}, Ln3/q/a/a$b;->readShort()S

    move-result p1

    .line 25
    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 26
    invoke-static {v1, v2}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v1

    .line 27
    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 28
    invoke-static {p1, v2}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object p1

    .line 29
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v1, v0

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 31
    :cond_1
    invoke-virtual {p1, v4}, Ln3/q/a/a$b;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m(Ln3/q/a/a$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/q/a/a$b;->available()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->s(Ln3/q/a/a$b;I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->A(Ln3/q/a/a$b;I)V

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->A(Ln3/q/a/a$b;I)V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->A(Ln3/q/a/a$b;I)V

    .line 6
    invoke-virtual {p0}, Ln3/q/a/a;->B()V

    .line 7
    iget p1, p0, Ln3/q/a/a;->c:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    if-eqz p1, :cond_0

    .line 10
    new-instance v1, Ln3/q/a/a$b;

    iget-object p1, p1, Ln3/q/a/a$c;->d:[B

    invoke-direct {v1, p1}, Ln3/q/a/a$b;-><init>([B)V

    .line 11
    iget-object p1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 12
    iput-object p1, v1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    const-wide/16 v2, 0x6

    .line 13
    invoke-virtual {v1, v2, v3}, Ln3/q/a/a$b;->d(J)V

    const/16 p1, 0x9

    .line 14
    invoke-virtual {p0, v1, p1}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    .line 15
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 16
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    if-eqz p1, :cond_0

    .line 17
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final n(Ln3/q/a/a$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln3/q/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRw2Attributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln3/q/a/a;->m(Ln3/q/a/a$b;)V

    .line 4
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "JpgFromRaw"

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    if-eqz p1, :cond_1

    .line 6
    new-instance v1, Ln3/q/a/a$b;

    iget-object v2, p1, Ln3/q/a/a$c;->d:[B

    invoke-direct {v1, v2}, Ln3/q/a/a$b;-><init>([B)V

    .line 7
    iget-wide v2, p1, Ln3/q/a/a$c;->c:J

    long-to-int p1, v2

    const/4 v2, 0x5

    invoke-virtual {p0, v1, p1, v2}, Ln3/q/a/a;->h(Ln3/q/a/a$b;II)V

    .line 8
    :cond_1
    iget-object p1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ISO"

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    .line 10
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final o(Ln3/q/a/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln3/q/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ln3/q/a/a$b;->mark(I)V

    .line 4
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 5
    iput-object v1, p1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 6
    sget-object v1, Ln3/q/a/a;->B:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ln3/q/a/a$b;->skipBytes(I)I

    .line 7
    invoke-virtual {p1}, Ln3/q/a/a$b;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 8
    sget-object v2, Ln3/q/a/a;->C:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Ln3/q/a/a$b;->skipBytes(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_0
    const/4 v3, 0x4

    :try_start_0
    new-array v4, v3, [B

    .line 9
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v2, v3

    .line 10
    invoke-virtual {p1}, Ln3/q/a/a$b;->readInt()I

    move-result v5

    add-int/2addr v2, v3

    .line 11
    sget-object v3, Ln3/q/a/a;->D:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    new-array v1, v5, [B

    .line 13
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v5, :cond_1

    .line 14
    iput v2, p0, Ln3/q/a/a;->i:I

    .line 15
    invoke-virtual {p0, v1, v0}, Ln3/q/a/a;->v([BI)V

    .line 16
    new-instance p1, Ln3/q/a/a$b;

    invoke-direct {p1, v1}, Ln3/q/a/a$b;-><init>([B)V

    invoke-virtual {p0, p1}, Ln3/q/a/a;->x(Ln3/q/a/a$b;)V

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v4}, Ln3/q/a/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    rem-int/lit8 v3, v5, 0x2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int v3, v2, v5

    if-ne v3, v1, :cond_4

    :goto_1
    return-void

    :cond_4
    const-string v4, "Encountered WebP file with invalid chunk size"

    if-gt v3, v1, :cond_6

    .line 20
    :try_start_1
    invoke-virtual {p1, v5}, Ln3/q/a/a$b;->skipBytes(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    add-int/2addr v2, v3

    goto :goto_0

    .line 21
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Ln3/q/a/a$b;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/q/a/a$c;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 3
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 5
    iget v1, p0, Ln3/q/a/a;->c:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 6
    iget v1, p0, Ln3/q/a/a;->j:I

    add-int/2addr v0, v1

    .line 7
    :cond_0
    iget v1, p1, Ln3/q/a/a$b;->c:I

    sub-int/2addr v1, v0

    .line 8
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez v0, :cond_1

    if-lez p2, :cond_1

    .line 9
    iget-object v1, p0, Ln3/q/a/a;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ln3/q/a/a;->b:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 10
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    :cond_1
    return-void
.end method

.method public final q(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    const-string v1, "ImageWidth"

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/q/a/a$c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r(Ljava/io/InputStream;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    :try_start_0
    sget-object v2, Ln3/q/a/a;->T:[[Ln3/q/a/a$d;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {p0, v1}, Ln3/q/a/a;->i(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Ln3/q/a/a;->c:I

    .line 5
    new-instance p1, Ln3/q/a/a$b;

    invoke-direct {p1, v1}, Ln3/q/a/a$b;-><init>(Ljava/io/InputStream;)V

    .line 6
    iget v1, p0, Ln3/q/a/a;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    invoke-virtual {p0, p1}, Ln3/q/a/a;->o(Ln3/q/a/a$b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 9
    sget-boolean p1, Ln3/q/a/a;->m:Z

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    :cond_1
    return-void

    .line 11
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p1}, Ln3/q/a/a;->k(Ln3/q/a/a$b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 13
    sget-boolean p1, Ln3/q/a/a;->m:Z

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    :cond_2
    return-void

    .line 15
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p1}, Ln3/q/a/a;->g(Ln3/q/a/a$b;)V

    goto :goto_1

    .line 16
    :pswitch_3
    invoke-virtual {p0, p1}, Ln3/q/a/a;->n(Ln3/q/a/a$b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 18
    sget-boolean p1, Ln3/q/a/a;->m:Z

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    :cond_3
    return-void

    .line 20
    :pswitch_4
    :try_start_3
    invoke-virtual {p0, p1}, Ln3/q/a/a;->l(Ln3/q/a/a$b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 22
    sget-boolean p1, Ln3/q/a/a;->m:Z

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    :cond_4
    return-void

    .line 24
    :pswitch_5
    :try_start_4
    invoke-virtual {p0, p1}, Ln3/q/a/a;->j(Ln3/q/a/a$b;)V

    goto :goto_1

    .line 25
    :pswitch_6
    invoke-virtual {p0, p1, v0, v0}, Ln3/q/a/a;->h(Ln3/q/a/a$b;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 27
    sget-boolean p1, Ln3/q/a/a;->m:Z

    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    :cond_5
    return-void

    .line 29
    :pswitch_7
    :try_start_5
    invoke-virtual {p0, p1}, Ln3/q/a/a;->m(Ln3/q/a/a$b;)V

    .line 30
    :goto_1
    iget v0, p0, Ln3/q/a/a;->i:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ln3/q/a/a$b;->d(J)V

    .line 31
    invoke-virtual {p0, p1}, Ln3/q/a/a;->x(Ln3/q/a/a$b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 33
    sget-boolean p1, Ln3/q/a/a;->m:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 34
    :catch_0
    :try_start_6
    sget-boolean p1, Ln3/q/a/a;->m:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 35
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    if-eqz p1, :cond_6

    .line 36
    :goto_2
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    :cond_6
    return-void

    .line 37
    :goto_3
    invoke-virtual {p0}, Ln3/q/a/a;->a()V

    .line 38
    sget-boolean v0, Ln3/q/a/a;->m:Z

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {p0}, Ln3/q/a/a;->t()V

    .line 40
    :cond_7
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Ln3/q/a/a$b;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln3/q/a/a;->u(Ln3/q/a/a$b;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 2
    iput-object v0, p1, Ln3/q/a/a$b;->b:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v0

    .line 4
    iget v1, p0, Ln3/q/a/a;->c:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid start code: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0, p2}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ln3/q/a/a$b;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Ln3/q/a/a$b;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t jump to first Ifd: "

    invoke-static {p2, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 9
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid first Ifd offset: "

    invoke-static {p2, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 3
    iget-object v1, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/q/a/a$c;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ln3/q/a/a$c;->toString()Ljava/lang/String;

    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v3, v2}, Ln3/q/a/a$c;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u(Ln3/q/a/a$b;)Ljava/nio/ByteOrder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/q/a/a$b;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/d/c/a/a;->S1(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method public final v([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/q/a/a$b;

    invoke-direct {v0, p1}, Ln3/q/a/a$b;-><init>([B)V

    .line 2
    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Ln3/q/a/a;->s(Ln3/q/a/a$b;I)V

    .line 3
    invoke-virtual {p0, v0, p2}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    return-void
.end method

.method public final w(Ln3/q/a/a$b;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Ln3/q/a/a;->e:Ljava/util/Set;

    iget v4, v1, Ln3/q/a/a$b;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget v3, v1, Ln3/q/a/a$b;->d:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget v5, v1, Ln3/q/a/a$b;->c:I

    if-le v3, v5, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readShort()S

    move-result v3

    .line 4
    iget v5, v1, Ln3/q/a/a$b;->d:I

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v6, v5

    iget v5, v1, Ln3/q/a/a$b;->c:I

    if-gt v6, v5, :cond_2b

    if-gtz v3, :cond_1

    goto/16 :goto_10

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x5

    const/4 v11, 0x1

    if-ge v6, v3, :cond_28

    .line 5
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v12

    .line 6
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v13

    .line 7
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readInt()I

    move-result v15

    .line 8
    iget v14, v1, Ln3/q/a/a$b;->d:I

    int-to-long v8, v14

    const-wide/16 v18, 0x4

    add-long v8, v8, v18

    .line 9
    sget-object v14, Ln3/q/a/a;->V:[Ljava/util/HashMap;

    aget-object v14, v14, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/q/a/a$d;

    .line 10
    sget-boolean v14, Ln3/q/a/a;->m:Z

    const/4 v4, 0x3

    if-eqz v14, :cond_3

    new-array v7, v7, [Ljava/lang/Object;

    .line 11
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v7, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v7, v11

    if-eqz v10, :cond_2

    .line 12
    iget-object v11, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    const/16 v21, 0x2

    aput-object v11, v7, v21

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v20, 0x4

    aput-object v11, v7, v20

    const-string v11, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 13
    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    const/4 v5, 0x7

    if-nez v10, :cond_5

    :cond_4
    :goto_2
    move v11, v6

    goto/16 :goto_5

    :cond_5
    if-lez v13, :cond_4

    .line 14
    sget-object v11, Ln3/q/a/a;->H:[I

    array-length v7, v11

    if-lt v13, v7, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    iget v7, v10, Ln3/q/a/a$d;->c:I

    if-eq v7, v5, :cond_f

    if-ne v13, v5, :cond_7

    goto :goto_3

    :cond_7
    if-eq v7, v13, :cond_f

    .line 16
    iget v5, v10, Ln3/q/a/a$d;->d:I

    if-ne v5, v13, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x4

    if-eq v7, v4, :cond_9

    if-ne v5, v4, :cond_a

    :cond_9
    const/4 v4, 0x3

    if-ne v13, v4, :cond_a

    goto :goto_3

    :cond_a
    const/16 v4, 0x9

    if-eq v7, v4, :cond_b

    if-ne v5, v4, :cond_c

    :cond_b
    const/16 v4, 0x8

    if-ne v13, v4, :cond_c

    goto :goto_3

    :cond_c
    const/16 v4, 0xc

    if-eq v7, v4, :cond_d

    if-ne v5, v4, :cond_e

    :cond_d
    const/16 v4, 0xb

    if-ne v13, v4, :cond_e

    goto :goto_3

    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    :cond_f
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_10

    if-eqz v14, :cond_4

    .line 17
    sget-object v4, Ln3/q/a/a;->G:[Ljava/lang/String;

    aget-object v4, v4, v13

    goto :goto_2

    :cond_10
    const/4 v4, 0x7

    if-ne v13, v4, :cond_11

    move v13, v7

    :cond_11
    int-to-long v4, v15

    .line 18
    aget v7, v11, v13

    move v11, v6

    int-to-long v6, v7

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v24, v4, v6

    if-ltz v24, :cond_13

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_12

    goto :goto_6

    :cond_12
    const/4 v6, 0x1

    goto :goto_7

    :goto_5
    const-wide/16 v4, 0x0

    :cond_13
    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_14

    .line 19
    invoke-virtual {v1, v8, v9}, Ln3/q/a/a$b;->d(J)V

    move/from16 v24, v3

    move/from16 v25, v11

    goto/16 :goto_a

    :cond_14
    cmp-long v6, v4, v18

    const-string v7, "Compression"

    if-lez v6, :cond_18

    .line 20
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readInt()I

    move-result v6

    move/from16 v24, v3

    .line 21
    iget v3, v0, Ln3/q/a/a;->c:I

    move/from16 v25, v11

    const/4 v11, 0x7

    if-ne v3, v11, :cond_16

    .line 22
    iget-object v3, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    const-string v11, "MakerNote"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 23
    iput v6, v0, Ln3/q/a/a;->j:I

    goto :goto_8

    :cond_15
    const/4 v3, 0x6

    if-ne v2, v3, :cond_16

    .line 24
    iget-object v11, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    const-string v3, "ThumbnailImage"

    .line 25
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 26
    iput v6, v0, Ln3/q/a/a;->k:I

    .line 27
    iput v15, v0, Ln3/q/a/a;->l:I

    .line 28
    iget-object v3, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    const/4 v11, 0x6

    .line 29
    invoke-static {v11, v3}, Ln3/q/a/a$c;->d(ILjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v3

    .line 30
    iget v11, v0, Ln3/q/a/a;->k:I

    move-object/from16 v23, v10

    int-to-long v10, v11

    move/from16 v18, v15

    iget-object v15, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 31
    invoke-static {v10, v11, v15}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v10

    .line 32
    iget v11, v0, Ln3/q/a/a;->l:I

    move/from16 v19, v13

    move v15, v14

    int-to-long v13, v11

    iget-object v11, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 33
    invoke-static {v13, v14, v11}, Ln3/q/a/a$c;->b(JLjava/nio/ByteOrder;)Ln3/q/a/a$c;

    move-result-object v11

    .line 34
    iget-object v13, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v14, 0x4

    aget-object v13, v13, v14

    invoke-virtual {v13, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v3, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, v14

    const-string v13, "JPEGInterchangeFormat"

    invoke-virtual {v3, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v3, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, v14

    const-string v10, "JPEGInterchangeFormatLength"

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_16
    :goto_8
    move-object/from16 v23, v10

    move/from16 v19, v13

    move/from16 v18, v15

    move v15, v14

    :goto_9
    int-to-long v10, v6

    add-long v13, v10, v4

    .line 37
    iget v3, v1, Ln3/q/a/a$b;->c:I

    move-object/from16 v26, v7

    int-to-long v6, v3

    cmp-long v3, v13, v6

    if-gtz v3, :cond_17

    .line 38
    invoke-virtual {v1, v10, v11}, Ln3/q/a/a$b;->d(J)V

    goto :goto_b

    .line 39
    :cond_17
    invoke-virtual {v1, v8, v9}, Ln3/q/a/a$b;->d(J)V

    :goto_a
    const/4 v6, 0x2

    goto/16 :goto_f

    :cond_18
    move/from16 v24, v3

    move-object/from16 v26, v7

    move-object/from16 v23, v10

    move/from16 v25, v11

    move/from16 v19, v13

    move/from16 v18, v15

    move v15, v14

    .line 40
    :goto_b
    sget-object v3, Ln3/q/a/a;->Y:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v15, :cond_19

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextIfdType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " byteCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_19
    if-eqz v3, :cond_21

    const-wide/16 v4, -0x1

    move/from16 v13, v19

    const/4 v6, 0x3

    if-eq v13, v6, :cond_1d

    const/4 v6, 0x4

    if-eq v13, v6, :cond_1c

    const/16 v6, 0x8

    if-eq v13, v6, :cond_1b

    const/16 v6, 0x9

    if-eq v13, v6, :cond_1a

    const/16 v6, 0xd

    if-eq v13, v6, :cond_1a

    goto :goto_d

    .line 42
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readInt()I

    move-result v4

    goto :goto_c

    .line 43
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readShort()S

    move-result v4

    goto :goto_c

    .line 44
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->b()J

    move-result-wide v4

    goto :goto_d

    .line 45
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readUnsignedShort()I

    move-result v4

    :goto_c
    int-to-long v4, v4

    :goto_d
    const/4 v6, 0x2

    if-eqz v15, :cond_1e

    new-array v7, v6, [Ljava/lang/Object;

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    move-object/from16 v10, v23

    iget-object v10, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const-string v10, "Offset: %d, tagName: %s"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1e
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-lez v7, :cond_20

    .line 47
    iget v7, v1, Ln3/q/a/a$b;->c:I

    int-to-long v10, v7

    cmp-long v7, v4, v10

    if-gez v7, :cond_20

    .line 48
    iget-object v7, v0, Ln3/q/a/a;->e:Ljava/util/Set;

    long-to-int v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 49
    invoke-virtual {v1, v4, v5}, Ln3/q/a/a$b;->d(J)V

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    goto :goto_e

    :cond_1f
    if-eqz v15, :cond_20

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (at "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    :cond_20
    :goto_e
    invoke-virtual {v1, v8, v9}, Ln3/q/a/a$b;->d(J)V

    goto/16 :goto_f

    :cond_21
    move/from16 v13, v19

    move-object/from16 v10, v23

    const/4 v6, 0x2

    .line 53
    iget v3, v1, Ln3/q/a/a$b;->d:I

    .line 54
    iget v7, v0, Ln3/q/a/a;->i:I

    add-int/2addr v3, v7

    long-to-int v4, v4

    .line 55
    new-array v4, v4, [B

    .line 56
    invoke-virtual {v1, v4}, Ln3/q/a/a$b;->readFully([B)V

    .line 57
    new-instance v5, Ln3/q/a/a$c;

    int-to-long v11, v3

    move-object v14, v5

    move/from16 v3, v18

    move v15, v13

    move/from16 v16, v3

    move-wide/from16 v17, v11

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v19}, Ln3/q/a/a$c;-><init>(IIJ[B)V

    .line 58
    iget-object v3, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    iget-object v4, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v3, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    const-string v4, "DNGVersion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x3

    .line 60
    iput v3, v0, Ln3/q/a/a;->c:I

    .line 61
    :cond_22
    iget-object v3, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    const-string v4, "Make"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    const-string v4, "Model"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_23
    iget-object v3, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 62
    invoke-virtual {v5, v3}, Ln3/q/a/a$c;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PENTAX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    iget-object v3, v10, Ln3/q/a/a$d;->b:Ljava/lang/String;

    move-object/from16 v4, v26

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 64
    invoke-virtual {v5, v3}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_26

    :cond_25
    const/16 v3, 0x8

    .line 65
    iput v3, v0, Ln3/q/a/a;->c:I

    .line 66
    :cond_26
    iget v3, v1, Ln3/q/a/a$b;->d:I

    int-to-long v3, v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_27

    .line 67
    invoke-virtual {v1, v8, v9}, Ln3/q/a/a$b;->d(J)V

    :cond_27
    :goto_f
    add-int/lit8 v3, v25, 0x1

    int-to-short v3, v3

    move v4, v6

    const/4 v5, 0x0

    move v6, v3

    move/from16 v3, v24

    goto/16 :goto_0

    .line 68
    :cond_28
    iget v2, v1, Ln3/q/a/a$b;->d:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 69
    iget v3, v1, Ln3/q/a/a$b;->c:I

    if-gt v2, v3, :cond_2b

    .line 70
    invoke-virtual/range {p1 .. p1}, Ln3/q/a/a$b;->readInt()I

    move-result v2

    .line 71
    sget-boolean v3, Ln3/q/a/a;->m:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "nextIfdOffset: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_29
    int-to-long v3, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2b

    .line 73
    iget v5, v1, Ln3/q/a/a$b;->c:I

    if-ge v2, v5, :cond_2b

    .line 74
    iget-object v5, v0, Ln3/q/a/a;->e:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 75
    invoke-virtual {v1, v3, v4}, Ln3/q/a/a$b;->d(J)V

    .line 76
    iget-object v2, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 77
    invoke-virtual {v0, v1, v3}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    goto :goto_10

    .line 78
    :cond_2a
    iget-object v2, v0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 79
    invoke-virtual {v0, v1, v7}, Ln3/q/a/a;->w(Ln3/q/a/a$b;I)V

    :cond_2b
    :goto_10
    return-void
.end method

.method public final x(Ln3/q/a/a$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    const/4 v2, 0x6

    if-eqz v1, :cond_f

    .line 3
    iget-object v3, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Ln3/q/a/a;->h:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->p(Ln3/q/a/a$b;Ljava/util/HashMap;)V

    goto/16 :goto_4

    :cond_1
    const-string v1, "BitsPerSample"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v5, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 7
    sget-object v5, Ln3/q/a/a;->p:[I

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget v6, p0, Ln3/q/a/a;->c:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    const-string v6, "PhotometricInterpretation"

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/q/a/a$c;

    if-eqz v6, :cond_5

    .line 10
    iget-object v7, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 11
    invoke-virtual {v6, v7}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 12
    sget-object v7, Ln3/q/a/a;->q:[I

    .line 13
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-ne v6, v2, :cond_5

    .line 14
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    if-eqz v1, :cond_10

    const-string v1, "StripOffsets"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    const-string v2, "StripByteCounts"

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 17
    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 18
    invoke-virtual {v1, v2}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln3/q/a/a;->c(Ljava/lang/Object;)[J

    move-result-object v1

    .line 19
    iget-object v2, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    .line 20
    invoke-virtual {v0, v2}, Ln3/q/a/a$c;->h(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln3/q/a/a;->c(Ljava/lang/Object;)[J

    move-result-object v0

    if-eqz v1, :cond_10

    .line 21
    array-length v2, v1

    if-nez v2, :cond_6

    goto/16 :goto_4

    :cond_6
    if-eqz v0, :cond_10

    .line 22
    array-length v2, v0

    if-nez v2, :cond_7

    goto/16 :goto_4

    .line 23
    :cond_7
    array-length v2, v1

    array-length v5, v0

    if-eq v2, v5, :cond_8

    goto :goto_4

    :cond_8
    const-wide/16 v5, 0x0

    .line 24
    array-length v2, v0

    move v7, v4

    :goto_2
    if-ge v7, v2, :cond_9

    aget-wide v8, v0, v7

    add-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    long-to-int v2, v5

    .line 25
    new-array v2, v2, [B

    .line 26
    iput-boolean v3, p0, Ln3/q/a/a;->g:Z

    move v5, v4

    move v6, v5

    move v7, v6

    .line 27
    :goto_3
    array-length v8, v1

    if-ge v5, v8, :cond_e

    .line 28
    aget-wide v8, v1, v5

    long-to-int v8, v8

    .line 29
    aget-wide v9, v0, v5

    long-to-int v9, v9

    .line 30
    array-length v10, v1

    sub-int/2addr v10, v3

    if-ge v5, v10, :cond_a

    add-int v10, v8, v9

    int-to-long v10, v10

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, v1, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    .line 31
    iput-boolean v4, p0, Ln3/q/a/a;->g:Z

    :cond_a
    sub-int/2addr v8, v6

    if-gez v8, :cond_b

    goto :goto_4

    :cond_b
    int-to-long v10, v8

    .line 32
    invoke-virtual {p1, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    cmp-long v10, v12, v10

    if-eqz v10, :cond_c

    goto :goto_4

    :cond_c
    add-int/2addr v6, v8

    .line 33
    new-array v8, v9, [B

    .line 34
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-eq v10, v9, :cond_d

    goto :goto_4

    :cond_d
    add-int/2addr v6, v9

    .line 35
    invoke-static {v8, v4, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 36
    :cond_e
    iget-boolean p1, p0, Ln3/q/a/a;->g:Z

    if-eqz p1, :cond_10

    .line 37
    aget-wide v0, v1, v4

    goto :goto_4

    .line 38
    :cond_f
    iput v2, p0, Ln3/q/a/a;->h:I

    .line 39
    invoke-virtual {p0, p1, v0}, Ln3/q/a/a;->p(Ln3/q/a/a$b;Ljava/util/HashMap;)V

    :cond_10
    :goto_4
    return-void
.end method

.method public final z(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/q/a/a$c;

    .line 4
    iget-object v2, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v2, v2, p1

    const-string v3, "ImageWidth"

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/q/a/a$c;

    .line 6
    iget-object v4, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 7
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/q/a/a$c;

    .line 8
    iget-object v4, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    .line 9
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/q/a/a$c;

    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v4, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 11
    iget-object v4, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 12
    iget-object v4, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 13
    iget-object v4, p0, Ln3/q/a/a;->f:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ln3/q/a/a$c;->f(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v1, :cond_5

    if-ge v2, v3, :cond_5

    .line 14
    iget-object v0, p0, Ln3/q/a/a;->d:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 15
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 16
    aput-object v1, v0, p2

    goto :goto_2

    .line 17
    :cond_3
    :goto_0
    sget-boolean p1, Ln3/q/a/a;->m:Z

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    sget-boolean p1, Ln3/q/a/a;->m:Z

    :cond_5
    :goto_2
    return-void

    .line 19
    :cond_6
    :goto_3
    sget-boolean p1, Ln3/q/a/a;->m:Z

    return-void
.end method
