.class public Le/d/d/b$p;
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
    name = "p"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p8, p0, Le/d/d/b$p;->h:I

    .line 3
    iput-object p1, p0, Le/d/d/b$p;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/d/d/b$p;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Le/d/d/b$p;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Le/d/d/b$p;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Le/d/d/b$p;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Le/d/d/b$p;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Le/d/d/b$p;->g:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Le/d/d/b$p;->i:Ljava/lang/String;

    .line 11
    iput-boolean p10, p0, Le/d/d/b$p;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Le/d/d/b$h;
    .locals 1

    .line 1
    sget-object v0, Le/d/d/b$h;->d:Le/d/d/b$h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/d/d/b$p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/d/d/b$p;

    .line 3
    iget v1, p0, Le/d/d/b$p;->h:I

    iget v3, p1, Le/d/d/b$p;->h:I

    if-ne v1, v3, :cond_3

    if-nez v1, :cond_2

    iget-object v1, p0, Le/d/d/b$p;->i:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->i:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Le/d/d/b$p;->j:Z

    iget-boolean v3, p1, Le/d/d/b$p;->j:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->a:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->b:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->b:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->c:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->c:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->d:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->d:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->e:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->e:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->f:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$p;->f:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/d/d/b$p;->g:Ljava/lang/String;

    iget-object p1, p1, Le/d/d/b$p;->g:Ljava/lang/String;

    .line 11
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Le/d/d/b$p;->h:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/d/d/b$p;->i:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Le/d/d/b$p;->j:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    .line 4
    iget-object v4, p0, Le/d/d/b$p;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v4, p0, Le/d/d/b$p;->b:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p0, Le/d/d/b$p;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Le/d/d/b$p;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Le/d/d/b$p;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Le/d/d/b$p;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Le/d/d/b$p;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_3

    .line 5
    aget-object v5, v3, v4

    mul-int/lit8 v0, v0, 0x1f

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Le/d/d/b$p;->h:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->i:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/d/d/b$p;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->a:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->b:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->c:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->d:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->e:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->f:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$p;->g:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
