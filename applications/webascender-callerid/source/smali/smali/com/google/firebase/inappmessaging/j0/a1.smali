.class final synthetic Lcom/google/firebase/inappmessaging/j0/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# instance fields
.field private final a:Li/c/k;


# direct methods
.method private constructor <init>(Li/c/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/a1;->a:Li/c/k;

    return-void
.end method

.method public static a(Li/c/k;)Lcom/google/android/gms/tasks/d;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/a1;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/a1;-><init>(Li/c/k;)V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/a1;->a:Li/c/k;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/i2;->P(Li/c/k;Ljava/lang/Exception;)V

    return-void
.end method
