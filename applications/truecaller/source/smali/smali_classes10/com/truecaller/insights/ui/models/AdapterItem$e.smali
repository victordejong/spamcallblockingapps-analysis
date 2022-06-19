.class public final Lcom/truecaller/insights/ui/models/AdapterItem$e;
.super Lcom/truecaller/insights/ui/models/AdapterItem;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/i/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/insights/ui/models/AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Le/a/c/a/i/i<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->a:I

    iput p2, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->b:I

    iput p3, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->c:I

    iput-wide p4, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->a:I

    iget v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->b:I

    iget v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->c:I

    iget v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;->c:I

    if-ne v0, v1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    iget-wide v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

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

    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    .line 2
    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "EmptyItem(title="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$e;->d:J

    const-string v3, ")"

    .line 2
    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
