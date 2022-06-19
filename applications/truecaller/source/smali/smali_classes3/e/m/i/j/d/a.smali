.class public final Le/m/i/j/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Le/m/i/j/d/a;

.field public static final h:Le/m/i/j/d/a;

.field public static final i:Le/m/i/j/d/a;

.field public static final j:Le/m/i/j/d/a;

.field public static final k:Le/m/i/j/d/a;

.field public static final l:Le/m/i/j/d/a;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:Le/m/i/j/d/b;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/m/i/j/d/a;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le/m/i/j/d/a;-><init>(III)V

    sput-object v0, Le/m/i/j/d/a;->g:Le/m/i/j/d/a;

    .line 2
    new-instance v0, Le/m/i/j/d/a;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2, v3}, Le/m/i/j/d/a;-><init>(III)V

    sput-object v0, Le/m/i/j/d/a;->h:Le/m/i/j/d/a;

    .line 3
    new-instance v0, Le/m/i/j/d/a;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Le/m/i/j/d/a;-><init>(III)V

    sput-object v0, Le/m/i/j/d/a;->i:Le/m/i/j/d/a;

    .line 4
    new-instance v0, Le/m/i/j/d/a;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Le/m/i/j/d/a;-><init>(III)V

    sput-object v0, Le/m/i/j/d/a;->j:Le/m/i/j/d/a;

    .line 5
    new-instance v0, Le/m/i/j/d/a;

    const/16 v1, 0x11d

    const/16 v2, 0x100

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Le/m/i/j/d/a;-><init>(III)V

    sput-object v0, Le/m/i/j/d/a;->k:Le/m/i/j/d/a;

    .line 6
    new-instance v0, Le/m/i/j/d/a;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v2, v3}, Le/m/i/j/d/a;-><init>(III)V

    .line 7
    sput-object v0, Le/m/i/j/d/a;->l:Le/m/i/j/d/a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/i/j/d/a;->e:I

    .line 3
    iput p2, p0, Le/m/i/j/d/a;->d:I

    .line 4
    iput p3, p0, Le/m/i/j/d/a;->f:I

    .line 5
    new-array p3, p2, [I

    iput-object p3, p0, Le/m/i/j/d/a;->a:[I

    .line 6
    new-array p3, p2, [I

    iput-object p3, p0, Le/m/i/j/d/a;->b:[I

    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, p3

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 7
    iget-object v3, p0, Le/m/i/j/d/a;->a:[I

    aput v2, v3, v1

    shl-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    xor-int/2addr v2, p1

    add-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_2

    .line 8
    iget-object v1, p0, Le/m/i/j/d/a;->b:[I

    iget-object v2, p0, Le/m/i/j/d/a;->a:[I

    aget v2, v2, p1

    aput p1, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Le/m/i/j/d/b;

    new-array p2, v0, [I

    aput p3, p2, p3

    invoke-direct {p1, p0, p2}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    iput-object p1, p0, Le/m/i/j/d/a;->c:Le/m/i/j/d/b;

    .line 10
    new-instance p1, Le/m/i/j/d/b;

    new-array p2, v0, [I

    aput v0, p2, p3

    invoke-direct {p1, p0, p2}, Le/m/i/j/d/b;-><init>(Le/m/i/j/d/a;[I)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Le/m/i/j/d/a;->a:[I

    iget-object v1, p0, Le/m/i/j/d/a;->b:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Le/m/i/j/d/a;->d:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GF(0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Le/m/i/j/d/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Le/m/i/j/d/a;->d:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
