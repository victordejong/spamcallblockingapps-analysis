.class public final Lcom/truecaller/insights/ui/models/AdapterItem$j;
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
    name = "j"
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
.field public final a:Le/a/c/a/l/b;

.field public final b:J


# direct methods
.method public constructor <init>(Le/a/c/a/l/b;J)V
    .locals 1

    const-string v0, "businessTabItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    iput-wide p2, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    return-void
.end method

.method public constructor <init>(Le/a/c/a/l/b;JI)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p1}, Le/a/c/a/l/b;->a()J

    move-result-wide p2

    :cond_0
    const-string p4, "businessTabItem"

    .line 2
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 3
    invoke-direct {p0, p4}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    iput-wide p2, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 2
    instance-of v1, v0, Le/a/c/a/l/b$b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Le/a/c/a/l/b$b;

    .line 4
    iget-wide v0, v0, Le/a/c/a/l/b$b;->j:J

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Le/a/c/a/l/b$h;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Le/a/c/a/l/b$h;

    .line 7
    iget-wide v0, v0, Le/a/c/a/l/b$h;->g:J

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v0, Le/a/c/a/l/b$e;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Le/a/c/a/l/b$e;

    .line 10
    iget-wide v0, v0, Le/a/c/a/l/b$e;->u:J

    goto :goto_0

    .line 11
    :cond_2
    instance-of v1, v0, Le/a/c/a/l/b$g;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0}, Le/a/c/a/l/b;->a()J

    move-result-wide v0

    .line 13
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    instance-of v1, v0, Le/a/c/a/l/b$f;

    if-eqz v1, :cond_4

    .line 15
    check-cast v0, Le/a/c/a/l/b$f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Business Item type is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    iget-object v1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    iget-wide v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

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

    iget-object v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    .line 2
    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ValueItem(businessTabItem="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;->b:J

    const-string v3, ")"

    .line 2
    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
