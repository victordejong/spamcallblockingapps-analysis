.class public Lcom/truecaller/messaging/data/types/Conversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/Conversation$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Z

.field public final D:I

.field public final E:I

.field public J:Ljava/lang/String;

.field public final K:Z

.field public final L:Lw3/b/a/b;

.field public final M:Lw3/b/a/b;

.field public final N:Lw3/b/a/b;

.field public final O:[Lcom/truecaller/messaging/data/types/Mention;

.field public final P:Lw3/b/a/b;

.field public Q:Ljava/lang/String;

.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lw3/b/a/b;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:I

.field public final m:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:Lcom/truecaller/messaging/data/types/ImGroupInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/Conversation$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Conversation$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/data/types/Conversation$a;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->b:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->d:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    .line 86
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->k:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    new-array p2, p2, [Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 92
    sget-object v2, Lcom/truecaller/data/entity/messaging/Participant;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->n:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->o:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->p:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->q:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->v:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->w:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->x:I

    .line 104
    const-class p2, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->B:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->D:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->E:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/truecaller/messaging/data/types/Conversation;->K:Z

    .line 111
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->L:Lw3/b/a/b;

    .line 112
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->M:Lw3/b/a/b;

    .line 113
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->N:Lw3/b/a/b;

    .line 114
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    .line 115
    const-class p2, Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 116
    array-length v1, p2

    new-array v1, v1, [Lcom/truecaller/messaging/data/types/Mention;

    iput-object v1, p0, Lcom/truecaller/messaging/data/types/Conversation;->O:[Lcom/truecaller/messaging/data/types/Mention;

    .line 117
    :goto_5
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Conversation;->O:[Lcom/truecaller/messaging/data/types/Mention;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 118
    aget-object v2, p2, v0

    check-cast v2, Lcom/truecaller/messaging/data/types/Mention;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation$b;Lcom/truecaller/messaging/data/types/Conversation$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 4
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->b:J

    .line 5
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->b:J

    .line 6
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->c:I

    .line 7
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    .line 8
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->d:J

    .line 9
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->d:J

    .line 10
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->e:I

    .line 11
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    .line 12
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->f:I

    .line 13
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    .line 14
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->g:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->h:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->i:Lw3/b/a/b;

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_0
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    .line 20
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->j:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, ""

    .line 21
    :cond_1
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    .line 22
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->k:Z

    .line 23
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->k:Z

    .line 24
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->l:I

    .line 25
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    .line 26
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 28
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->n:Z

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->n:Z

    .line 29
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->o:I

    .line 30
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->o:I

    .line 31
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->p:I

    .line 32
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->p:I

    .line 33
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->q:Z

    .line 34
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->q:Z

    .line 35
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->r:I

    .line 36
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    .line 37
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->s:I

    .line 38
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 39
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->t:I

    .line 40
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    .line 41
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->w:I

    .line 42
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->x:I

    .line 43
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->u:I

    .line 44
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->v:I

    .line 45
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->v:I

    .line 46
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->w:I

    .line 47
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->x:I

    .line 48
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    .line 49
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->y:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 50
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 51
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->z:I

    .line 52
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    .line 53
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->A:I

    .line 54
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->B:I

    .line 55
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->B:Z

    .line 56
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    .line 57
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->C:I

    .line 58
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->D:I

    .line 59
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->D:I

    .line 60
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->E:I

    .line 61
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->E:Z

    .line 62
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->K:Z

    .line 63
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->F:Lw3/b/a/b;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_1
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->L:Lw3/b/a/b;

    .line 65
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->G:Lw3/b/a/b;

    if-eqz p2, :cond_3

    goto :goto_2

    .line 66
    :cond_3
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_2
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->M:Lw3/b/a/b;

    .line 67
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->H:Lw3/b/a/b;

    if-eqz p2, :cond_4

    goto :goto_3

    .line 68
    :cond_4
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_3
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->N:Lw3/b/a/b;

    .line 69
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->I:Lw3/b/a/b;

    if-eqz p2, :cond_5

    goto :goto_4

    .line 70
    :cond_5
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_4
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    .line 71
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->J:Ljava/util/Set;

    .line 72
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/Mention;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/messaging/data/types/Mention;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->O:[Lcom/truecaller/messaging/data/types/Mention;

    .line 73
    iget p2, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->K:I

    .line 74
    iput p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    .line 75
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation$b;->L:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0}, Le/a/c/p/a;->F1([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->J:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->J:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    .line 10
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->k:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 17
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->n:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 18
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->q:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->K:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->L:Lw3/b/a/b;

    .line 36
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->M:Lw3/b/a/b;

    .line 39
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->N:Lw3/b/a/b;

    .line 42
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->P:Lw3/b/a/b;

    .line 45
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->O:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 48
    iget p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
