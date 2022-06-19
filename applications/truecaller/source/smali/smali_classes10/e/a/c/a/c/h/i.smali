.class public final Le/a/c/a/c/h/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/b/j;

.field public final b:Le/a/c/c0/o;

.field public c:Le/a/c/a/c/g/e;

.field public d:Le/a/c/a/c/g/a;

.field public e:Le/a/c/a/c/g/f;

.field public f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

.field public g:Z


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/g/e;Le/a/c/a/c/g/a;Le/a/c/a/c/g/f;Lcom/truecaller/insights/ui/models/AdapterItem$a;ZI)V
    .locals 0

    and-int/lit8 p3, p8, 0x4

    and-int/lit8 p3, p8, 0x8

    and-int/lit8 p3, p8, 0x10

    and-int/lit8 p3, p8, 0x20

    and-int/lit8 p3, p8, 0x40

    if-eqz p3, :cond_0

    const/4 p7, 0x0

    :cond_0
    const-string p3, "insightsStatusProvider"

    .line 1
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "insightConfig"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/c/h/i;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/a/c/h/i;->b:Le/a/c/c0/o;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    iput-object p1, p0, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    iput-object p1, p0, Le/a/c/a/c/h/i;->e:Le/a/c/a/c/g/f;

    iput-object p1, p0, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    iput-boolean p7, p0, Le/a/c/a/c/h/i;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/a/c/h/i;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/c/h/i;

    iget-object v0, p0, Le/a/c/a/c/h/i;->a:Le/a/c/b/j;

    iget-object v1, p1, Le/a/c/a/c/h/i;->a:Le/a/c/b/j;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/c/h/i;->b:Le/a/c/c0/o;

    iget-object v1, p1, Le/a/c/a/c/h/i;->b:Le/a/c/c0/o;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    iget-object v1, p1, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    iget-object v1, p1, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/c/h/i;->e:Le/a/c/a/c/g/f;

    iget-object v1, p1, Le/a/c/a/c/h/i;->e:Le/a/c/a/c/g/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    iget-object v1, p1, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/a/c/h/i;->g:Z

    iget-boolean p1, p1, Le/a/c/a/c/h/i;->g:Z

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
    .locals 3

    iget-object v0, p0, Le/a/c/a/c/h/i;->a:Le/a/c/b/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/c/h/i;->b:Le/a/c/c0/o;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Le/a/c/a/c/g/e;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le/a/c/a/c/g/a;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/c/h/i;->e:Le/a/c/a/c/g/f;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Le/a/c/a/c/g/f;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/truecaller/insights/ui/models/AdapterItem$a;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/c/a/c/h/i;->g:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ImportantTabContainer(insightsStatusProvider="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/c/h/i;->a:Le/a/c/b/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", insightConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/c/h/i;->b:Le/a/c/c0/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upcomingSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", financeSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatesSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/c/h/i;->e:Le/a/c/a/c/g/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hideTransactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/c/a/c/h/i;->g:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
