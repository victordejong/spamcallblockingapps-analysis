.class public final Le/a/g0/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "deviceMake"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "deviceModel"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/g0/j/d;->c:Ljava/lang/String;

    iput-object v2, v0, Le/a/g0/j/d;->d:Ljava/lang/String;

    iput v3, v0, Le/a/g0/j/d;->e:I

    iput v4, v0, Le/a/g0/j/d;->f:I

    const/16 v1, 0x63

    const/16 v2, 0x29

    const-string v5, "UNKNOWN_ERROR_CODE("

    const-string v6, "API_VERSION_UPDATE_REQUIRED"

    const-string v7, "SERVICE_MISSING_PERMISSION"

    const-string v8, "TIMEOUT"

    const-string v9, "CANCELED"

    const-string v10, "LICENSE_CHECK_FAILED"

    const-string v11, "DEVELOPER_ERROR"

    const-string v12, "SERVICE_INVALID"

    const-string v13, "INTERNAL_ERROR"

    const-string v14, "NETWORK_ERROR"

    const-string v15, "RESOLUTION_REQUIRED"

    const-string v16, "SERVICE_DISABLED"

    const-string v17, "SERVICE_VERSION_UPDATE_REQUIRED"

    const-string v18, "SERVICE_MISSING"

    const-string v19, "SUCCESS"

    const-string v20, "UNKNOWN"

    if-eq v3, v1, :cond_1

    const/16 v1, 0x5dc

    if-eq v3, v1, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_0
    move-object v1, v10

    goto/16 :goto_0

    :pswitch_1
    move-object v1, v11

    goto :goto_0

    :pswitch_2
    move-object v1, v12

    goto :goto_0

    :pswitch_3
    move-object v1, v13

    goto :goto_0

    :pswitch_4
    move-object v1, v14

    goto :goto_0

    :pswitch_5
    move-object v1, v15

    goto :goto_0

    :pswitch_6
    const-string v1, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_7
    const-string v1, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_8
    move-object/from16 v1, v16

    goto :goto_0

    :pswitch_9
    move-object/from16 v1, v17

    goto :goto_0

    :pswitch_a
    move-object/from16 v1, v18

    goto :goto_0

    :pswitch_b
    move-object/from16 v1, v19

    goto :goto_0

    :pswitch_c
    move-object/from16 v1, v20

    goto :goto_0

    :pswitch_d
    move-object v1, v6

    goto :goto_0

    :pswitch_e
    const-string v1, "RESTRICTED_PROFILE"

    goto :goto_0

    :pswitch_f
    move-object v1, v7

    goto :goto_0

    :pswitch_10
    const-string v1, "SERVICE_UPDATING"

    goto :goto_0

    :pswitch_11
    const-string v1, "SIGN_IN_FAILED"

    goto :goto_0

    :pswitch_12
    const-string v1, "API_UNAVAILABLE"

    goto :goto_0

    :pswitch_13
    const-string v1, "INTERRUPTED"

    goto :goto_0

    :pswitch_14
    move-object v1, v8

    goto :goto_0

    :pswitch_15
    move-object v1, v9

    goto :goto_0

    :cond_0
    const-string v1, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    goto :goto_0

    :cond_1
    const-string v1, "UNFINISHED"

    .line 3
    :goto_0
    iput-object v1, v0, Le/a/g0/j/d;->a:Ljava/lang/String;

    const/4 v1, -0x1

    if-eq v4, v1, :cond_9

    if-eqz v4, :cond_8

    const/4 v1, 0x1

    if-eq v4, v1, :cond_7

    const/4 v1, 0x2

    if-eq v4, v1, :cond_6

    const/4 v1, 0x3

    if-eq v4, v1, :cond_5

    const/16 v1, 0xd

    if-eq v4, v1, :cond_4

    const/16 v1, 0xe

    if-eq v4, v1, :cond_3

    const/16 v1, 0x13

    if-eq v4, v1, :cond_2

    const/16 v1, 0x15

    if-eq v4, v1, :cond_a

    packed-switch v4, :pswitch_data_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_16
    move-object v6, v10

    goto :goto_1

    :pswitch_17
    move-object v6, v11

    goto :goto_1

    :pswitch_18
    move-object v6, v12

    goto :goto_1

    :pswitch_19
    move-object v6, v13

    goto :goto_1

    :pswitch_1a
    move-object v6, v14

    goto :goto_1

    :pswitch_1b
    move-object v6, v15

    goto :goto_1

    :cond_2
    move-object v6, v7

    goto :goto_1

    :cond_3
    move-object v6, v8

    goto :goto_1

    :cond_4
    move-object v6, v9

    goto :goto_1

    :cond_5
    move-object/from16 v6, v16

    goto :goto_1

    :cond_6
    move-object/from16 v6, v17

    goto :goto_1

    :cond_7
    move-object/from16 v6, v18

    goto :goto_1

    :cond_8
    move-object/from16 v6, v19

    goto :goto_1

    :cond_9
    move-object/from16 v6, v20

    .line 5
    :cond_a
    :goto_1
    iput-object v6, v0, Le/a/g0/j/d;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/g0/j/d;->c:Ljava/lang/String;

    const-string v2, "DeviceMake"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/g0/j/d;->d:Ljava/lang/String;

    const-string v2, "DeviceModel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/g0/j/d;->a:Ljava/lang/String;

    const-string v2, "GmsStatus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/g0/j/d;->b:Ljava/lang/String;

    const-string v2, "HmsStatus"

    const-string v3, "RecaptchaNotAvailable"

    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/g0/j/d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/g0/j/d;

    iget-object v0, p0, Le/a/g0/j/d;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/g0/j/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/g0/j/d;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/g0/j/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/g0/j/d;->e:I

    iget v1, p1, Le/a/g0/j/d;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/g0/j/d;->f:I

    iget p1, p1, Le/a/g0/j/d;->f:I

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
    .locals 3

    iget-object v0, p0, Le/a/g0/j/d;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/g0/j/d;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/g0/j/d;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/g0/j/d;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RecaptchaNotAvailableEvent(deviceMake="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/g0/j/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/g0/j/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gmsStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/g0/j/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hmsStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/g0/j/d;->f:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
