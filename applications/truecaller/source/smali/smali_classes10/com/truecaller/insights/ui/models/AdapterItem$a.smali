.class public final Lcom/truecaller/insights/ui/models/AdapterItem$a;
.super Lcom/truecaller/insights/ui/models/AdapterItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/ui/models/AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/Integer;

.field public final g:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

.field public final h:I

.field public final i:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/content/Context;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIIIILjava/lang/Integer;Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;ILs1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;I)V
    .locals 0

    and-int/lit8 p13, p13, 0x1

    if-eqz p13, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const-string p13, "bannerType"

    .line 1
    invoke-static {p8, p13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p13, "primaryButtonAction"

    invoke-static {p10, p13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p13, 0x0

    .line 2
    invoke-direct {p0, p13}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->a:J

    iput p3, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->b:I

    iput p4, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->c:I

    iput p5, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->d:I

    iput p6, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->e:I

    iput-object p7, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->g:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    iput p9, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->h:I

    iput-object p10, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->i:Ls1/z/b/l;

    iput-object p11, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->j:Ls1/z/b/a;

    iput-object p12, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->k:Ls1/z/b/a;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->b:I

    iget v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->c:I

    iget v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->c:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->d:I

    iget v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->d:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->h:I

    iget v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->h:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->e:I

    iget v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->e:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->a:J

    .line 2
    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->g:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->i:Ls1/z/b/l;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->j:Ls1/z/b/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->k:Ls1/z/b/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BannerItem(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bannerViewImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->g:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryButtonAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->i:Ls1/z/b/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryButtonAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->j:Ls1/z/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dismissAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$a;->k:Ls1/z/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
