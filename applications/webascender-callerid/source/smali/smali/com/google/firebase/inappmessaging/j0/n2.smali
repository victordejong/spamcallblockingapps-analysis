.class final synthetic Lcom/google/firebase/inappmessaging/j0/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q2;

.field private final b:Lcom/google/firebase/inappmessaging/model/i;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/model/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/n2;->a:Lcom/google/firebase/inappmessaging/j0/q2;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/n2;->b:Lcom/google/firebase/inappmessaging/model/i;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/android/gms/tasks/e;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/n2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/n2;-><init>(Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/model/i;)V

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/n2;->a:Lcom/google/firebase/inappmessaging/j0/q2;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/n2;->b:Lcom/google/firebase/inappmessaging/model/i;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/j0/q2;->k(Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/model/i;Ljava/lang/String;)V

    return-void
.end method
