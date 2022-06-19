.class public final Lcom/truecaller/insights/ui/models/AdapterItem$f;
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
    name = "f"
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


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/truecaller/insights/ui/models/AdapterItem;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$f;

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    iget-wide v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

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
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    .line 2
    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "EmptyPageItem(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-wide v1, p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;->a:J

    const-string v3, ")"

    .line 2
    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
