.class public final Lcom/truecaller/messaging/data/types/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Le/a/a/g/l0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/Message$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Z

.field public final B:J

.field public final C:J

.field public final D:I

.field public final E:I

.field public final J:J

.field public final K:J

.field public final L:J

.field public final M:J

.field public final N:Z

.field public final O:Lw3/b/a/b;

.field public final P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

.field public final Q:I

.field public final R:J

.field public final S:J

.field public final a:J

.field public final b:J

.field public final c:Lcom/truecaller/data/entity/messaging/Participant;

.field public final d:Lw3/b/a/b;

.field public final e:Lw3/b/a/b;

.field public final f:Lw3/b/a/b;

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:Lcom/truecaller/messaging/data/types/TransportInfo;

.field public final o:[Lcom/truecaller/messaging/data/types/Entity;

.field public final p:[Lcom/truecaller/messaging/data/types/Mention;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Lw3/b/a/b;

.field public final y:Lcom/truecaller/messaging/data/types/ReplySnippet;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/Message$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Message$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/data/types/Message$a;)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 85
    const-class p2, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 86
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 87
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 88
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    .line 90
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
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->h:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->i:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->j:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    .line 95
    const-class p2, Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/TransportInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    .line 97
    const-class p2, Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 98
    array-length v2, p2

    new-array v2, v2, [Lcom/truecaller/messaging/data/types/Entity;

    iput-object v2, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    move v2, v0

    .line 99
    :goto_3
    iget-object v3, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 100
    aget-object v4, p2, v2

    check-cast v4, Lcom/truecaller/messaging/data/types/Entity;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-array p2, v0, [Lcom/truecaller/messaging/data/types/Entity;

    .line 101
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    .line 102
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_4

    :cond_5
    move p2, v0

    :goto_4
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->A:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->t:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->u:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->v:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->w:I

    .line 110
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->B:J

    .line 112
    const-class p2, Lcom/truecaller/messaging/data/types/ReplySnippet;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/ReplySnippet;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->y:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->C:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->D:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->E:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->J:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->K:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->L:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->M:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->N:Z

    .line 121
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->O:Lw3/b/a/b;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->z:Ljava/lang/String;

    .line 123
    const-class p2, Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->Q:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->S:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->R:J

    .line 127
    const-class p2, Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 128
    array-length p2, p1

    new-array p2, p2, [Lcom/truecaller/messaging/data/types/Mention;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    .line 129
    :goto_6
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    array-length v1, p2

    if-ge v0, v1, :cond_8

    .line 130
    aget-object v1, p1, v0

    check-cast v1, Lcom/truecaller/messaging/data/types/Mention;

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    new-array p1, v0, [Lcom/truecaller/messaging/data/types/Mention;

    .line 131
    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    :cond_8
    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message$b;Lcom/truecaller/messaging/data/types/Message$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 4
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    .line 5
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 6
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 7
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 8
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->e:Lw3/b/a/b;

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_0
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 10
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->d:Lw3/b/a/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_1
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 12
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->f:Lw3/b/a/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 13
    :cond_2
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_2
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    .line 14
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 15
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    .line 16
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 17
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->h:Z

    .line 18
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 19
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->i:Z

    .line 20
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    .line 21
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->j:Z

    .line 22
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 23
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    .line 24
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 25
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 26
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    .line 27
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    .line 28
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    .line 30
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->s:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    .line 32
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->t:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    .line 34
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 35
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->A:Z

    .line 36
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->r:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    .line 38
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->u:I

    .line 39
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->t:I

    .line 40
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->v:I

    .line 41
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->u:I

    .line 42
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->w:I

    .line 43
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->v:I

    .line 44
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->x:I

    .line 45
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->w:I

    .line 46
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->y:Lw3/b/a/b;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 47
    :cond_3
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_3
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    .line 48
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message$b;->z:J

    .line 49
    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->B:J

    .line 50
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->A:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 51
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->y:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 52
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message$b;->C:J

    .line 53
    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->C:J

    .line 54
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->D:I

    .line 55
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->D:I

    .line 56
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->E:I

    .line 57
    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->E:I

    .line 58
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message$b;->F:J

    .line 59
    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->J:J

    .line 60
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message$b;->G:J

    .line 61
    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->K:J

    .line 62
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message$b;->H:J

    .line 63
    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->L:J

    .line 64
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message$b;->I:J

    .line 65
    iput-wide v2, p0, Lcom/truecaller/messaging/data/types/Message;->M:J

    .line 66
    iget-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->J:Z

    .line 67
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/Message;->N:Z

    .line 68
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->K:Lw3/b/a/b;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 69
    :cond_4
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    :goto_4
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->O:Lw3/b/a/b;

    .line 70
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->B:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->z:Ljava/lang/String;

    .line 72
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->o:Ljava/util/List;

    if-nez p2, :cond_5

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/truecaller/messaging/data/types/Entity;

    .line 73
    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    goto :goto_5

    .line 74
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/truecaller/messaging/data/types/Entity;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    .line 75
    :goto_5
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->L:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iput-object p2, p0, Lcom/truecaller/messaging/data/types/Message;->P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 76
    iget p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->M:I

    iput p2, p0, Lcom/truecaller/messaging/data/types/Message;->Q:I

    .line 77
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message$b;->N:J

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->S:J

    .line 78
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message$b;->O:J

    .line 79
    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->R:J

    .line 80
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message$b;->p:Ljava/util/Set;

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Lcom/truecaller/messaging/data/types/Mention;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/truecaller/messaging/data/types/Mention;

    iput-object p1, p0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    return-void
.end method

.method public static d(JLw3/b/a/b;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    const/16 v1, 0x30

    invoke-static {p0, p1, v1}, Lw3/c/a/a/a/h;->r(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-wide v2, p2, Lw3/b/a/e0/e;->a:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lw3/c/a/a/a/h;->r(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    check-cast v4, Lcom/truecaller/messaging/data/types/TextEntity;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/16 v5, 0xa

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/truecaller/messaging/data/types/Message$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/Message$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/data/types/Message$b;-><init>(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Message$a;)V

    return-object v0
.end method

.method public c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, v4, Lcom/truecaller/messaging/data/types/Entity;->c:I

    if-nez v4, :cond_0

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

.method public e()Lcom/truecaller/messaging/data/types/TransportInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/truecaller/messaging/data/types/TransportInfo;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 1
    const-class v1, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->b:J

    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/Message;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    if-eq v1, v2, :cond_4

    return v0

    .line 6
    :cond_4
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->h:Z

    iget-boolean v2, p1, Lcom/truecaller/messaging/data/types/Message;->h:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 7
    :cond_5
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->i:Z

    iget-boolean v2, p1, Lcom/truecaller/messaging/data/types/Message;->i:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 8
    :cond_6
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->j:Z

    iget-boolean v2, p1, Lcom/truecaller/messaging/data/types/Message;->j:Z

    if-eq v1, v2, :cond_7

    return v0

    .line 9
    :cond_7
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eq v1, v2, :cond_8

    return v0

    .line 10
    :cond_8
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->l:I

    if-eq v1, v2, :cond_9

    return v0

    .line 11
    :cond_9
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v1, v2}, Lcom/truecaller/data/entity/messaging/Participant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 12
    :cond_a
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-virtual {v1, v2}, Lw3/b/a/e0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 13
    :cond_b
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v1, v2}, Lw3/b/a/e0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 14
    :cond_c
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 15
    :cond_d
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    .line 16
    :cond_e
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->w:I

    iget v2, p1, Lcom/truecaller/messaging/data/types/Message;->w:I

    if-eq v1, v2, :cond_f

    return v0

    .line 17
    :cond_f
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    invoke-virtual {v1, v2}, Lw3/b/a/e0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 18
    :cond_10
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->B:J

    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/Message;->B:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    return v0

    .line 19
    :cond_11
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->C:J

    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/Message;->C:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    return v0

    .line 20
    :cond_12
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->N:Z

    iget-boolean v2, p1, Lcom/truecaller/messaging/data/types/Message;->N:Z

    if-eq v1, v2, :cond_13

    return v0

    .line 21
    :cond_13
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_14
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

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

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    return-wide v0
.end method

.method public h()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->k()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Lcom/truecaller/messaging/data/types/Message;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    iget v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v0}, Lw3/b/a/e0/c;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v0, v1, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 15
    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget-wide v3, p0, Lcom/truecaller/messaging/data/types/Message;->B:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget-wide v3, p0, Lcom/truecaller/messaging/data/types/Message;->C:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 19
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 20
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Message;->N:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

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

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/16 v1, 0x11

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public m()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->B:J

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

.method public n()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/truecaller/messaging/data/types/Message;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{"

    const-string v1, "id : "

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", conversation : "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", participant: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date : "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateSent : "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seen : "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", read : "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", locked : "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/Message;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transport : "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sim : "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledTransport : "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transportInfo : "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawAddress : "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, ", entities : ["

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 5
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 8
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    .line 11
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Message;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Message;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Message;->j:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 20
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 22
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Message;->A:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->x:Lw3/b/a/b;

    .line 31
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->B:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->y:Lcom/truecaller/messaging/data/types/ReplySnippet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->C:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->J:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->K:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->L:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->M:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/Message;->N:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->O:Lw3/b/a/b;

    .line 44
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->P:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget v0, p0, Lcom/truecaller/messaging/data/types/Message;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->S:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/Message;->R:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
