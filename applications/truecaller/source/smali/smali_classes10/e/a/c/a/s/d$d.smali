.class public final Le/a/c/a/s/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Le/a/c/a/s/d$c;

.field public final b:I

.field public final c:I

.field public final d:Landroidx/fragment/app/Fragment;

.field public final e:Ls1/z/b/l;
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
.method public constructor <init>(Le/a/c/a/s/d$c;IILandroidx/fragment/app/Fragment;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p5, p6, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget p2, Lcom/truecaller/common/ui/R$attr;->tcx_textSecondary:I

    :cond_0
    and-int/lit8 p5, p6, 0x4

    if-eqz p5, :cond_1

    .line 2
    sget p3, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    :cond_1
    and-int/lit8 p5, p6, 0x10

    if-eqz p5, :cond_2

    .line 3
    sget-object p5, Le/a/c/a/s/e;->b:Le/a/c/a/s/e;

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    const-string p6, "tabName"

    .line 4
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "fragment"

    invoke-static {p4, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onTabSelectedAction"

    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    iput p2, p0, Le/a/c/a/s/d$d;->b:I

    iput p3, p0, Le/a/c/a/s/d$d;->c:I

    iput-object p4, p0, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Le/a/c/a/s/d$d;->e:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/a/s/d$d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/s/d$d;

    iget-object v0, p0, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    iget-object v1, p1, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/c/a/s/d$d;->b:I

    iget v1, p1, Le/a/c/a/s/d$d;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/c/a/s/d$d;->c:I

    iget v1, p1, Le/a/c/a/s/d$d;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/s/d$d;->e:Ls1/z/b/l;

    iget-object p1, p1, Le/a/c/a/s/d$d;->e:Ls1/z/b/l;

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

    iget-object v0, p0, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/c/a/s/d$d;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/c/a/s/d$d;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/s/d$d;->e:Ls1/z/b/l;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TitleTabLayoutXItem(tabName="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", normalColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/c/a/s/d$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/c/a/s/d$d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onTabSelectedAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/s/d$d;->e:Ls1/z/b/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
