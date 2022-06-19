.class final Lu/i/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:B

.field final b:I


# direct methods
.method constructor <init>(BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lu/i/l;->a:B

    .line 3
    iput p2, p0, Lu/i/l;->b:I

    return-void
.end method

.method static b(Lu/i/h;)Lu/i/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/i/h;->readByte()B

    move-result v0

    .line 2
    new-instance v1, Lu/i/l;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu/i/h;->readShort()S

    move-result p0

    :goto_0
    invoke-direct {v1, v0, p0}, Lu/i/l;-><init>(BI)V

    return-object v1
.end method


# virtual methods
.method a(Lu/i/l;)Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lu/i/l;->a:B

    iget-byte v1, p1, Lu/i/l;->a:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Lu/i/l;->b:I

    iget p1, p1, Lu/i/l;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(Lu/i/t;)V
    .locals 1

    .line 1
    iget-byte v0, p0, Lu/i/l;->a:B

    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    .line 2
    iget v0, p0, Lu/i/l;->b:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    .line 3
    iget v0, p0, Lu/i/l;->b:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    return-void
.end method
