.class final synthetic Lcom/google/android/gms/cloudmessaging/l;
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

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/l;->f:Lcom/google/android/gms/cloudmessaging/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/l;->f:Lcom/google/android/gms/cloudmessaging/j;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/j;->g()V

    return-void
.end method
