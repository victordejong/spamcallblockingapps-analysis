.class final Lcom/google/android/gms/cloudmessaging/b0;
.super Lg/f/a/d/c/f/e;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/cloudmessaging/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/b0;->a:Lcom/google/android/gms/cloudmessaging/d;

    invoke-direct {p0, p2}, Lg/f/a/d/c/f/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/b0;->a:Lcom/google/android/gms/cloudmessaging/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/d;->h(Lcom/google/android/gms/cloudmessaging/d;Landroid/os/Message;)V

    return-void
.end method
