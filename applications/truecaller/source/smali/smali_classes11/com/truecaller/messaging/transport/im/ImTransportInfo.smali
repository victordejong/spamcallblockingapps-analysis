.class public final Lcom/truecaller/messaging/transport/im/ImTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/messaging/data/types/TransportInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/transport/im/ImTransportInfo$b;,
        Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/transport/im/ImTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:[Lcom/truecaller/messaging/data/types/Reaction;

.field public final l:J

.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:[Lcom/truecaller/messaging/data/types/QuickAction;

.field public final q:I

.field public final r:I

.field public final s:Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$b;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V
    .locals 4

    move-object v0, p0

    move-object v1, p3

    const-string v2, "rawId"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v2, p1

    iput-wide v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->a:J

    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->c:I

    move v1, p5

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    move v1, p6

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    move v1, p7

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->f:I

    move v1, p8

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->g:I

    move v1, p9

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->h:I

    move v1, p10

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->i:I

    move-wide v1, p11

    iput-wide v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->j:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->k:[Lcom/truecaller/messaging/data/types/Reaction;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->l:J

    move/from16 v1, p16

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->m:I

    move/from16 v1, p17

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->n:I

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->o:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->p:[Lcom/truecaller/messaging/data/types/QuickAction;

    move/from16 v1, p20

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->q:I

    move/from16 v1, p21

    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->r:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->s:Lcom/truecaller/data/entity/messaging/Participant;

    return-void
.end method


# virtual methods
.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    return v0
.end method

.method public J0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    return v0
.end method

.method public T1(Lw3/b/a/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    return-object p1
.end method

.method public final a()Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;

    const-string v1, "info"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0}, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;-><init>()V

    .line 4
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->a:J

    .line 5
    iput-wide v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->a:J

    .line 6
    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->b:Ljava/lang/String;

    .line 8
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->c:I

    .line 9
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->c:I

    .line 10
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    .line 11
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->d:I

    .line 12
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    .line 13
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->e:I

    .line 14
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->f:I

    .line 15
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->f:I

    .line 16
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->g:I

    .line 17
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->g:I

    .line 18
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->r:I

    .line 19
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->h:I

    .line 20
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->h:I

    .line 21
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->i:I

    .line 22
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->i:I

    .line 23
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->j:I

    .line 24
    iget-wide v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->j:J

    .line 25
    iput-wide v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->k:J

    .line 26
    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->k:[Lcom/truecaller/messaging/data/types/Reaction;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 27
    invoke-static {v1}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->l:Ljava/util/List;

    .line 28
    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->o:Ljava/lang/String;

    .line 29
    iput-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->q:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->p:[Lcom/truecaller/messaging/data/types/QuickAction;

    if-eqz v1, :cond_1

    .line 31
    invoke-static {v1}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->r:Ljava/util/List;

    .line 32
    iget v1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->q:I

    .line 33
    iput v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->s:I

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m1()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->k:[Lcom/truecaller/messaging/data/types/Reaction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v2

    :goto_0
    if-le v3, v4, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5, p1, v2}, Lcom/truecaller/messaging/data/types/Reaction;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-wide v3, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->l:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->p:[Lcom/truecaller/messaging/data/types/QuickAction;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v2

    :goto_1
    if-le v1, v3, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, v2}, Lcom/truecaller/messaging/data/types/QuickAction;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->s:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
