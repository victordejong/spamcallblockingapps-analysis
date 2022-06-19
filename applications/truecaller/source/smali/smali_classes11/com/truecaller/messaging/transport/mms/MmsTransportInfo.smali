.class public final Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/messaging/data/types/TransportInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Z

.field public D:Z

.field public final E:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:Landroid/net/Uri;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Landroid/net/Uri;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:Lw3/b/a/b;

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    .line 69
    const-class p2, Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    .line 75
    const-class p2, Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    .line 79
    new-instance p2, Lw3/b/a/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    .line 4
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 5
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    .line 6
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c:I

    .line 7
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    .line 8
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 9
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    .line 10
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 11
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    .line 12
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->f:I

    .line 13
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    .line 14
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    .line 16
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    .line 17
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    .line 18
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->i:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    .line 20
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->j:I

    .line 21
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    .line 22
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->k:Landroid/net/Uri;

    .line 23
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    .line 24
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->p:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    .line 25
    :cond_0
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    .line 26
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->q:Lw3/b/a/b;

    if-nez p2, :cond_1

    .line 27
    new-instance p2, Lw3/b/a/b;

    const-wide/16 v1, 0x0

    invoke-direct {p2, v1, v2}, Lw3/b/a/b;-><init>(J)V

    :cond_1
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    .line 28
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    .line 29
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    .line 30
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->s:I

    .line 31
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    .line 32
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->t:I

    .line 33
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    .line 34
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->u:Ljava/lang/String;

    if-nez p2, :cond_2

    move-object p2, v0

    .line 35
    :cond_2
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    .line 36
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->v:I

    .line 37
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    .line 38
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    .line 39
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    .line 40
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->x:I

    .line 41
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    .line 42
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    .line 43
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    .line 44
    iget-wide v1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->z:J

    .line 45
    iput-wide v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    .line 46
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    if-nez p2, :cond_3

    move-object p2, v0

    .line 47
    :cond_3
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    .line 48
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->m:I

    .line 49
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    .line 50
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->n:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    .line 52
    iget-object p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, p2

    .line 53
    :goto_0
    iput-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    .line 54
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    .line 55
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    .line 56
    iget p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->B:I

    .line 57
    iput p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    .line 58
    iget-boolean p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->C:Z

    .line 59
    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    .line 60
    iget-boolean p2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->D:Z

    .line 61
    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    .line 62
    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->E:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->E:Landroid/util/SparseArray;

    return-void
.end method

.method public static b(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_1

    nop

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static c(III)I
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_5

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/16 p0, 0x80

    if-eq p2, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    const/16 p0, 0x82

    if-ne p1, p0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public E()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public L1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T1(Lw3/b/a/b;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-static {v0, v1, p1}, Lcom/truecaller/messaging/data/types/Message;->d(JLw3/b/a/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>(Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$a;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 1
    const-class v2, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    .line 3
    iget-wide v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    iget-wide v4, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    iget-wide v4, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    if-eq v2, v3, :cond_8

    return v1

    .line 10
    :cond_8
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    if-eq v2, v3, :cond_9

    return v1

    .line 11
    :cond_9
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    if-eq v2, v3, :cond_b

    return v1

    .line 13
    :cond_b
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    if-eq v2, v3, :cond_c

    return v1

    .line 14
    :cond_c
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    if-eq v2, v3, :cond_d

    return v1

    .line 15
    :cond_d
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    if-eq v2, v3, :cond_e

    return v1

    .line 16
    :cond_e
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    if-eq v2, v3, :cond_f

    return v1

    .line 17
    :cond_f
    iget-wide v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    iget-wide v4, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v1

    .line 18
    :cond_10
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    if-eq v2, v3, :cond_11

    return v1

    .line 19
    :cond_11
    iget v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    iget v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    if-eq v2, v3, :cond_12

    return v1

    .line 20
    :cond_12
    iget-boolean v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    iget-boolean v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    if-eq v2, v3, :cond_13

    return v1

    .line 21
    :cond_13
    iget-boolean v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    iget-boolean v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 22
    :cond_14
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v2, :cond_15

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_0

    :cond_15
    iget-object v2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v2, :cond_16

    :goto_0
    return v1

    .line 23
    :cond_16
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1

    :cond_17
    iget-object v2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    if-eqz v2, :cond_18

    :goto_1
    return v1

    .line 24
    :cond_18
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_2

    :cond_19
    iget-object v2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    if-eqz v2, :cond_1a

    :goto_2
    return v1

    .line 25
    :cond_1a
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_3

    :cond_1b
    iget-object v2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-eqz v2, :cond_1c

    :goto_3
    return v1

    .line 26
    :cond_1c
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 27
    :cond_1d
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 28
    :cond_1e
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    invoke-virtual {v2, v3}, Lw3/b/a/e0/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 29
    :cond_1f
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    invoke-static {v2, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 30
    :cond_20
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    .line 31
    :cond_21
    iget-object v2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    invoke-static {v2, p1}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    return v0

    :cond_23
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 13
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 16
    iget v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 19
    iget-object v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 22
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-wide v3, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-boolean v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-boolean v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public k0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    return-wide v0
.end method

.method public m1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{ type : mms, messageId: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uri: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->l:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->p:Lw3/b/a/b;

    .line 16
    iget-wide v0, p2, Lw3/b/a/e0/e;->a:J

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->z:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->C:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-boolean p2, p0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->D:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
