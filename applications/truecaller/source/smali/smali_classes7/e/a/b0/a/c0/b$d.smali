.class public final Le/a/b0/a/c0/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/c0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ls1/z/b/a;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p8, p9, 0x8

    if-eqz p8, :cond_0

    .line 1
    sget p4, Lcom/truecaller/common/ui/R$attr;->tcx_textSecondary:I

    :cond_0
    and-int/lit8 p8, p9, 0x10

    if-eqz p8, :cond_1

    .line 2
    sget p5, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    :cond_1
    and-int/lit8 p8, p9, 0x20

    if-eqz p8, :cond_2

    move-object p6, p1

    :cond_2
    and-int/lit16 p8, p9, 0x80

    if-eqz p8, :cond_3

    .line 3
    sget-object p8, Le/a/b0/a/c0/c;->b:Le/a/b0/a/c0/c;

    goto :goto_0

    :cond_3
    const/4 p8, 0x0

    :goto_0
    const-string p9, "title"

    .line 4
    invoke-static {p1, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "tabTag"

    invoke-static {p6, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "fragmentFactory"

    invoke-static {p7, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "onTabSelectedAction"

    invoke-static {p8, p9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/a/c0/b$d;->a:Ljava/lang/String;

    iput p2, p0, Le/a/b0/a/c0/b$d;->b:I

    iput p3, p0, Le/a/b0/a/c0/b$d;->c:I

    iput p4, p0, Le/a/b0/a/c0/b$d;->d:I

    iput p5, p0, Le/a/b0/a/c0/b$d;->e:I

    iput-object p6, p0, Le/a/b0/a/c0/b$d;->f:Ljava/lang/String;

    iput-object p7, p0, Le/a/b0/a/c0/b$d;->g:Ls1/z/b/a;

    iput-object p8, p0, Le/a/b0/a/c0/b$d;->h:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/b0/a/c0/b$d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b0/a/c0/b$d;

    iget-object v0, p0, Le/a/b0/a/c0/b$d;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/b0/a/c0/b$d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/b0/a/c0/b$d;->b:I

    iget v1, p1, Le/a/b0/a/c0/b$d;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/b0/a/c0/b$d;->c:I

    iget v1, p1, Le/a/b0/a/c0/b$d;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/b0/a/c0/b$d;->d:I

    iget v1, p1, Le/a/b0/a/c0/b$d;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/b0/a/c0/b$d;->e:I

    iget v1, p1, Le/a/b0/a/c0/b$d;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/b0/a/c0/b$d;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/b0/a/c0/b$d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/a/c0/b$d;->g:Ls1/z/b/a;

    iget-object v1, p1, Le/a/b0/a/c0/b$d;->g:Ls1/z/b/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/b0/a/c0/b$d;->h:Ls1/z/b/l;

    iget-object p1, p1, Le/a/b0/a/c0/b$d;->h:Ls1/z/b/l;

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

    iget-object v0, p0, Le/a/b0/a/c0/b$d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/b0/a/c0/b$d;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/b0/a/c0/b$d;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/b0/a/c0/b$d;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/b0/a/c0/b$d;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/a/c0/b$d;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/a/c0/b$d;->g:Ls1/z/b/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/b0/a/c0/b$d;->h:Ls1/z/b/l;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TabLayoutXItem(title="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b0/a/c0/b$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconNormal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/b0/a/c0/b$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/b0/a/c0/b$d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", normalColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/b0/a/c0/b$d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/b0/a/c0/b$d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tabTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/a/c0/b$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/a/c0/b$d;->g:Ls1/z/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onTabSelectedAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b0/a/c0/b$d;->h:Ls1/z/b/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
