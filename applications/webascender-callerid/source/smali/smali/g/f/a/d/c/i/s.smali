.class public final Lg/f/a/d/c/i/s;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/f/a/d/c/i/s;",
            ">;"
        }
    .end annotation
.end field

.field static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/google/android/gms/location/LocationRequest;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/f/a/d/c/i/s;->q:Ljava/util/List;

    .line 2
    new-instance v0, Lg/f/a/d/c/i/r;

    invoke-direct {v0}, Lg/f/a/d/c/i/r;-><init>()V

    sput-object v0, Lg/f/a/d/c/i/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/d;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/a/d/c/i/s;->f:Lcom/google/android/gms/location/LocationRequest;

    .line 3
    iput-object p2, p0, Lg/f/a/d/c/i/s;->g:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lg/f/a/d/c/i/s;->h:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lg/f/a/d/c/i/s;->i:Z

    .line 6
    iput-boolean p5, p0, Lg/f/a/d/c/i/s;->j:Z

    .line 7
    iput-boolean p6, p0, Lg/f/a/d/c/i/s;->k:Z

    .line 8
    iput-object p7, p0, Lg/f/a/d/c/i/s;->l:Ljava/lang/String;

    .line 9
    iput-boolean p8, p0, Lg/f/a/d/c/i/s;->m:Z

    .line 10
    iput-boolean p9, p0, Lg/f/a/d/c/i/s;->n:Z

    .line 11
    iput-object p10, p0, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    .line 12
    iput-wide p11, p0, Lg/f/a/d/c/i/s;->p:J

    return-void
.end method

.method public static z1(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lg/f/a/d/c/i/s;
    .locals 13

    .line 1
    new-instance p0, Lg/f/a/d/c/i/s;

    sget-object v2, Lg/f/a/d/c/i/s;->q:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lg/f/a/d/c/i/s;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lg/f/a/d/c/i/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lg/f/a/d/c/i/s;

    .line 3
    iget-object v0, p0, Lg/f/a/d/c/i/s;->f:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lg/f/a/d/c/i/s;->f:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/f/a/d/c/i/s;->g:Ljava/util/List;

    iget-object v2, p1, Lg/f/a/d/c/i/s;->g:Ljava/util/List;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/f/a/d/c/i/s;->h:Ljava/lang/String;

    iget-object v2, p1, Lg/f/a/d/c/i/s;->h:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/f/a/d/c/i/s;->i:Z

    iget-boolean v2, p1, Lg/f/a/d/c/i/s;->i:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lg/f/a/d/c/i/s;->j:Z

    iget-boolean v2, p1, Lg/f/a/d/c/i/s;->j:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lg/f/a/d/c/i/s;->k:Z

    iget-boolean v2, p1, Lg/f/a/d/c/i/s;->k:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/f/a/d/c/i/s;->l:Ljava/lang/String;

    iget-object v2, p1, Lg/f/a/d/c/i/s;->l:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/f/a/d/c/i/s;->m:Z

    iget-boolean v2, p1, Lg/f/a/d/c/i/s;->m:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lg/f/a/d/c/i/s;->n:Z

    iget-boolean v2, p1, Lg/f/a/d/c/i/s;->n:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    iget-object p1, p1, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/i/s;->f:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lg/f/a/d/c/i/s;->f:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lg/f/a/d/c/i/s;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/f/a/d/c/i/s;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Lg/f/a/d/c/i/s;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " moduleId="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/f/a/d/c/i/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v1, p0, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " contextAttributionTag="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " hideAppOps="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/f/a/d/c/i/s;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/f/a/d/c/i/s;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/f/a/d/c/i/s;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v1, p0, Lg/f/a/d/c/i/s;->k:Z

    if-eqz v1, :cond_3

    const-string v1, " exemptFromBackgroundThrottle"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    iget-boolean v1, p0, Lg/f/a/d/c/i/s;->m:Z

    if-eqz v1, :cond_4

    const-string v1, " locationSettingsIgnored"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    iget-boolean v1, p0, Lg/f/a/d/c/i/s;->n:Z

    if-eqz v1, :cond_5

    const-string v1, " inaccurateLocationsDelayed"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lg/f/a/d/c/i/s;->f:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    iget-object p2, p0, Lg/f/a/d/c/i/s;->g:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->u(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4
    iget-object p2, p0, Lg/f/a/d/c/i/s;->h:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget-boolean p2, p0, Lg/f/a/d/c/i/s;->i:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 6
    iget-boolean p2, p0, Lg/f/a/d/c/i/s;->j:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 7
    iget-boolean p2, p0, Lg/f/a/d/c/i/s;->k:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 8
    iget-object p2, p0, Lg/f/a/d/c/i/s;->l:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget-boolean p2, p0, Lg/f/a/d/c/i/s;->m:Z

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 10
    iget-boolean p2, p0, Lg/f/a/d/c/i/s;->n:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    .line 11
    iget-object p2, p0, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    iget-wide v1, p0, Lg/f/a/d/c/i/s;->p:J

    const/16 p2, 0xe

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y1(Ljava/lang/String;)Lg/f/a/d/c/i/s;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/d/c/i/s;->o:Ljava/lang/String;

    return-object p0
.end method
