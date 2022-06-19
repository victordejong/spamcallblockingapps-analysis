.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/nk;
.super Lcom/google/android/gms/internal/firebase-auth-api/w2;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/ok;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/w2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final q(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/hg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/hg;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 4
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_1

    .line 5
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 6
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_0
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->E1(Lcom/google/android/gms/internal/firebase-auth-api/hg;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 8
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/le;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/le;

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 11
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_3

    .line 12
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 13
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 14
    :goto_1
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->x2(Lcom/google/android/gms/internal/firebase-auth-api/le;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/wf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/wf;

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 18
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_5

    .line 19
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_2

    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 20
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 21
    :goto_2
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->m2(Lcom/google/android/gms/internal/firebase-auth-api/wf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 22
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/je;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/je;

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 25
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_7

    .line 26
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_3

    :cond_7
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 27
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 28
    :goto_3
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->z0(Lcom/google/android/gms/internal/firebase-auth-api/je;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 29
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/yf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/yf;

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 32
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_9

    .line 33
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_4

    :cond_9
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 34
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_4
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->R(Lcom/google/android/gms/internal/firebase-auth-api/yf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 36
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/uf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/uf;

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_5

    .line 38
    :cond_a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 39
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_b

    .line 40
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_5

    :cond_b
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 41
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 42
    :goto_5
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->o0(Lcom/google/android/gms/internal/firebase-auth-api/uf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 43
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/qf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/qf;

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_6

    .line 45
    :cond_c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 46
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_d

    .line 47
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_6

    :cond_d
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 48
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 49
    :goto_6
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->B1(Lcom/google/android/gms/internal/firebase-auth-api/qf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 50
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/bf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/bf;

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_7

    .line 52
    :cond_e
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 53
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_f

    .line 54
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_7

    :cond_f
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 55
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 56
    :goto_7
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->h0(Lcom/google/android/gms/internal/firebase-auth-api/bf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 57
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/gf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/gf;

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_10

    goto :goto_8

    .line 59
    :cond_10
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 60
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_11

    .line 61
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_8

    :cond_11
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 62
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 63
    :goto_8
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->V1(Lcom/google/android/gms/internal/firebase-auth-api/gf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 64
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ze;

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_12

    goto :goto_9

    .line 66
    :cond_12
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 67
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_13

    .line 68
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_9

    :cond_13
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 69
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 70
    :goto_9
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->C1(Lcom/google/android/gms/internal/firebase-auth-api/ze;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 71
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ve;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ve;

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_14

    goto :goto_a

    .line 73
    :cond_14
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 74
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_15

    .line 75
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_a

    :cond_15
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 76
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 77
    :goto_a
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->Q(Lcom/google/android/gms/internal/firebase-auth-api/ve;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 78
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/sf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/sf;

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_16

    goto :goto_b

    .line 80
    :cond_16
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 81
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_17

    .line 82
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_b

    :cond_17
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 83
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 84
    :goto_b
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->a0(Lcom/google/android/gms/internal/firebase-auth-api/sf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 85
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/df;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/df;

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_18

    goto :goto_c

    .line 87
    :cond_18
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 88
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_19

    .line 89
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_c

    :cond_19
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 90
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 91
    :goto_c
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->p2(Lcom/google/android/gms/internal/firebase-auth-api/df;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 92
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ce;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ce;

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1a

    goto :goto_d

    .line 94
    :cond_1a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 95
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_1b

    .line 96
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_d

    :cond_1b
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 97
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 98
    :goto_d
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->K(Lcom/google/android/gms/internal/firebase-auth-api/ce;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 99
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ud;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ud;

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1c

    goto :goto_e

    .line 101
    :cond_1c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 102
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_1d

    .line 103
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_e

    :cond_1d
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 104
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 105
    :goto_e
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->c2(Lcom/google/android/gms/internal/firebase-auth-api/ud;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 106
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ae;

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1e

    goto :goto_f

    .line 108
    :cond_1e
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 109
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_1f

    .line 110
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_f

    :cond_1f
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 111
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 112
    :goto_f
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->n1(Lcom/google/android/gms/internal/firebase-auth-api/ae;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 113
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/he;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/he;

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_20

    goto :goto_10

    .line 115
    :cond_20
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 116
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_21

    .line 117
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_10

    :cond_21
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 118
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 119
    :goto_10
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->S0(Lcom/google/android/gms/internal/firebase-auth-api/he;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 120
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/if;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/if;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_22

    goto :goto_11

    .line 122
    :cond_22
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 123
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_23

    .line 124
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_11

    :cond_23
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 125
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 126
    :goto_11
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->P(Lcom/google/android/gms/internal/firebase-auth-api/if;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 127
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/xe;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/xe;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_24

    goto :goto_12

    .line 129
    :cond_24
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 130
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_25

    .line 131
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_12

    :cond_25
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 132
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 133
    :goto_12
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->M0(Lcom/google/android/gms/internal/firebase-auth-api/xe;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 134
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/cg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/cg;

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_26

    goto :goto_13

    .line 136
    :cond_26
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 137
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_27

    .line 138
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_13

    :cond_27
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 139
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 140
    :goto_13
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->o1(Lcom/google/android/gms/internal/firebase-auth-api/cg;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 141
    :pswitch_15
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ag;

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_28

    goto :goto_14

    .line 143
    :cond_28
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 144
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_29

    .line 145
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_14

    :cond_29
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 146
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 147
    :goto_14
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->Z(Lcom/google/android/gms/internal/firebase-auth-api/ag;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 148
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/te;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/te;

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2a

    goto :goto_15

    .line 150
    :cond_2a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 151
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_2b

    .line 152
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_15

    :cond_2b
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 153
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 154
    :goto_15
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->d1(Lcom/google/android/gms/internal/firebase-auth-api/te;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 155
    :pswitch_17
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/re;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/re;

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2c

    goto :goto_16

    .line 157
    :cond_2c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 158
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_2d

    .line 159
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_16

    :cond_2d
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 160
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 161
    :goto_16
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->J(Lcom/google/android/gms/internal/firebase-auth-api/re;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 162
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/pe;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/pe;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2e

    goto :goto_17

    .line 164
    :cond_2e
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 165
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_2f

    .line 166
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_17

    :cond_2f
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 167
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 168
    :goto_17
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->H1(Lcom/google/android/gms/internal/firebase-auth-api/pe;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 169
    :pswitch_19
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/of;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/of;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_30

    goto :goto_18

    .line 171
    :cond_30
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 172
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_31

    .line 173
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_18

    :cond_31
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 174
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 175
    :goto_18
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->N(Lcom/google/android/gms/internal/firebase-auth-api/of;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 176
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/fe;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/fe;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_32

    goto :goto_19

    .line 178
    :cond_32
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 179
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_33

    .line 180
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_19

    :cond_33
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 181
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 182
    :goto_19
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->I(Lcom/google/android/gms/internal/firebase-auth-api/fe;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 183
    :pswitch_1b
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/yd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/yd;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_34

    goto :goto_1a

    .line 185
    :cond_34
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 186
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_35

    .line 187
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1a

    :cond_35
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 188
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 189
    :goto_1a
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->E2(Lcom/google/android/gms/internal/firebase-auth-api/yd;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 190
    :pswitch_1c
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/wd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/wd;

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_36

    goto :goto_1b

    .line 192
    :cond_36
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 193
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_37

    .line 194
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1b

    :cond_37
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 195
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 196
    :goto_1b
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->m1(Lcom/google/android/gms/internal/firebase-auth-api/wd;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 197
    :pswitch_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/eg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/eg;

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_38

    goto :goto_1c

    .line 199
    :cond_38
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 200
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_39

    .line 201
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1c

    :cond_39
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 202
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 203
    :goto_1c
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->P1(Lcom/google/android/gms/internal/firebase-auth-api/eg;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto/16 :goto_20

    .line 204
    :pswitch_1e
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/kf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/kf;

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3a

    goto :goto_1d

    .line 206
    :cond_3a
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 207
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_3b

    .line 208
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1d

    :cond_3b
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 209
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 210
    :goto_1d
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->n2(Lcom/google/android/gms/internal/firebase-auth-api/kf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto :goto_20

    .line 211
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/mf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/mf;

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3c

    goto :goto_1e

    .line 213
    :cond_3c
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 214
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_3d

    .line 215
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1e

    :cond_3d
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 216
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 217
    :goto_1e
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->S(Lcom/google/android/gms/internal/firebase-auth-api/mf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    goto :goto_20

    .line 218
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ne;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ne;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3e

    goto :goto_1f

    .line 220
    :cond_3e
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 221
    instance-of v0, p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    if-eqz v0, :cond_3f

    .line 222
    check-cast p4, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    goto :goto_1f

    :cond_3f
    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/jk;

    .line 223
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/jk;-><init>(Landroid/os/IBinder;)V

    .line 224
    :goto_1f
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->Z0(Lcom/google/android/gms/internal/firebase-auth-api/ne;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    .line 225
    :goto_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
