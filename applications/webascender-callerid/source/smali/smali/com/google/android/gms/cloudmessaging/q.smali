.class final synthetic Lcom/google/android/gms/cloudmessaging/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/cloudmessaging/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/q;->f:Lcom/google/android/gms/cloudmessaging/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/q;->f:Lcom/google/android/gms/cloudmessaging/j;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cloudmessaging/j;->c(ILjava/lang/String;)V

    return-void
.end method
