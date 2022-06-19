.class public final Le/a/d/c/z/p$a;
.super Le/a/d/c/z/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/c/z/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/a/c/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;


# direct methods
.method public constructor <init>(Ljava/util/List;JLcom/truecaller/voip/VoipGroupCallHistoryStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/b0/a/c/m/b;",
            ">;J",
            "Lcom/truecaller/voip/VoipGroupCallHistoryStatus;",
            ")V"
        }
    .end annotation

    const-string v0, "groupCallStatus"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/c/z/p;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/c/z/p$a;->a:Ljava/util/List;

    iput-wide p2, p0, Le/a/d/c/z/p$a;->b:J

    iput-object p4, p0, Le/a/d/c/z/p$a;->c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/c/z/p$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/c/z/p$a;

    iget-object v0, p0, Le/a/d/c/z/p$a;->a:Ljava/util/List;

    iget-object v1, p1, Le/a/d/c/z/p$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/d/c/z/p$a;->b:J

    iget-wide v2, p1, Le/a/d/c/z/p$a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/d/c/z/p$a;->c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    iget-object p1, p1, Le/a/d/c/z/p$a;->c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

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
    .locals 4

    iget-object v0, p0, Le/a/d/c/z/p$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/d/c/z/p$a;->b:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/d/c/z/p$a;->c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "GroupHeaderCallItem(groupAvatars="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/c/z/p$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/d/c/z/p$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", groupCallStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c/z/p$a;->c:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
