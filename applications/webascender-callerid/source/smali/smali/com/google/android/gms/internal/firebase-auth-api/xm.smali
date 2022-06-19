.class public final Lcom/google/android/gms/internal/firebase-auth-api/xm;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/xm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:Z

.field private q:Lcom/google/firebase/auth/i0;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/in;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ym;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ym;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/nn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/nn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nn;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/firebase/auth/i0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nn;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcom/google/firebase/auth/i0;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/in;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->h:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->j:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/nn;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nn;-><init>()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p6}, Lcom/google/android/gms/internal/firebase-auth-api/nn;->z1(Lcom/google/android/gms/internal/firebase-auth-api/nn;)Lcom/google/android/gms/internal/firebase-auth-api/nn;

    move-result-object p1

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->l:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->m:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->n:J

    iput-wide p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->o:J

    iput-boolean p13, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->p:Z

    iput-object p14, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->q:Lcom/google/firebase/auth/i0;

    if-nez p15, :cond_1

    new-instance p15, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p15}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object p15, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final B1()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->j:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->j:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final C1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final D1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->n:J

    return-wide v0
.end method

.method public final E1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->o:J

    return-wide v0
.end method

.method public final F1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->p:Z

    return v0
.end method

.method public final G1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final H1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final I1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final J1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final K1(Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/ln;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/xm;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/nn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/nn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/nn;->y1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final L1(Z)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->p:Z

    return-object p0
.end method

.method public final M1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/ln;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/nn;->y1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final N1()Lcom/google/android/gms/internal/firebase-auth-api/nn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

    return-object v0
.end method

.method public final O1()Lcom/google/firebase/auth/i0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->q:Lcom/google/firebase/auth/i0;

    return-object v0
.end method

.method public final P1(Lcom/google/firebase/auth/i0;)Lcom/google/android/gms/internal/firebase-auth-api/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->q:Lcom/google/firebase/auth/i0;

    return-object p0
.end method

.method public final Q1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/in;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->r:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->f:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->g:Ljava/lang/String;

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->h:Z

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->i:Ljava/lang/String;

    const/4 v2, 0x5

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->j:Ljava/lang/String;

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->k:Lcom/google/android/gms/internal/firebase-auth-api/nn;

    const/4 v2, 0x7

    .line 7
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->l:Ljava/lang/String;

    const/16 v2, 0x8

    .line 8
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->m:Ljava/lang/String;

    const/16 v2, 0x9

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->n:J

    const/16 v4, 0xa

    .line 10
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->o:J

    const/16 v4, 0xb

    .line 11
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->p:Z

    const/16 v2, 0xc

    .line 12
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->q:Lcom/google/firebase/auth/i0;

    const/16 v2, 0xd

    .line 13
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->r:Ljava/util/List;

    const/16 v1, 0xe

    .line 14
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->u(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->h:Z

    return v0
.end method

.method public final z1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xm;->g:Ljava/lang/String;

    return-object v0
.end method
