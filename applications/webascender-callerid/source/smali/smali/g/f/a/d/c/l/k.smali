.class final Lg/f/a/d/c/l/k;
.super Lg/f/a/d/c/l/j$b;
.source "SourceFile"


# instance fields
.field private final synthetic t:[B

.field private final synthetic u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;[BLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lg/f/a/d/c/l/k;->t:[B

    iput-object p3, p0, Lg/f/a/d/c/l/k;->u:Ljava/lang/String;

    invoke-direct {p0, p1}, Lg/f/a/d/c/l/j$b;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method protected final synthetic s(Lcom/google/android/gms/common/api/a$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lg/f/a/d/c/l/m;

    iget-object v0, p0, Lg/f/a/d/c/l/j$b;->s:Lg/f/a/d/c/l/f;

    iget-object v1, p0, Lg/f/a/d/c/l/k;->t:[B

    iget-object v2, p0, Lg/f/a/d/c/l/k;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "com.google.android.safetynet.ATTEST_API_KEY"

    invoke-virtual {p1, v2}, Lg/f/a/d/c/l/m;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/c;->H()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lg/f/a/d/c/l/h;

    invoke-interface {p1, v0, v1, v2}, Lg/f/a/d/c/l/h;->q0(Lg/f/a/d/c/l/f;[BLjava/lang/String;)V

    return-void
.end method
