.class public final Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J.\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0016\u001a\u0004\u0008\u0018\u0010\u0004R\u001c\u0010\u0008\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0004\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
        "",
        "",
        "component1",
        "()J",
        "component2",
        "component3",
        "id",
        "contactId",
        "timestamp",
        "copy",
        "(JJJ)Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
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
        "J",
        "getId",
        "getTimestamp",
        "getContactId",
        "<init>",
        "(JJJ)V",
        "contact-feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final contactId:J

.field private final id:J

.field private final timestamp:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    iput-wide p3, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    iput-wide p5, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(JJJILs1/z/c/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    move-object v0, p0

    move-wide v3, p3

    move-wide v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;-><init>(JJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;JJJILjava/lang/Object;)Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    :cond_2
    move-wide v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->copy(JJJ)Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    return-wide v0
.end method

.method public final copy(JJJ)Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;
    .locals 8

    new-instance v7, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;-><init>(JJJ)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    iget-wide v2, p1, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    iget-wide v2, p1, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    iget-wide v2, p1, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

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

.method public final getContactId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ContactFeedbackTimestamp(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->contactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->timestamp:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
