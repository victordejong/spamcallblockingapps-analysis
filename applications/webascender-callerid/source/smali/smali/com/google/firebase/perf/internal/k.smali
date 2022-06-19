.class public Lcom/google/firebase/perf/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/internal/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/google/firebase/perf/i/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/perf/internal/k$a;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/k$a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/internal/k;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    .line 10
    const-class v0, Lcom/google/firebase/perf/i/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/i/g;

    iput-object p1, p0, Lcom/google/firebase/perf/internal/k;->h:Lcom/google/firebase/perf/i/g;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/internal/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/k;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/i/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    .line 4
    iput-object p1, p0, Lcom/google/firebase/perf/internal/k;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/google/firebase/perf/i/a;->a()Lcom/google/firebase/perf/i/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/k;->h:Lcom/google/firebase/perf/i/g;

    return-void
.end method

.method public static b(Ljava/util/List;)[Lcom/google/firebase/perf/j/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/k;",
            ">;)[",
            "Lcom/google/firebase/perf/j/k;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/firebase/perf/j/k;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/internal/k;

    invoke-virtual {v2}, Lcom/google/firebase/perf/internal/k;->a()Lcom/google/firebase/perf/j/k;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/perf/internal/k;

    invoke-virtual {v6}, Lcom/google/firebase/perf/internal/k;->a()Lcom/google/firebase/perf/j/k;

    move-result-object v6

    if-nez v5, :cond_1

    .line 6
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/perf/internal/k;

    invoke-virtual {v7}, Lcom/google/firebase/perf/internal/k;->g()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    aput-object v6, v0, v1

    .line 8
    aput-object v2, v0, v4

    const/4 v5, 0x1

    goto :goto_1

    .line 9
    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 10
    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static c()Lcom/google/firebase/perf/internal/k;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/firebase/perf/internal/k;

    new-instance v2, Lcom/google/firebase/perf/i/a;

    invoke-direct {v2}, Lcom/google/firebase/perf/i/a;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/perf/internal/k;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/i/a;)V

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/internal/k;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/k;->i(Z)V

    .line 5
    invoke-static {}, Lcom/google/firebase/perf/g/a;->e()Lcom/google/firebase/perf/g/a;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/k;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Verbose"

    goto :goto_0

    :cond_0
    const-string v4, "Non Verbose"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "Creating a new %s Session: %s"

    .line 7
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/g/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static j()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/d/a;->f()Lcom/google/firebase/perf/d/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/perf/d/a;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/firebase/perf/d/a;->B()F

    move-result v0

    float-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Lcom/google/firebase/perf/j/k;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/j/k;->d0()Lcom/google/firebase/perf/j/k$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/k$c;->H(Ljava/lang/String;)Lcom/google/firebase/perf/j/k$c;

    .line 2
    iget-boolean v1, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/google/firebase/perf/j/l;->GAUGES_AND_SYSTEM_EVENTS:Lcom/google/firebase/perf/j/l;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/j/k$c;->G(Lcom/google/firebase/perf/j/l;)Lcom/google/firebase/perf/j/k$c;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/j/k;

    return-object v0
.end method

.method public d()Lcom/google/firebase/perf/i/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/k;->h:Lcom/google/firebase/perf/i/g;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/k;->h:Lcom/google/firebase/perf/i/g;

    invoke-virtual {v1}, Lcom/google/firebase/perf/i/g;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/d/a;->f()Lcom/google/firebase/perf/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/perf/d/a;->y()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/firebase/perf/internal/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lcom/google/firebase/perf/internal/k;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Lcom/google/firebase/perf/internal/k;->h:Lcom/google/firebase/perf/i/g;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
