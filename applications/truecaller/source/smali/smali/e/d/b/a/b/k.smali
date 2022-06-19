.class public Le/d/b/a/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/b/a/b/k$b;,
        Le/d/b/a/b/k$d;,
        Le/d/b/a/b/k$c;
    }
.end annotation


# static fields
.field public static g:Ln3/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:Le/d/b/a/b/f;

.field public c:I

.field public d:Le/d/b/a/b/k$b;

.field public final e:Landroid/content/ContentResolver;

.field public f:Le/d/b/a/b/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ln3/g/h;

    invoke-direct {v0}, Ln3/g/h;-><init>()V

    sput-object v0, Le/d/b/a/b/k;->g:Ln3/g/h;

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Le/d/b/a/b/l;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    sget-object v2, Le/d/b/a/b/k;->g:Ln3/g/h;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/d/b/a/b/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    iput-object v0, p0, Le/d/b/a/b/k;->b:Le/d/b/a/b/f;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/d/b/a/b/k;->c:I

    .line 5
    iput-object v0, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    .line 6
    iput-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    .line 7
    iput-object p2, p0, Le/d/b/a/b/k;->b:Le/d/b/a/b/f;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Le/d/b/a/b/k;->e:Landroid/content/ContentResolver;

    .line 9
    iget-object p1, p2, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    .line 10
    iput-object p1, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    .line 11
    new-instance p1, Le/d/b/a/b/k$b;

    invoke-direct {p1, p0, v0}, Le/d/b/a/b/k$b;-><init>(Le/d/b/a/b/k;Le/d/b/a/b/k$a;)V

    iput-object p1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    .line 12
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    .line 13
    iput v1, p0, Le/d/b/a/b/k;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/d/b/a/b/k;->c:I

    return-void
.end method

.method public final b(Le/d/b/a/b/e;)Le/d/b/a/b/e;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le/d/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v2, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const-string v2, "\\+?[0-9|\\.|\\-]+"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 6
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/d/b/a/b/e;

    iget v2, p1, Le/d/b/a/b/e;->a:I

    iget-object p1, p1, Le/d/b/a/b/e;->b:[B

    invoke-direct {v0, v2, p1}, Le/d/b/a/b/e;-><init>(I[B)V

    if-ne v4, v1, :cond_4

    const-string p1, "/TYPE=PLMN"

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Le/d/b/a/b/e;->a([B)V

    goto :goto_1

    :cond_4
    if-ne v5, v1, :cond_5

    const-string p1, "/TYPE=IPV4"

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Le/d/b/a/b/e;->a([B)V

    goto :goto_1

    :cond_5
    if-ne v3, v1, :cond_6

    const-string p1, "/TYPE=IPV6"

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Le/d/b/a/b/e;->a([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Le/d/b/a/b/e;)V
    .locals 2

    .line 1
    iget v0, p1, Le/d/b/a/b/e;->a:I

    .line 2
    invoke-virtual {p1}, Le/d/b/a/b/e;->c()[B

    move-result-object p1

    .line 3
    iget-object v1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v1}, Le/d/b/a/b/k$b;->c()V

    .line 4
    iget-object v1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v1}, Le/d/b/a/b/k$b;->b()Le/d/b/a/b/k$d;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->h(I)V

    .line 6
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->i([B)V

    .line 7
    invoke-virtual {v1}, Le/d/b/a/b/k$d;->a()I

    move-result p1

    .line 8
    iget-object v0, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->d()V

    int-to-long v0, p1

    .line 9
    invoke-virtual {p0, v0, v1}, Le/d/b/a/b/k;->k(J)V

    .line 10
    iget-object p1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {p1}, Le/d/b/a/b/k$b;->a()V

    return-void
.end method

.method public final d(I)I
    .locals 9

    const/16 v0, 0x80

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/16 v4, 0x81

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x3

    return p1

    .line 1
    :pswitch_1
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    .line 2
    iget-object v0, v0, Le/d/b/a/b/m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/b/a/b/e;

    if-nez v0, :cond_0

    return v5

    .line 3
    :cond_0
    iget-object v2, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 5
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->c(Le/d/b/a/b/e;)V

    goto/16 :goto_2

    .line 6
    :pswitch_2
    iget-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    iget v0, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr v0, v6

    iput v0, p0, Le/d/b/a/b/k;->c:I

    .line 8
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v0, p1}, Le/d/b/a/b/m;->e(I)I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x12

    .line 9
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->h(I)V

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->h(I)V

    goto/16 :goto_2

    .line 11
    :pswitch_3
    iget-object v2, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    .line 12
    iget-object v2, v2, Le/d/b/a/b/m;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_2

    return v5

    .line 13
    :cond_2
    iget-object v3, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 14
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Le/d/b/a/b/k;->c:I

    const-string p1, "advertisement"

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 16
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0, v4}, Le/d/b/a/b/k;->f(I)V

    goto/16 :goto_2

    :cond_3
    const-string p1, "auto"

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 19
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x83

    .line 20
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->f(I)V

    goto/16 :goto_2

    :cond_4
    const-string p1, "personal"

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->f(I)V

    goto/16 :goto_2

    :cond_5
    const-string p1, "informational"

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 25
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x82

    .line 26
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->f(I)V

    goto/16 :goto_2

    .line 27
    :cond_6
    invoke-virtual {p0, v2}, Le/d/b/a/b/k;->i([B)V

    goto/16 :goto_2

    .line 28
    :pswitch_4
    iget-object v2, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 29
    iget v2, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr v2, v6

    iput v2, p0, Le/d/b/a/b/k;->c:I

    .line 30
    iget-object v2, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    .line 31
    iget-object v2, v2, Le/d/b/a/b/m;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/b/a/b/e;

    if-eqz p1, :cond_9

    .line 32
    invoke-virtual {p1}, Le/d/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Le/d/b/a/b/e;->c()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "insert-address-token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    .line 34
    :cond_7
    iget-object v2, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v2}, Le/d/b/a/b/k$b;->c()V

    .line 35
    iget-object v2, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v2}, Le/d/b/a/b/k$b;->b()Le/d/b/a/b/k$d;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->a(I)V

    .line 37
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->b(Le/d/b/a/b/e;)Le/d/b/a/b/e;

    move-result-object p1

    if-nez p1, :cond_8

    return v6

    .line 38
    :cond_8
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->c(Le/d/b/a/b/e;)V

    .line 39
    invoke-virtual {v2}, Le/d/b/a/b/k$d;->a()I

    move-result p1

    .line 40
    iget-object v0, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->d()V

    int-to-long v2, p1

    .line 41
    invoke-virtual {p0, v2, v3}, Le/d/b/a/b/k;->k(J)V

    .line 42
    iget-object p1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {p1}, Le/d/b/a/b/k$b;->a()V

    goto/16 :goto_2

    .line 43
    :cond_9
    :goto_0
    invoke-virtual {p0, v6}, Le/d/b/a/b/k;->a(I)V

    .line 44
    invoke-virtual {p0, v4}, Le/d/b/a/b/k;->a(I)V

    goto/16 :goto_2

    .line 45
    :pswitch_5
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v0, p1}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-nez v0, :cond_a

    return v5

    .line 46
    :cond_a
    iget-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 48
    iget-object p1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {p1}, Le/d/b/a/b/k$b;->c()V

    .line 49
    iget-object p1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {p1}, Le/d/b/a/b/k$b;->b()Le/d/b/a/b/k$d;

    move-result-object p1

    .line 50
    invoke-virtual {p0, v4}, Le/d/b/a/b/k;->a(I)V

    .line 51
    invoke-virtual {p0, v7, v8}, Le/d/b/a/b/k;->e(J)V

    .line 52
    invoke-virtual {p1}, Le/d/b/a/b/k$d;->a()I

    move-result p1

    .line 53
    iget-object v0, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {v0}, Le/d/b/a/b/k$b;->d()V

    int-to-long v2, p1

    .line 54
    invoke-virtual {p0, v2, v3}, Le/d/b/a/b/k;->k(J)V

    .line 55
    iget-object p1, p0, Le/d/b/a/b/k;->d:Le/d/b/a/b/k$b;

    invoke-virtual {p1}, Le/d/b/a/b/k$b;->a()V

    goto/16 :goto_2

    .line 56
    :pswitch_6
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v0, p1}, Le/d/b/a/b/m;->e(I)I

    move-result v0

    if-nez v0, :cond_b

    return v5

    .line 57
    :cond_b
    iget-object v2, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 59
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->f(I)V

    goto :goto_2

    .line 60
    :pswitch_7
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v0, p1}, Le/d/b/a/b/m;->d(I)J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-nez v0, :cond_c

    return v5

    .line 61
    :cond_c
    iget-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 63
    invoke-virtual {p0, v7, v8}, Le/d/b/a/b/k;->e(J)V

    goto :goto_2

    .line 64
    :pswitch_8
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    .line 65
    iget-object v0, v0, Le/d/b/a/b/m;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_d

    return v5

    .line 66
    :cond_d
    iget-object v2, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v6

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 68
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->i([B)V

    goto :goto_2

    .line 69
    :pswitch_9
    iget-object v0, p0, Le/d/b/a/b/k;->f:Le/d/b/a/b/m;

    invoke-virtual {v0, p1}, Le/d/b/a/b/m;->c(I)[Le/d/b/a/b/e;

    move-result-object v0

    if-nez v0, :cond_e

    return v5

    .line 70
    :cond_e
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_10

    aget-object v4, v0, v3

    .line 71
    invoke-virtual {p0, v4}, Le/d/b/a/b/k;->b(Le/d/b/a/b/e;)Le/d/b/a/b/e;

    move-result-object v4

    if-nez v4, :cond_f

    return v6

    .line 72
    :cond_f
    iget-object v5, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    iget v5, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr v5, v6

    iput v5, p0, Le/d/b/a/b/k;->c:I

    .line 74
    invoke-virtual {p0, v4}, Le/d/b/a/b/k;->c(Le/d/b/a/b/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_10
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public e(J)V
    .locals 10

    const/4 v0, 0x0

    move-wide v1, p1

    move v3, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    if-ge v3, v5, :cond_0

    ushr-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2
    iget v1, p0, Le/d/b/a/b/k;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/d/b/a/b/k;->c:I

    add-int/lit8 v1, v3, -0x1

    mul-int/2addr v1, v5

    :goto_1
    if-ge v0, v3, :cond_1

    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v2, v6

    .line 3
    invoke-virtual {p0, v2}, Le/d/b/a/b/k;->a(I)V

    sub-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/d/b/a/b/k;->c:I

    return-void
.end method

.method public g([B)V
    .locals 3

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->a(I)V

    .line 2
    array-length v0, p1

    .line 3
    iget-object v1, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 4
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 5
    invoke-virtual {p0, v2}, Le/d/b/a/b/k;->a(I)V

    return-void
.end method

.method public h(I)V
    .locals 0

    or-int/lit16 p1, p1, 0x80

    and-int/lit16 p1, p1, 0xff

    .line 1
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->a(I)V

    return-void
.end method

.method public i([B)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Le/d/b/a/b/k;->a(I)V

    .line 3
    :cond_0
    array-length v1, p1

    .line 4
    iget-object v2, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 5
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Le/d/b/a/b/k;->c:I

    .line 6
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->a(I)V

    return-void
.end method

.method public j(J)V
    .locals 7

    const-wide/16 v0, 0x7f

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_1

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    mul-int/lit8 v3, v2, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v0

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    .line 1
    invoke-virtual {p0, v3}, Le/d/b/a/b/k;->a(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    and-long/2addr p1, v0

    long-to-int p1, p1

    .line 2
    invoke-virtual {p0, p1}, Le/d/b/a/b/k;->a(I)V

    return-void
.end method

.method public k(J)V
    .locals 2

    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 1
    iget-object p2, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/d/b/a/b/k;->c:I

    return-void

    :cond_0
    const/16 v0, 0x1f

    .line 3
    invoke-virtual {p0, v0}, Le/d/b/a/b/k;->a(I)V

    .line 4
    invoke-virtual {p0, p1, p2}, Le/d/b/a/b/k;->j(J)V

    return-void
.end method

.method public l([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/b/a/b/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2
    iget p1, p0, Le/d/b/a/b/k;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Le/d/b/a/b/k;->c:I

    return-void
.end method
