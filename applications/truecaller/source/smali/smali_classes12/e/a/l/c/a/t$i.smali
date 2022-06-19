.class public final Le/a/l/c/a/t$i;
.super Le/a/l/c/a/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Le/a/l/c/a/x2;

.field public final f:Le/a/l/c/a/x2;

.field public final g:Le/a/l/c/a/x2;

.field public final h:Le/a/l/n2/f;

.field public final i:Le/a/l/v2/i/a/a;

.field public final j:Le/a/l/c/a/a0;

.field public final k:Le/a/l/c/a/y;

.field public final l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/n2/f;Le/a/l/v2/i/a/a;Le/a/l/c/a/a0;Le/a/l/c/a/y;Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;I)V
    .locals 2

    and-int/lit8 v0, p13, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p13, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 v0, p13, 0x20

    if-eqz v0, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 v0, p13, 0x40

    if-eqz v0, :cond_6

    move-object p7, v1

    :cond_6
    and-int/lit16 v0, p13, 0x200

    if-eqz v0, :cond_7

    move-object p10, v1

    :cond_7
    and-int/lit16 v0, p13, 0x400

    if-eqz v0, :cond_8

    move-object p11, v1

    :cond_8
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_9

    move-object p12, v1

    :cond_9
    const-string p13, "purchaseItem"

    .line 1
    invoke-static {p8, p13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p13, "purchaseButton"

    invoke-static {p9, p13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v1}, Le/a/l/c/a/t;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/l/c/a/t$i;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/l/c/a/t$i;->b:Ljava/lang/Integer;

    iput-object p3, p0, Le/a/l/c/a/t$i;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/l/c/a/t$i;->d:Z

    iput-object p5, p0, Le/a/l/c/a/t$i;->e:Le/a/l/c/a/x2;

    iput-object p6, p0, Le/a/l/c/a/t$i;->f:Le/a/l/c/a/x2;

    iput-object p7, p0, Le/a/l/c/a/t$i;->g:Le/a/l/c/a/x2;

    iput-object p8, p0, Le/a/l/c/a/t$i;->h:Le/a/l/n2/f;

    iput-object p9, p0, Le/a/l/c/a/t$i;->i:Le/a/l/v2/i/a/a;

    iput-object p10, p0, Le/a/l/c/a/t$i;->j:Le/a/l/c/a/a0;

    iput-object p11, p0, Le/a/l/c/a/t$i;->k:Le/a/l/c/a/y;

    iput-object p12, p0, Le/a/l/c/a/t$i;->l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/c/a/t$i;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/c/a/t$i;

    iget-object v0, p0, Le/a/l/c/a/t$i;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/c/a/t$i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->b:Ljava/lang/Integer;

    iget-object v1, p1, Le/a/l/c/a/t$i;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/c/a/t$i;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/l/c/a/t$i;->d:Z

    iget-boolean v1, p1, Le/a/l/c/a/t$i;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->e:Le/a/l/c/a/x2;

    iget-object v1, p1, Le/a/l/c/a/t$i;->e:Le/a/l/c/a/x2;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->f:Le/a/l/c/a/x2;

    iget-object v1, p1, Le/a/l/c/a/t$i;->f:Le/a/l/c/a/x2;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->g:Le/a/l/c/a/x2;

    iget-object v1, p1, Le/a/l/c/a/t$i;->g:Le/a/l/c/a/x2;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->h:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/c/a/t$i;->h:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->i:Le/a/l/v2/i/a/a;

    iget-object v1, p1, Le/a/l/c/a/t$i;->i:Le/a/l/v2/i/a/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->j:Le/a/l/c/a/a0;

    iget-object v1, p1, Le/a/l/c/a/t$i;->j:Le/a/l/c/a/a0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->k:Le/a/l/c/a/y;

    iget-object v1, p1, Le/a/l/c/a/t$i;->k:Le/a/l/c/a/y;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/t$i;->l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

    iget-object p1, p1, Le/a/l/c/a/t$i;->l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

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

    iget-object v0, p0, Le/a/l/c/a/t$i;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/l/c/a/t$i;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->e:Le/a/l/c/a/x2;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Le/a/l/c/a/x2;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->f:Le/a/l/c/a/x2;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Le/a/l/c/a/x2;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->g:Le/a/l/c/a/x2;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Le/a/l/c/a/x2;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->h:Le/a/l/n2/f;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->i:Le/a/l/v2/i/a/a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Le/a/l/v2/i/a/a;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->j:Le/a/l/c/a/a0;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Le/a/l/c/a/a0;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->k:Le/a/l/c/a/y;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Le/a/l/c/a/y;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/t$i;->l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Promo(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/c/a/t$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/c/a/t$i;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->e:Le/a/l/c/a/x2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->f:Le/a/l/c/a/x2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->g:Le/a/l/c/a/x2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->h:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->i:Le/a/l/v2/i/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->j:Le/a/l/c/a/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countDownTimerSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->k:Le/a/l/c/a/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onBindAnalyticsAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/t$i;->l:Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
