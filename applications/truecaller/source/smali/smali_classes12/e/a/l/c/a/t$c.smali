.class public final Le/a/l/c/a/t$c;
.super Le/a/l/c/a/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:Le/a/l/c/a/x2;

.field public final f:Le/a/l/c/a/x2;

.field public final g:Le/a/l/c/a/a0;

.field public final h:Le/a/l/c/a/a0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/a0;Le/a/l/c/a/a0;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cta1"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Le/a/l/c/a/t;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/l/c/a/t$c;->a:Ljava/lang/String;

    iput-boolean p2, p0, Le/a/l/c/a/t$c;->b:Z

    iput p3, p0, Le/a/l/c/a/t$c;->c:I

    iput p4, p0, Le/a/l/c/a/t$c;->d:I

    iput-object p5, p0, Le/a/l/c/a/t$c;->e:Le/a/l/c/a/x2;

    iput-object p6, p0, Le/a/l/c/a/t$c;->f:Le/a/l/c/a/x2;

    iput-object p7, p0, Le/a/l/c/a/t$c;->g:Le/a/l/c/a/a0;

    iput-object p8, p0, Le/a/l/c/a/t$c;->h:Le/a/l/c/a/a0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIILe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/a0;Le/a/l/c/a/a0;I)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    move-object v3, p0

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    .line 1
    invoke-direct/range {v3 .. v11}, Le/a/l/c/a/t$c;-><init>(Ljava/lang/String;ZIILe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/a0;Le/a/l/c/a/a0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/c/a/t$c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/c/a/t$c;

    iget-object v0, p0, Le/a/l/c/a/t$c;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/c/a/t$c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/l/c/a/t$c;->b:Z

    iget-boolean v1, p1, Le/a/l/c/a/t$c;->b:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/l/c/a/t$c;->c:I

    iget v1, p1, Le/a/l/c/a/t$c;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/l/c/a/t$c;->d:I

    iget v1, p1, Le/a/l/c/a/t$c;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$c;->e:Le/a/l/c/a/x2;

    iget-object v1, p1, Le/a/l/c/a/t$c;->e:Le/a/l/c/a/x2;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$c;->f:Le/a/l/c/a/x2;

    iget-object v1, p1, Le/a/l/c/a/t$c;->f:Le/a/l/c/a/x2;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$c;->g:Le/a/l/c/a/a0;

    iget-object v1, p1, Le/a/l/c/a/t$c;->g:Le/a/l/c/a/a0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$c;->h:Le/a/l/c/a/a0;

    iget-object p1, p1, Le/a/l/c/a/t$c;->h:Le/a/l/c/a/a0;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/l/c/a/t$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/l/c/a/t$c;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/l/c/a/t$c;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/l/c/a/t$c;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$c;->e:Le/a/l/c/a/x2;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le/a/l/c/a/x2;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$c;->f:Le/a/l/c/a/x2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le/a/l/c/a/x2;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$c;->g:Le/a/l/c/a/a0;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Le/a/l/c/a/a0;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$c;->h:Le/a/l/c/a/a0;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Le/a/l/c/a/a0;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Feature(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/c/a/t$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/c/a/t$c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/c/a/t$c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/c/a/t$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$c;->e:Le/a/l/c/a/x2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$c;->f:Le/a/l/c/a/x2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$c;->g:Le/a/l/c/a/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$c;->h:Le/a/l/c/a/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
