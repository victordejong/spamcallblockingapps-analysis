.class public final Le/a/h/b/d/a/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/truecaller/data/entity/Contact;

.field public final h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public final i:Ljava/lang/Long;

.field public final j:J

.field public final k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;Ljava/lang/Long;JLcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Contact;",
            "Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;",
            "Ljava/lang/Long;",
            "J",
            "Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactBadge"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEventIds"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/h/b/d/a/b/p;->a:Z

    iput-boolean p2, p0, Le/a/h/b/d/a/b/p;->b:Z

    iput-boolean p3, p0, Le/a/h/b/d/a/b/p;->c:Z

    iput-object p4, p0, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    iput-object p5, p0, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    iput-object p7, p0, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    iput-object p8, p0, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    iput-object p9, p0, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    iput-wide p10, p0, Le/a/h/b/d/a/b/p;->j:J

    iput-object p12, p0, Le/a/h/b/d/a/b/p;->k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    iput-object p13, p0, Le/a/h/b/d/a/b/p;->l:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/b/d/a/b/p;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/b/d/a/b/p;

    iget-boolean v0, p0, Le/a/h/b/d/a/b/p;->a:Z

    iget-boolean v1, p1, Le/a/h/b/d/a/b/p;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/h/b/d/a/b/p;->b:Z

    iget-boolean v1, p1, Le/a/h/b/d/a/b/p;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/h/b/d/a/b/p;->c:Z

    iget-boolean v1, p1, Le/a/h/b/d/a/b/p;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/h/b/d/a/b/p;->j:J

    iget-wide v2, p1, Le/a/h/b/d/a/b/p;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    iget-object v1, p1, Le/a/h/b/d/a/b/p;->k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/p;->l:Ljava/util/Set;

    iget-object p1, p1, Le/a/h/b/d/a/b/p;->l:Ljava/util/Set;

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

    iget-boolean v0, p0, Le/a/h/b/d/a/b/p;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/h/b/d/a/b/p;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/h/b/d/a/b/p;->c:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Le/a/h/b/d/a/b/p;->j:J

    invoke-static {v3, v4}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->l:Ljava/util/Set;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ItemData(isSpam="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/h/b/d/a/b/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCallHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/h/b/d/a/b/p;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/h/b/d/a/b/p;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", normalizedNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/h/b/d/a/b/p;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contactBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historyEventIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/p;->l:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
