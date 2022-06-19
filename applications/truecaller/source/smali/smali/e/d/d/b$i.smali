.class public Le/d/d/b$i;
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
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/d/d/b$i;->b:I

    .line 3
    iput-object p2, p0, Le/d/d/b$i;->c:Ljava/lang/String;

    .line 4
    iput p4, p0, Le/d/d/b$i;->d:I

    .line 5
    iput-object p3, p0, Le/d/d/b$i;->a:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Le/d/d/b$i;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Le/d/d/b$h;
    .locals 1

    .line 1
    sget-object v0, Le/d/d/b$h;->f:Le/d/d/b$h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/d/d/b$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/d/d/b$i;

    .line 3
    iget v1, p0, Le/d/d/b$i;->d:I

    iget v3, p1, Le/d/d/b$i;->d:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Le/d/d/b$i;->b:I

    iget v3, p1, Le/d/d/b$i;->b:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Le/d/d/b$i;->c:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$i;->c:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/d/d/b$i;->a:Ljava/lang/String;

    iget-object v3, p1, Le/d/d/b$i;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Le/d/d/b$i;->e:Z

    iget-boolean p1, p1, Le/d/d/b$i;->e:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Le/d/d/b$i;->d:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Le/d/d/b$i;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Le/d/d/b$i;->c:Ljava/lang/String;

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

    .line 4
    iget-object v1, p0, Le/d/d/b$i;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Le/d/d/b$i;->e:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_2
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Le/d/d/b$i;->d:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Le/d/d/b$i;->b:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$i;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/d/d/b$i;->a:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/d/d/b$i;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
