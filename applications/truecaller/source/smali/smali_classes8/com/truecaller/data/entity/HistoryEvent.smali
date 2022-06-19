.class public Lcom/truecaller/data/entity/HistoryEvent;
.super Lcom/truecaller/data/entity/Entity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/HistoryEvent$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile x:Le/m/f/a/j;

.field public static volatile y:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/truecaller/data/entity/Contact;

.field public g:Ljava/lang/Long;

.field public h:J

.field public i:J

.field public j:J

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Lcom/truecaller/data/entity/CallRecording;

.field public o:I

.field public p:Le/m/f/a/j$d;

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Lcom/truecaller/data/entity/CallContextMessage;

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/HistoryEvent$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/HistoryEvent$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/HistoryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/data/entity/Entity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    const-string v0, "-1"

    .line 3
    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/data/entity/HistoryEvent$a;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/truecaller/data/entity/Entity;-><init>()V

    const-string p2, ""

    .line 36
    iput-object p2, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    const-string p2, "-1"

    .line 37
    iput-object p2, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const/4 p2, 0x1

    .line 38
    iput p2, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    const/4 v0, 0x4

    .line 39
    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 46
    iput-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Le/m/f/a/j$d;->values()[Le/m/f/a/j$d;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Entity;->setId(Ljava/lang/Long;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, p2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, p2, :cond_3

    .line 61
    const-class v0, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 62
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, p2, :cond_4

    .line 65
    const-class v0, Lcom/truecaller/data/entity/CallRecording;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/CallRecording;

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    .line 66
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, p2, :cond_5

    .line 67
    const-class p2, Lcom/truecaller/data/entity/CallContextMessage;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/CallContextMessage;

    iput-object p2, p0, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    .line 68
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/truecaller/data/entity/Entity;-><init>()V

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    const-string p1, "-1"

    .line 9
    iput-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/truecaller/data/entity/Entity;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    const-string v0, "-1"

    .line 15
    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    .line 19
    invoke-static {p1}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/truecaller/data/entity/HistoryEvent;->x:Le/m/f/a/j;

    if-nez v0, :cond_2

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    sget-object v0, Lcom/truecaller/data/entity/HistoryEvent;->x:Le/m/f/a/j;

    if-nez v0, :cond_1

    .line 23
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/truecaller/data/entity/HistoryEvent;->y:Ljava/lang/String;

    .line 24
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    sput-object v0, Lcom/truecaller/data/entity/HistoryEvent;->x:Le/m/f/a/j;

    .line 25
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 26
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 27
    :try_start_1
    sget-object v0, Lcom/truecaller/data/entity/HistoryEvent;->x:Le/m/f/a/j;

    sget-object v1, Lcom/truecaller/data/entity/HistoryEvent;->y:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 28
    sget-object v0, Lcom/truecaller/data/entity/HistoryEvent;->x:Le/m/f/a/j;

    sget-object v1, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-virtual {v0, p1, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/truecaller/data/entity/HistoryEvent;->x:Le/m/f/a/j;

    invoke-virtual {v0, p1}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 30
    iget-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    invoke-static {p1}, Le/a/b0/q/j;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 31
    iget-object v0, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    goto :goto_2

    .line 33
    :cond_4
    :goto_1
    sget-object p1, Lcom/truecaller/data/entity/HistoryEvent;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;
    :try_end_1
    .catch Le/m/f/a/e; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x15

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    const/16 v0, 0x3e7

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 1
    const-class v1, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_6

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 6
    :cond_2
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq v1, v2, :cond_3

    return v0

    .line 7
    :cond_3
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-eq v1, v2, :cond_4

    return v0

    .line 8
    :cond_4
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 9
    :cond_5
    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    iget-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 10
    :cond_6
    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    iget-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    return v0

    .line 11
    :cond_7
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    if-eq v1, v2, :cond_8

    return v0

    .line 12
    :cond_8
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_9
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    :goto_0
    return v0

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_b
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v1, :cond_c

    :goto_1
    return v0

    .line 14
    :cond_c
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_d
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    if-eqz v1, :cond_e

    :goto_2
    return v0

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3

    :cond_f
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_3
    return v0

    .line 16
    :cond_10
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    if-eq v1, v2, :cond_11

    return v0

    .line 17
    :cond_11
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-eqz v1, :cond_12

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_12
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-eqz v1, :cond_13

    :goto_4
    return v0

    .line 18
    :cond_13
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v1, :cond_14

    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    invoke-virtual {v1, v2}, Lcom/truecaller/data/entity/CallRecording;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_5

    :cond_14
    iget-object v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v1, :cond_15

    :goto_5
    return v0

    .line 19
    :cond_15
    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    iget-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    return v0

    .line 20
    :cond_16
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    :goto_6
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-wide v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-wide v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v2, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 13
    iget v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 15
    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/truecaller/data/entity/CallRecording;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "HistoryEvent:{id="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", normalizedNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "<non-null normalized number>, rawNumber="

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "<non-null raw number>, cachedName="

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "<non-null cached name>, numberType="

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filterSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callLogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneAccountComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contextMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ringingDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    const-string v3, "}"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-wide v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    :goto_2
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_3

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 26
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    :goto_3
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-nez v0, :cond_4

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    .line 32
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    :goto_4
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    if-nez v0, :cond_5

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_5

    .line 36
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->v:Lcom/truecaller/data/entity/CallContextMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    :goto_5
    iget-wide v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
