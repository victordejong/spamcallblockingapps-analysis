.class public final Lcom/truecaller/insights/ui/models/AdapterItem$i;
.super Lcom/truecaller/insights/ui/models/AdapterItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/ui/models/AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Integer;

.field public final c:J

.field public final d:Le/a/c/a/c/g/c;

.field public final e:Le/a/c/a/c/g/b;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    iput-object p2, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    iput-object p5, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    iput-object p6, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    iput-object p7, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p9, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    const-wide/16 p3, 0x0

    :cond_1
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_2

    move-object p5, v1

    :cond_2
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_3

    move-object p6, v1

    :cond_3
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_4

    move-object p7, v1

    :cond_4
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_5

    move-object p8, v1

    .line 2
    :cond_5
    invoke-direct {p0, v1}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    iput-object p2, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    iput-object p5, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    iput-object p6, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    iput-object p7, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    iget v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    iget-wide v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    iget-object v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    iget-object v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

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
    .locals 5

    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

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

    .line 1
    iget-wide v3, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    .line 2
    invoke-static {v3, v4}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le/a/c/a/c/g/c;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Le/a/c/a/c/g/b;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TitleItem(title="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->c:J

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", titleAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toolTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryToolTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
