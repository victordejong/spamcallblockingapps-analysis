.class public final Le/a/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/voip/VoipState;

.field public final b:Lcom/truecaller/voip/VoipStateReason;

.field public final c:Lcom/truecaller/voip/ConnectionState;

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionState"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMessage"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    iput-object p2, p0, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    iput-object p3, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    iput p4, p0, Le/a/d/l;->d:I

    iput p5, p0, Le/a/d/l;->e:I

    iput-boolean p6, p0, Le/a/d/l;->f:Z

    iput-object p7, p0, Le/a/d/l;->g:Ljava/lang/String;

    iput-boolean p8, p0, Le/a/d/l;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/truecaller/voip/VoipState;->INITIAL:Lcom/truecaller/voip/VoipState;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v2, 0x0

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    .line 3
    sget-object v3, Lcom/truecaller/voip/ConnectionState;->CONNECTED:Lcom/truecaller/voip/ConnectionState;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    .line 4
    sget v4, Lcom/truecaller/voip/R$string;->voip_empty:I

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 5
    sget v5, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const-string v8, ""

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v7, p8

    :goto_6
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move p5, v4

    move p6, v5

    move/from16 p7, v6

    move-object/from16 p8, v8

    move/from16 p9, v7

    .line 6
    invoke-direct/range {p1 .. p9}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;Z)V

    return-void
.end method

.method public static a(Le/a/d/l;Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;ZI)Le/a/d/l;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Le/a/d/l;->d:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Le/a/d/l;->e:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Le/a/d/l;->f:Z

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Le/a/d/l;->g:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Le/a/d/l;->h:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    .line 1
    :goto_7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "state"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionState"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMessage"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/l;

    move-object p0, v0

    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-direct/range {p0 .. p8}, Le/a/d/l;-><init>(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;Lcom/truecaller/voip/ConnectionState;IIZLjava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {v0}, Lcom/truecaller/voip/ConnectionState;->getCallStatusColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Le/a/d/l;->e:I

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {v0}, Lcom/truecaller/voip/ConnectionState;->getShowAvatarRing()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Le/a/d/l;->f:Z

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {v0}, Lcom/truecaller/voip/ConnectionState;->getStartTimer()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Le/a/d/l;->h:Z

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {v0}, Lcom/truecaller/voip/ConnectionState;->getStatusId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Le/a/d/l;->d:I

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/l;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/l;

    iget-object v0, p0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    iget-object v1, p1, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    iget-object v1, p1, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    iget-object v1, p1, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/d/l;->d:I

    iget v1, p1, Le/a/d/l;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/d/l;->e:I

    iget v1, p1, Le/a/d/l;->e:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/l;->f:Z

    iget-boolean v1, p1, Le/a/d/l;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/d/l;->g:Ljava/lang/String;

    iget-object v1, p1, Le/a/d/l;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/d/l;->h:Z

    iget-boolean p1, p1, Le/a/d/l;->h:Z

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

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/d/l;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/d/l;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/d/l;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/d/l;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/d/l;->h:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VoipServiceState(state="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/d/l;->a:Lcom/truecaller/voip/VoipState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/l;->b:Lcom/truecaller/voip/VoipStateReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/l;->c:Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/d/l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callStatusColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/d/l;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showAvatarRing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/l;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", logMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/l;->h:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
