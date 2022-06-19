.class public final Lcom/google/android/gms/measurement/internal/b;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/measurement/internal/p9;

.field public i:J

.field public j:Z

.field public k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/measurement/internal/t;

.field public m:J

.field public n:Lcom/google/android/gms/measurement/internal/t;

.field public final o:J

.field public final p:Lcom/google/android/gms/measurement/internal/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->f:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/p9;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/p9;

    .line 6
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/b;->i:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/b;->i:J

    .line 7
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/b;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/b;->j:Z

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/b;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->k:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/google/android/gms/measurement/internal/t;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/google/android/gms/measurement/internal/t;

    .line 10
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/b;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/b;->m:J

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/google/android/gms/measurement/internal/t;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/google/android/gms/measurement/internal/t;

    .line 12
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/b;->o:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/b;->o:J

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->p:Lcom/google/android/gms/measurement/internal/t;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b;->p:Lcom/google/android/gms/measurement/internal/t;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/p9;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/t;JLcom/google/android/gms/measurement/internal/t;JLcom/google/android/gms/measurement/internal/t;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/p9;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/b;->i:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/b;->j:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/b;->k:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/google/android/gms/measurement/internal/t;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/b;->m:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/google/android/gms/measurement/internal/t;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/b;->o:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/b;->p:Lcom/google/android/gms/measurement/internal/t;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->f:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->g:Ljava/lang/String;

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/p9;

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/b;->i:J

    const/4 v4, 0x5

    .line 5
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/b;->j:Z

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->k:Ljava/lang/String;

    const/4 v2, 0x7

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/google/android/gms/measurement/internal/t;

    const/16 v2, 0x8

    .line 8
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/b;->m:J

    const/16 v4, 0x9

    .line 9
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/google/android/gms/measurement/internal/t;

    const/16 v2, 0xa

    .line 10
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/b;->o:J

    const/16 v4, 0xb

    .line 11
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->p:Lcom/google/android/gms/measurement/internal/t;

    const/16 v2, 0xc

    .line 12
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
