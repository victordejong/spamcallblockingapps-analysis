.class final synthetic Lcom/google/firebase/inappmessaging/j0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# instance fields
.field private final f:Lcom/google/android/gms/tasks/h;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/x;->f:Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/h;)Li/c/y/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/x;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/x;-><init>(Lcom/google/android/gms/tasks/h;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/x;->f:Lcom/google/android/gms/tasks/h;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/h0;->l(Lcom/google/android/gms/tasks/h;Ljava/lang/Throwable;)Li/c/n;

    move-result-object p1

    return-object p1
.end method
