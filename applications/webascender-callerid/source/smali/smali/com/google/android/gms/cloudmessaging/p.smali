.class final synthetic Lcom/google/android/gms/cloudmessaging/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/cloudmessaging/j;

.field private final g:Lcom/google/android/gms/cloudmessaging/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/j;Lcom/google/android/gms/cloudmessaging/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/p;->f:Lcom/google/android/gms/cloudmessaging/j;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/p;->g:Lcom/google/android/gms/cloudmessaging/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/p;->f:Lcom/google/android/gms/cloudmessaging/j;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/p;->g:Lcom/google/android/gms/cloudmessaging/t;

    .line 2
    iget v1, v1, Lcom/google/android/gms/cloudmessaging/t;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/j;->b(I)V

    return-void
.end method
