.class public final Lcom/truecaller/messaging/data/types/ImGroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/ImGroupInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:J

.field public final l:Z

.field public final m:J

.field public final n:J

.field public final o:I

.field public final p:I

.field public final q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/data/types/ImGroupInfo$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/ImGroupInfo$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p8

    const-string v3, "groupId"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "permissions"

    invoke-static {p8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    move-wide v3, p4

    iput-wide v3, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    move-object v1, p6

    iput-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    iput-object v2, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move v1, p9

    iput v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    move v1, p10

    iput v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    move/from16 v1, p20

    iput v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    move/from16 v1, p21

    iput v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->p:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;I)V
    .locals 24

    const/high16 v0, 0x10000

    and-int v0, p23, v0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move/from16 v22, p21

    .line 2
    invoke-direct/range {v1 .. v23}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    iget v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    iget v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    iget v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    iget-boolean v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    iget v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->p:I

    iget v1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->p:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->p:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ImGroupInfo(groupId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", invitedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", invitedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", historyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", historySequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", historyMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", areParticipantsStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentSequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inviteNotificationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inviteNotificationCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", joinMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inviteKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
