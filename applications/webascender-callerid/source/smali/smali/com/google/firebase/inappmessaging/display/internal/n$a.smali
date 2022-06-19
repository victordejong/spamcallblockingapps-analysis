.class Lcom/google/firebase/inappmessaging/display/internal/n$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/n;->b(Lcom/google/firebase/inappmessaging/display/internal/n$b;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/inappmessaging/display/internal/n$b;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/n;JJLcom/google/firebase/inappmessaging/display/internal/n$b;)V
    .locals 0

    .line 1
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/display/internal/n$a;->a:Lcom/google/firebase/inappmessaging/display/internal/n$b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/n$a;->a:Lcom/google/firebase/inappmessaging/display/internal/n$b;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/internal/n$b;->a()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
