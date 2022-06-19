.class public final Lcom/truecaller/insights/ui/models/AdapterItem$b;
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
    name = "b"
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
.field public final a:J

.field public final b:I

.field public final c:Ljava/lang/Integer;

.field public d:Z


# direct methods
.method public constructor <init>(JILjava/lang/Integer;ZI)V
    .locals 0

    and-int/lit8 p4, p6, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p6, 0x4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p4}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    iput p3, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    iput-object p4, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->c:Ljava/lang/Integer;

    iput-boolean p5, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    iget-wide v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    iget v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->c:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;->c:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->d:Z

    iget-boolean p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;->d:Z

    if-ne v0, p1, :cond_0

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
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    .line 2
    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CollapsibleSectionItem(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toolTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCollapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$b;->d:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
