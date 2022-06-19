.class public final Lcom/truecaller/messaging/data/types/Draft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/Draft$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:[Lcom/truecaller/messaging/data/types/BinaryEntity;


# instance fields
.field public final a:J

.field public final b:Lcom/truecaller/messaging/data/types/Conversation;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final f:[Lcom/truecaller/messaging/data/types/Mention;

.field public final g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/truecaller/messaging/data/types/ReplySnippet;

.field public final n:I

.field public final o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

.field public final p:I

.field public final q:J

.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 1
    sput-object v0, Lcom/truecaller/messaging/data/types/Draft;->s:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 2
    new-instance v0, Lcom/truecaller/messaging/data/types/Draft$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Draft$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/Draft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/data/types/Draft$a;)V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->a:J

    .line 40
    const-class p2, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->d:Z

    .line 43
    sget-object p2, Lcom/truecaller/data/entity/messaging/Participant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 44
    const-class p2, Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 45
    array-length v2, p2

    new-array v2, v2, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    move v2, v0

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 47
    aget-object v4, p2, v2

    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    .line 50
    const-class p2, Lcom/truecaller/messaging/data/types/ReplySnippet;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/ReplySnippet;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->m:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Draft;->j:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->k:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/truecaller/messaging/data/types/Draft;->l:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft;->n:I

    .line 55
    const-class p2, Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 56
    array-length v1, p2

    new-array v1, v1, [Lcom/truecaller/messaging/data/types/Mention;

    iput-object v1, p0, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    .line 57
    :goto_5
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 58
    aget-object v2, p2, v0

    check-cast v2, Lcom/truecaller/messaging/data/types/Mention;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 59
    :cond_5
    const-class p2, Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft;->p:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->q:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/data/types/Draft;->r:I

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Draft$b;Lcom/truecaller/messaging/data/types/Draft$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Draft$b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->a:J

    .line 4
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 5
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 6
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    .line 8
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 9
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->d:Z

    .line 10
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    .line 11
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 12
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->g:Ljava/util/List;

    if-nez p2, :cond_1

    .line 13
    sget-object p2, Lcom/truecaller/messaging/data/types/Draft;->s:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 15
    :goto_0
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->h:Z

    .line 16
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->j:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 19
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->m:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 20
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Draft$b;->i:J

    .line 21
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->j:J

    .line 22
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->k:Z

    .line 23
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->k:Z

    .line 24
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->l:Z

    .line 25
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Draft;->l:Z

    .line 26
    iget p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->m:I

    .line 27
    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft;->n:I

    .line 28
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->d:Ljava/util/Set;

    .line 29
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/Mention;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/messaging/data/types/Mention;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    .line 30
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->n:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 31
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Draft;->o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 32
    iget p2, p1, Lcom/truecaller/messaging/data/types/Draft$b;->o:I

    .line 33
    iput p2, p0, Lcom/truecaller/messaging/data/types/Draft;->p:I

    .line 34
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Draft$b;->p:J

    .line 35
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->q:J

    .line 36
    iget p1, p1, Lcom/truecaller/messaging/data/types/Draft$b;->q:I

    .line 37
    iput p1, p0, Lcom/truecaller/messaging/data/types/Draft;->r:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v1}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 2
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Draft;->a:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 3
    iput-wide v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v2, :cond_1

    .line 5
    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 6
    iput-wide v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    .line 7
    :cond_1
    iget-boolean v2, v0, Lcom/truecaller/messaging/data/types/Draft;->k:Z

    .line 8
    iput-boolean v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    .line 11
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 12
    iput-object v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->e:Lw3/b/a/b;

    .line 13
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 14
    iput-object v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->d:Lw3/b/a/b;

    .line 15
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    aget-object v6, v3, v2

    .line 16
    iput-object v6, v1, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    if-nez p1, :cond_2

    const-string v6, "-1"

    goto :goto_0

    :cond_2
    move-object/from16 v6, p1

    .line 17
    :goto_0
    iput-object v6, v1, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 18
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    .line 19
    iput-object v6, v1, Lcom/truecaller/messaging/data/types/Message$b;->s:Ljava/lang/String;

    move-object/from16 v6, p2

    .line 20
    iput-object v6, v1, Lcom/truecaller/messaging/data/types/Message$b;->t:Ljava/lang/String;

    const/4 v6, 0x3

    .line 21
    iput v6, v1, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 22
    iget-boolean v7, v0, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    .line 23
    iput-boolean v7, v1, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 24
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    .line 25
    iput-object v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->r:Ljava/lang/String;

    const/4 v3, 0x2

    .line 26
    iput v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->u:I

    .line 27
    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/Draft;->j:J

    .line 28
    iput-wide v7, v1, Lcom/truecaller/messaging/data/types/Message$b;->z:J

    .line 29
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft;->o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 30
    iput-object v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->L:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 31
    iget-boolean v3, v0, Lcom/truecaller/messaging/data/types/Draft;->l:Z

    .line 32
    iput-boolean v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->J:Z

    .line 33
    iget v3, v0, Lcom/truecaller/messaging/data/types/Draft;->p:I

    .line 34
    iput v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->M:I

    .line 35
    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/Draft;->q:J

    .line 36
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/truecaller/messaging/data/types/Message$b;->e(Ljava/lang/Long;)Lcom/truecaller/messaging/data/types/Message$b;

    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    .line 37
    iget-object v7, v1, Lcom/truecaller/messaging/data/types/Message$b;->p:Ljava/util/Set;

    invoke-static {v7, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 38
    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/Draft;->a:J

    cmp-long v3, v7, v4

    if-eqz v3, :cond_3

    .line 39
    new-instance v3, Lcom/truecaller/messaging/transport/NullTransportInfo$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/transport/NullTransportInfo$b;-><init>()V

    .line 40
    iput-wide v7, v3, Lcom/truecaller/messaging/transport/NullTransportInfo$b;->a:J

    .line 41
    invoke-virtual {v3}, Lcom/truecaller/messaging/transport/NullTransportInfo$b;->a()Lcom/truecaller/messaging/transport/NullTransportInfo;

    move-result-object v3

    goto :goto_1

    .line 42
    :cond_3
    sget-object v3, Lcom/truecaller/messaging/transport/NullTransportInfo;->b:Lcom/truecaller/messaging/transport/NullTransportInfo;

    .line 43
    :goto_1
    iput v6, v1, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 44
    iput-object v3, v1, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 45
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 46
    invoke-virtual {v1, v5}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 47
    :cond_4
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/messaging/data/types/Draft;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    .line 48
    iget-object v8, v0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/truecaller/messaging/data/types/Draft;->d:Z

    .line 49
    sget-object v3, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const v26, 0x3ffe0

    const-string v6, "text/plain"

    invoke-static/range {v3 .. v26}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 51
    :cond_6
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    return-object v1
.end method

.method public b()Lcom/truecaller/messaging/data/types/Draft$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/Draft$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>(Lcom/truecaller/messaging/data/types/Draft;Lcom/truecaller/messaging/data/types/Draft$a;)V

    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->q:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Draft{messageId="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Draft;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", participants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mentions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hiddenNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Draft;->d:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 7
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->m:Lcom/truecaller/messaging/data/types/ReplySnippet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Draft;->k:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Draft;->l:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget v0, p0, Lcom/truecaller/messaging/data/types/Draft;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->f:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Draft;->o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 16
    iget p2, p0, Lcom/truecaller/messaging/data/types/Draft;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Draft;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    iget p2, p0, Lcom/truecaller/messaging/data/types/Draft;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
