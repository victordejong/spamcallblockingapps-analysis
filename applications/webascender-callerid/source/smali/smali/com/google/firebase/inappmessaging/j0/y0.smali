.class final synthetic Lcom/google/firebase/inappmessaging/j0/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/m;


# instance fields
.field private final a:Lcom/google/android/gms/tasks/g;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/y0;->a:Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method public static b(Lcom/google/android/gms/tasks/g;)Li/c/m;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/y0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/y0;-><init>(Lcom/google/android/gms/tasks/g;)V

    return-object v0
.end method


# virtual methods
.method public a(Li/c/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/y0;->a:Lcom/google/android/gms/tasks/g;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->Q(Lcom/google/android/gms/tasks/g;Li/c/k;)V

    return-void
.end method
