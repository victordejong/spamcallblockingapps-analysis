.class public Le/a/b0/p/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/a/b0/p/b$e;->d:I

    .line 3
    iput-object p1, p0, Le/a/b0/p/b$e;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Le/a/b0/p/b$e;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget v0, p0, Le/a/b0/p/b$e;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Le/a/b0/p/b$e;->d:I

    .line 2
    iput v0, p0, Le/a/b0/p/b$e;->c:I

    .line 3
    :goto_0
    iget v0, p0, Le/a/b0/p/b$e;->d:I

    iget v2, p0, Le/a/b0/p/b$e;->b:I

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v2, p0, Le/a/b0/p/b$e;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v0, p0, Le/a/b0/p/b$e;->c:I

    iget v2, p0, Le/a/b0/p/b$e;->d:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 7
    iput v2, p0, Le/a/b0/p/b$e;->c:I

    .line 8
    :goto_1
    iget v0, p0, Le/a/b0/p/b$e;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Le/a/b0/p/b$e;->d:I

    goto :goto_0

    .line 9
    :cond_2
    iget v2, p0, Le/a/b0/p/b$e;->c:I

    if-eq v2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public charAt(I)C
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/p/b$e;->a:Ljava/lang/CharSequence;

    iget v1, p0, Le/a/b0/p/b$e;->c:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/b0/p/b$e;->d:I

    iget v1, p0, Le/a/b0/p/b$e;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/p/b$e;->a:Ljava/lang/CharSequence;

    iget v1, p0, Le/a/b0/p/b$e;->c:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/p/b$e;->a:Ljava/lang/CharSequence;

    iget v1, p0, Le/a/b0/p/b$e;->c:I

    iget v2, p0, Le/a/b0/p/b$e;->d:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
