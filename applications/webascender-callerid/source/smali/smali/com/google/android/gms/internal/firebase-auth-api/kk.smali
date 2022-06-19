.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/kk;
.super Lcom/google/android/gms/internal/firebase-auth-api/w2;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/lk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/w2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final q(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/lg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/lg;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->r0(Lcom/google/android/gms/internal/firebase-auth-api/lg;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/jg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/jg;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->v1(Lcom/google/android/gms/internal/firebase-auth-api/jg;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->l()V

    goto/16 :goto_0

    .line 6
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 7
    sget-object p3, Lcom/google/firebase/auth/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/auth/q;

    .line 8
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->F2(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/q;)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->K0(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_5
    sget-object p1, Lcom/google/firebase/auth/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/q;

    .line 12
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->X(Lcom/google/firebase/auth/q;)V

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->s0(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->h()V

    goto :goto_0

    .line 18
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->e()V

    goto :goto_0

    .line 19
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->X0(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 21
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/qn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/qn;

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->l1(Lcom/google/android/gms/internal/firebase-auth-api/qn;)V

    goto :goto_0

    .line 23
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/jm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/jm;

    .line 24
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->U(Lcom/google/android/gms/internal/firebase-auth-api/jm;)V

    goto :goto_0

    .line 25
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/en;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/en;

    .line 26
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/xm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/xm;

    .line 27
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->a1(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;)V

    goto :goto_0

    .line 28
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/en;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/en;

    .line 29
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->g2(Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method
