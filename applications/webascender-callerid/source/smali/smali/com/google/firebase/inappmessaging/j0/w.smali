.class final synthetic Lcom/google/firebase/inappmessaging/j0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final f:Lcom/google/android/gms/tasks/h;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/w;->f:Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/h;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/w;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/w;-><init>(Lcom/google/android/gms/tasks/h;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/w;->f:Lcom/google/android/gms/tasks/h;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/h0;->m(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
