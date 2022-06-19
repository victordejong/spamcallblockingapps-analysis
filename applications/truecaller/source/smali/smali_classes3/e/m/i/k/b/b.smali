.class public final Le/m/i/k/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/i/k/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/i/k/b/h;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/m/i/k/b/h;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1}, Le/m/i/k/b/h;->b()C

    move-result v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget v2, p1, Le/m/i/k/b/h;->f:I

    add-int/2addr v2, v3

    iput v2, p1, Le/m/i/k/b/h;->f:I

    .line 6
    iget-object v4, p1, Le/m/i/k/b/h;->a:Ljava/lang/String;

    const/4 v5, 0x5

    .line 7
    invoke-static {v4, v2, v5}, Le/m/d/y/n;->D0(Ljava/lang/CharSequence;II)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 8
    iput v0, p1, Le/m/i/k/b/h;->g:I

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    .line 10
    invoke-virtual {p1}, Le/m/i/k/b/h;->a()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 11
    invoke-virtual {p1, v4}, Le/m/i/k/b/h;->f(I)V

    .line 12
    iget-object v5, p1, Le/m/i/k/b/h;->h:Le/m/i/k/b/j;

    .line 13
    iget v5, v5, Le/m/i/k/b/j;->b:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v0

    .line 14
    :goto_0
    invoke-virtual {p1}, Le/m/i/k/b/h;->d()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_4

    int-to-char v2, v2

    .line 15
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x613

    if-gt v2, v5, :cond_8

    .line 16
    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 17
    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_7

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Le/m/i/k/b/h;->a()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x95

    const/16 v6, 0xff

    .line 20
    rem-int/2addr v5, v6

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    if-gt v5, v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit16 v5, v5, -0x100

    :goto_3
    int-to-char v4, v5

    .line 21
    iget-object v5, p1, Le/m/i/k/b/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message length not in valid ranges: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
