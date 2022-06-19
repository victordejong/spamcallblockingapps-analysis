.class public final Le/a/k0/l/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/k0/l/l;

.field public final b:J

.field public final c:Lcom/truecaller/callrecording/recorder/RecordingError;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Le/a/k0/l/j;-><init>(Le/a/k0/l/l;JLcom/truecaller/callrecording/recorder/RecordingError;I)V

    return-void
.end method

.method public constructor <init>(Le/a/k0/l/l;JLcom/truecaller/callrecording/recorder/RecordingError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    iput-wide p2, p0, Le/a/k0/l/j;->b:J

    iput-object p4, p0, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    return-void
.end method

.method public constructor <init>(Le/a/k0/l/l;JLcom/truecaller/callrecording/recorder/RecordingError;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    :cond_2
    const-string p5, "error"

    .line 3
    invoke-static {p4, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    iput-wide p2, p0, Le/a/k0/l/j;->b:J

    iput-object p4, p0, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k0/l/j;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k0/l/j;

    iget-object v0, p0, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    iget-object v1, p1, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/k0/l/j;->b:J

    iget-wide v2, p1, Le/a/k0/l/j;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    iget-object p1, p1, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

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

    iget-object v0, p0, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/k0/l/l;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/k0/l/j;->b:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RecordingResult(data="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/k0/l/j;->a:Le/a/k0/l/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/k0/l/j;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
