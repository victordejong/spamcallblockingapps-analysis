.class public Le/d/d/b$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/d/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:[B

.field public final d:Landroid/net/Uri;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZLandroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d/d/b$o;->e:Ljava/lang/Integer;

    .line 3
    iput-object p1, p0, Le/d/d/b$o;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/d/d/b$o;->c:[B

    .line 5
    iput-boolean p3, p0, Le/d/d/b$o;->b:Z

    .line 6
    iput-object p4, p0, Le/d/d/b$o;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Le/d/d/b$h;
    .locals 1

    .line 1
    sget-object v0, Le/d/d/b$h;->g:Le/d/d/b$h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/d/d/b$o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/d/d/b$o;

    .line 3
    iget-object v1, p0, Le/d/d/b$o;->a:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$o;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/d/d/b$o;->c:[B

    iget-object v3, p1, Le/d/d/b$o;->c:[B

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Le/d/d/b$o;->b:Z

    iget-boolean v3, p1, Le/d/d/b$o;->b:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Le/d/d/b$o;->d:Landroid/net/Uri;

    iget-object p1, p1, Le/d/d/b$o;->d:Landroid/net/Uri;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Le/d/d/b$o;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/d/d/b$o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Le/d/d/b$o;->c:[B

    if-eqz v2, :cond_2

    .line 5
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-byte v4, v2, v1

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Le/d/d/b$o;->b:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_3
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Le/d/d/b$o;->e:Ljava/lang/Integer;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Le/d/d/b$o;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    iget-object v2, p0, Le/d/d/b$o;->c:[B

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-boolean v3, p0, Le/d/d/b$o;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Le/d/d/b$o;->d:Landroid/net/Uri;

    aput-object v3, v1, v2

    const-string v2, "format: %s: size: %d, isPrimary: %s uri: %s "

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
