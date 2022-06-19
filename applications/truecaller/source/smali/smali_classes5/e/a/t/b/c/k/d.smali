.class public Le/a/t/b/c/k/d;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field public final a:Le/a/t/b/c/l/e;


# direct methods
.method public constructor <init>(Le/a/t/b/c/l/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/t/b/c/k/d;->a:Le/a/t/b/c/l/e;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2
    iget-object p1, p0, Le/a/t/b/c/k/d;->a:Le/a/t/b/c/l/e;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p1, Le/a/t/b/c/l/e;->k:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Le/a/t/b/c/l/e;->d(Z)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p2, p1, Le/a/t/b/c/l/e;->i:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 8
    iget-object v0, p1, Le/a/t/b/c/l/e;->h:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Le/a/t/b/c/l/e;->i:Landroid/os/Handler;

    .line 10
    :cond_2
    iget-object p1, p1, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    new-instance p2, Lcom/truecaller/android/sdk/TrueException;

    const/4 v0, 0x4

    const-string v1, "Required permissions missing"

    invoke-direct {p2, v0, v1}, Lcom/truecaller/android/sdk/TrueException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestFailure(ILcom/truecaller/android/sdk/TrueException;)V

    :cond_3
    :goto_1
    return-void
.end method
