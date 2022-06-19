.class public final Lcom/hiya/client/callerid/ui/x/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg/g/b/c/k;

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/hiya/client/callerid/ui/b0/j;

.field private final f:J

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JII)V
    .locals 1

    const-string v0, "profileTag"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    iput-boolean p3, p0, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    iput-boolean p4, p0, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    iput-wide p6, p0, Lcom/hiya/client/callerid/ui/x/d;->f:J

    iput p8, p0, Lcom/hiya/client/callerid/ui/x/d;->g:I

    iput p9, p0, Lcom/hiya/client/callerid/ui/x/d;->h:I

    return-void
.end method

.method public static synthetic b(Lcom/hiya/client/callerid/ui/x/d;Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JIIILjava/lang/Object;)Lcom/hiya/client/callerid/ui/x/d;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/hiya/client/callerid/ui/x/d;->f:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/hiya/client/callerid/ui/x/d;->g:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/hiya/client/callerid/ui/x/d;->h:I

    goto :goto_7

    :cond_7
    move/from16 v1, p9

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move-object p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/hiya/client/callerid/ui/x/d;->a(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JII)Lcom/hiya/client/callerid/ui/x/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JII)Lcom/hiya/client/callerid/ui/x/d;
    .locals 11

    const-string v0, "profileTag"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hiya/client/callerid/ui/x/d;

    move-object v1, v0

    move v4, p3

    move v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/hiya/client/callerid/ui/x/d;-><init>(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JII)V

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/client/callerid/ui/x/d;->h:I

    return v0
.end method

.method public final d()Lg/g/b/c/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/client/callerid/ui/x/d;->g:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/client/callerid/ui/x/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/client/callerid/ui/x/d;

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    iget-object v1, p1, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    iget-boolean v1, p1, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    iget-boolean v1, p1, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    iget-object v1, p1, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/x/d;->f:J

    iget-wide v2, p1, Lcom/hiya/client/callerid/ui/x/d;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/hiya/client/callerid/ui/x/d;->g:I

    iget v1, p1, Lcom/hiya/client/callerid/ui/x/d;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/hiya/client/callerid/ui/x/d;->h:I

    iget p1, p1, Lcom/hiya/client/callerid/ui/x/d;->h:I

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

.method public final f()Lcom/hiya/client/callerid/ui/b0/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/x/d;->f:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/hiya/client/callerid/ui/x/d;->f:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hiya/client/callerid/ui/x/d;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hiya/client/callerid/ui/x/d;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendPhoneInfo(profileTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/x/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/x/d;->b:Lg/g/b/c/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/x/d;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/x/d;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/x/d;->e:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/client/callerid/ui/x/d;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fetchAttempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/client/callerid/ui/x/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blockReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/client/callerid/ui/x/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
