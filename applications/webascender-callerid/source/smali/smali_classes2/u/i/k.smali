.class final Lu/i/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[B

.field static final b:Lu/i/l;

.field static final c:Lu/i/l;

.field static final d:Lu/i/l;

.field static final e:Lu/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lu/i/k;->a:[B

    .line 2
    new-instance v1, Lu/i/l;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lu/i/l;-><init>(BI)V

    sput-object v1, Lu/i/k;->b:Lu/i/l;

    .line 3
    new-instance v1, Lu/i/l;

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lu/i/l;-><init>(BI)V

    sput-object v1, Lu/i/k;->c:Lu/i/l;

    .line 4
    new-instance v1, Lu/i/l;

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lu/i/l;-><init>(BI)V

    sput-object v1, Lu/i/k;->d:Lu/i/l;

    .line 5
    new-instance v1, Lu/i/l;

    invoke-direct {v1, v2, v0}, Lu/i/l;-><init>(BI)V

    sput-object v1, Lu/i/k;->e:Lu/i/l;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static a(Lu/i/h;)Lu/f;
    .locals 5

    .line 1
    invoke-static {}, Lu/f;->j()Lu/f$a;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-static {p0}, Lu/i/l;->b(Lu/i/h;)Lu/i/l;

    move-result-object v1

    .line 3
    iget-byte v2, v1, Lu/i/l;->a:B

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lu/f$a;->a()Lu/f;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object v2, Lu/i/k;->b:Lu/i/l;

    invoke-virtual {v1, v2}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 7
    invoke-virtual {v0, v2}, Lu/f$a;->f([B)Z

    goto :goto_0

    .line 8
    :cond_2
    sget-object v2, Lu/i/k;->c:Lu/i/l;

    invoke-virtual {v1, v2}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0}, Lu/i/h;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lu/f$a;->g(I)Lu/f$a;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v2, Lu/i/k;->d:Lu/i/l;

    invoke-virtual {v1, v2}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lu/i/h;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/f$a;->h(Ljava/lang/String;)Lu/f$a;

    goto :goto_0

    .line 12
    :cond_4
    sget-object v2, Lu/i/k;->e:Lu/i/l;

    invoke-virtual {v1, v2}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lu/i/h;->f(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/f$a;->f([B)Z

    goto :goto_0

    .line 14
    :cond_5
    iget-byte v1, v1, Lu/i/l;->a:B

    invoke-static {p0, v1}, Lu/i/j;->g(Lu/i/h;B)V

    goto/16 :goto_0
.end method

.method static b(Lu/f;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/f;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0xc

    add-int/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Lu/f;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    add-int/lit8 v1, v1, 0x17

    :cond_1
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method static c(Lu/f;Lu/i/t;)V
    .locals 2

    .line 1
    sget-object v0, Lu/i/k;->b:Lu/i/l;

    invoke-virtual {v0, p1}, Lu/i/l;->c(Lu/i/t;)V

    .line 2
    invoke-virtual {p0}, Lu/f;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/f;->d()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lu/i/k;->a:[B

    :goto_0
    invoke-virtual {p1, v0}, Lu/i/t;->h([B)V

    .line 3
    sget-object v0, Lu/i/k;->c:Lu/i/l;

    invoke-virtual {v0, p1}, Lu/i/l;->c(Lu/i/t;)V

    .line 4
    invoke-virtual {p0}, Lu/f;->m()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 5
    invoke-virtual {p1, v1}, Lu/i/t;->l(I)V

    and-int/lit16 v0, v0, 0xff

    .line 6
    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    .line 7
    sget-object v0, Lu/i/k;->d:Lu/i/l;

    invoke-virtual {v0, p1}, Lu/i/l;->c(Lu/i/t;)V

    .line 8
    invoke-virtual {p0}, Lu/f;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lu/f;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-static {p1, v0}, Lu/i/j;->j(Lu/i/t;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lu/f;->f()[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    sget-object v0, Lu/i/k;->e:Lu/i/l;

    invoke-virtual {v0, p1}, Lu/i/l;->c(Lu/i/t;)V

    const/16 v0, 0x10

    .line 11
    invoke-static {p1, v0}, Lu/i/j;->i(Lu/i/t;I)V

    .line 12
    invoke-virtual {p1, p0}, Lu/i/t;->h([B)V

    :cond_2
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Lu/i/t;->l(I)V

    return-void
.end method
