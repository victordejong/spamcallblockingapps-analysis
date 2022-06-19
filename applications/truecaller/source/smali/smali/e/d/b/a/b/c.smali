.class public Le/d/b/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[Ljava/lang/String;

.field public static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ln3/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/d/b/a/b/c;->a:[I

    const-string v1, "*"

    const-string v2, "us-ascii"

    const-string v3, "iso-8859-1"

    const-string v4, "iso-8859-2"

    const-string v5, "iso-8859-3"

    const-string v6, "iso-8859-4"

    const-string v7, "iso-8859-5"

    const-string v8, "iso-8859-6"

    const-string v9, "iso-8859-7"

    const-string v10, "iso-8859-8"

    const-string v11, "iso-8859-9"

    const-string v12, "shift_JIS"

    const-string v13, "euc-jp"

    const-string v14, "euc-kr"

    const-string v15, "iso-2022-jp"

    const-string v16, "iso-2022-jp-2"

    const-string v17, "utf-8"

    const-string v18, "gbk"

    const-string v19, "gb18030"

    const-string v20, "gb2312"

    const-string v21, "big5"

    const-string v22, "iso-10646-ucs-2"

    const-string v23, "utf-16"

    const-string v24, "hz-gb-2312"

    .line 2
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/d/b/a/b/c;->b:[Ljava/lang/String;

    .line 3
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Le/d/b/a/b/c;->c:Landroid/util/SparseArray;

    .line 4
    new-instance v2, Ln3/g/h;

    invoke-direct {v2}, Ln3/g/h;-><init>()V

    sput-object v2, Le/d/b/a/b/c;->d:Ln3/g/h;

    .line 5
    array-length v2, v0

    array-length v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 6
    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_1
    if-gt v4, v0, :cond_1

    .line 7
    sget-object v1, Le/d/b/a/b/c;->c:Landroid/util/SparseArray;

    sget-object v2, Le/d/b/a/b/c;->a:[I

    aget v3, v2, v4

    sget-object v5, Le/d/b/a/b/c;->b:[Ljava/lang/String;

    aget-object v6, v5, v4

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object v1, Le/d/b/a/b/c;->d:Ln3/g/h;

    aget-object v3, v5, v4

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x12
        0x26
        0x27
        0x28
        0x6a
        0x71
        0x72
        0x7e9
        0x7ea
        0x3e8
        0x3f7
        0x825
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/d/b/a/b/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p0
.end method
