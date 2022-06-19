.class public final Lcom/google/firebase/auth/internal/x0;
.super Lcom/google/firebase/auth/g;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/x0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/google/android/gms/internal/firebase-auth-api/en;

.field private g:Lcom/google/firebase/auth/internal/t0;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/t0;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Boolean;

.field private n:Lcom/google/firebase/auth/internal/z0;

.field private o:Z

.field private p:Lcom/google/firebase/auth/i0;

.field private q:Lcom/google/firebase/auth/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/y0;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/y0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/x0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/firebase/auth/internal/t0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/internal/z0;ZLcom/google/firebase/auth/i0;Lcom/google/firebase/auth/internal/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/en;",
            "Lcom/google/firebase/auth/internal/t0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/t0;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/firebase/auth/internal/z0;",
            "Z",
            "Lcom/google/firebase/auth/i0;",
            "Lcom/google/firebase/auth/internal/u;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/auth/g;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/x0;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/x0;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    iput-object p6, p0, Lcom/google/firebase/auth/internal/x0;->k:Ljava/util/List;

    iput-object p7, p0, Lcom/google/firebase/auth/internal/x0;->l:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/firebase/auth/internal/x0;->m:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/firebase/auth/internal/x0;->n:Lcom/google/firebase/auth/internal/z0;

    iput-boolean p10, p0, Lcom/google/firebase/auth/internal/x0;->o:Z

    iput-object p11, p0, Lcom/google/firebase/auth/internal/x0;->p:Lcom/google/firebase/auth/i0;

    iput-object p12, p0, Lcom/google/firebase/auth/internal/x0;->q:Lcom/google/firebase/auth/internal/u;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/g;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/c;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->h:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->i:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->l:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/internal/x0;->F1(Ljava/util/List;)Lcom/google/firebase/auth/g;

    return-void
.end method


# virtual methods
.method public final A1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    return-object v0
.end method

.method public final B1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/internal/q;->a(Ljava/lang/String;)Lcom/google/firebase/auth/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/i;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "firebase"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "tenant"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final C1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/t0;->y1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D1()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/auth/internal/q;->a(Ljava/lang/String;)Lcom/google/firebase/auth/i;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_3

    if-eqz v0, :cond_2

    const-string v1, "custom"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 6
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/x0;->m:Ljava/lang/Boolean;

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->m:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final E1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->k:Ljava/util/List;

    return-object v0
.end method

.method public final F1(Ljava/util/List;)Lcom/google/firebase/auth/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/w;",
            ">;)",
            "Lcom/google/firebase/auth/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/x0;->k:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/w;

    .line 6
    invoke-interface {v2}, Lcom/google/firebase/auth/w;->q0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    move-object v3, v2

    check-cast v3, Lcom/google/firebase/auth/internal/t0;

    iput-object v3, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/x0;->k:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Lcom/google/firebase/auth/w;->q0()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    .line 11
    check-cast v2, Lcom/google/firebase/auth/internal/t0;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/t0;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    :cond_2
    return-object p0
.end method

.method public final bridge synthetic G1()Lcom/google/firebase/auth/g;
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/x0;->O1()Lcom/google/firebase/auth/internal/x0;

    return-object p0
.end method

.method public final H1()Lcom/google/firebase/c;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->h:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/c;->j(Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object v0

    return-object v0
.end method

.method public final I1()Lcom/google/android/gms/internal/firebase-auth-api/en;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    return-object v0
.end method

.method public final J1(Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/en;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    return-void
.end method

.method public final K1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->F1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final M1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/auth/internal/u;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/m;

    .line 5
    instance-of v2, v1, Lcom/google/firebase/auth/t;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/google/firebase/auth/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/firebase/auth/internal/u;

    .line 7
    invoke-direct {p1, v0}, Lcom/google/firebase/auth/internal/u;-><init>(Ljava/util/List;)V

    move-object v0, p1

    .line 8
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/google/firebase/auth/internal/x0;->q:Lcom/google/firebase/auth/internal/u;

    return-void
.end method

.method public final N1()Lcom/google/firebase/auth/h;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->n:Lcom/google/firebase/auth/internal/z0;

    return-object v0
.end method

.method public final O1()Lcom/google/firebase/auth/internal/x0;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/x0;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final P1(Ljava/lang/String;)Lcom/google/firebase/auth/internal/x0;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final Q1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/t0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    return-object v0
.end method

.method public final R1(Lcom/google/firebase/auth/internal/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->n:Lcom/google/firebase/auth/internal/z0;

    return-void
.end method

.method public final S1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/x0;->o:Z

    return-void
.end method

.method public final T1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/x0;->o:Z

    return v0
.end method

.method public final U1(Lcom/google/firebase/auth/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/x0;->p:Lcom/google/firebase/auth/i0;

    return-void
.end method

.method public final V1()Lcom/google/firebase/auth/i0;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->p:Lcom/google/firebase/auth/i0;

    return-object v0
.end method

.method public final W1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->q:Lcom/google/firebase/auth/internal/u;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/u;->y1()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final q0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/t0;->q0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->f:Lcom/google/android/gms/internal/firebase-auth-api/en;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->g:Lcom/google/firebase/auth/internal/t0;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->h:Ljava/lang/String;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->i:Ljava/lang/String;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->j:Ljava/util/List;

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->u(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->k:Ljava/util/List;

    const/4 v2, 0x6

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->s(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->l:Ljava/lang/String;

    const/4 v2, 0x7

    .line 8
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/x0;->D1()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    .line 10
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->n:Lcom/google/firebase/auth/internal/z0;

    const/16 v2, 0x9

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/x0;->o:Z

    const/16 v2, 0xa

    .line 12
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->p:Lcom/google/firebase/auth/i0;

    const/16 v2, 0xb

    .line 13
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/x0;->q:Lcom/google/firebase/auth/internal/u;

    const/16 v2, 0xc

    .line 14
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final bridge synthetic z1()Lcom/google/firebase/auth/l;
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/e;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/e;-><init>(Lcom/google/firebase/auth/internal/x0;)V

    return-object v0
.end method
