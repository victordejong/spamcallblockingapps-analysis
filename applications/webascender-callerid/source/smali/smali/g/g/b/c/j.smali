.class public final Lg/g/b/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lg/g/b/c/l;

.field private final c:Lg/g/b/c/k;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:Lg/g/b/c/t;


# direct methods
.method public constructor <init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/g/b/c/j;->a:Z

    iput-object p2, p0, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    iput-object p3, p0, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    iput-object p4, p0, Lg/g/b/c/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lg/g/b/c/j;->e:Ljava/lang/String;

    iput-wide p6, p0, Lg/g/b/c/j;->f:J

    iput-object p8, p0, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    return-void
.end method

.method public synthetic constructor <init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;ILkotlin/w/c/g;)V
    .locals 10

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    .line 2
    invoke-direct/range {v1 .. v9}, Lg/g/b/c/j;-><init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)V

    return-void
.end method

.method public static synthetic b(Lg/g/b/c/j;ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;ILjava/lang/Object;)Lg/g/b/c/j;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lg/g/b/c/j;->a:Z

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-object v3, v0, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    iget-object v4, v0, Lg/g/b/c/j;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    iget-object v5, v0, Lg/g/b/c/j;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v5, p5

    :goto_4
    and-int/lit8 v6, p9, 0x20

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lg/g/b/c/j;->f:J

    goto :goto_5

    :cond_5
    move-wide v6, p6

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-wide p6, v6

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lg/g/b/c/j;->a(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)Lg/g/b/c/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)Lg/g/b/c/j;
    .locals 10

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/g/b/c/j;

    move-object v1, v0

    move v2, p1

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lg/g/b/c/j;-><init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lg/g/b/c/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/b/c/j;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/b/c/j;

    iget-boolean v0, p0, Lg/g/b/c/j;->a:Z

    iget-boolean v1, p1, Lg/g/b/c/j;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    iget-object v1, p1, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    iget-object v1, p1, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/b/c/j;->d:Ljava/lang/String;

    iget-object v1, p1, Lg/g/b/c/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/b/c/j;->e:Ljava/lang/String;

    iget-object v1, p1, Lg/g/b/c/j;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lg/g/b/c/j;->f:J

    iget-wide v2, p1, Lg/g/b/c/j;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    iget-object p1, p1, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/g/b/c/j;->f:J

    return-wide v0
.end method

.method public final g()Lg/g/b/c/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    return-object v0
.end method

.method public final h()Lg/g/b/c/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-boolean v0, p0, Lg/g/b/c/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/c/j;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/c/j;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lg/g/b/c/j;->f:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/b/c/j;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventData(isContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/g/b/c/j;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/c/j;->b:Lg/g/b/c/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/c/j;->c:Lg/g/b/c/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/c/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/c/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/g/b/c/j;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", verificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/c/j;->g:Lg/g/b/c/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
