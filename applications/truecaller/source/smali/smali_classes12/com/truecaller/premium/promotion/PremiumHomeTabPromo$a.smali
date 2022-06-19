.class public final Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/premium/promotion/PremiumHomeTabPromo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u0004R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u000c\u0010\u0004R\u001c\u0010\u0015\u001a\u00020\u00128\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "com/truecaller/premium/promotion/PremiumHomeTabPromo$a",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "c",
        "Ljava/lang/String;",
        "a",
        "campaign",
        "b",
        "url",
        "Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;",
        "Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;",
        "()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;",
        "type",
        "<init>",
        "(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;Ljava/lang/String;Ljava/lang/String;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;
    .annotation runtime Le/m/e/d0/b;
        value = "type"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "url"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "campaign"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "type"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;

    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    iget-object v1, p1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Data(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->a:Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", campaign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$a;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
