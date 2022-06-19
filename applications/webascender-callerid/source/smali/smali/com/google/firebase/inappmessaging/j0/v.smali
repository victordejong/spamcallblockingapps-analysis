.class final synthetic Lcom/google/firebase/inappmessaging/j0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/c;


# instance fields
.field private final f:Lcom/google/android/gms/tasks/h;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/v;->f:Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/h;)Li/c/y/c;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/v;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/v;-><init>(Lcom/google/android/gms/tasks/h;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/v;->f:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void
.end method
