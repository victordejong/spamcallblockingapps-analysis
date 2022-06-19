.class public Lcom/google/firebase/inappmessaging/display/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/n$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/n;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/n;->a:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public b(Lcom/google/firebase/inappmessaging/display/internal/n$b;JJ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/google/firebase/inappmessaging/display/internal/n$a;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/inappmessaging/display/internal/n$a;-><init>(Lcom/google/firebase/inappmessaging/display/internal/n;JJLcom/google/firebase/inappmessaging/display/internal/n$b;)V

    .line 2
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/n;->a:Landroid/os/CountDownTimer;

    return-void
.end method
