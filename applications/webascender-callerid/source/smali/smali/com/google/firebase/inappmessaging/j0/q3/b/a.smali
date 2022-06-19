.class public Lcom/google/firebase/inappmessaging/j0/q3/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/firebase/inappmessaging/j0/c;)Li/c/x/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/c;",
            ")",
            "Li/c/x/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/j0/c;->d()Li/c/x/a;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/firebase/analytics/a/a;)Lcom/google/firebase/inappmessaging/j0/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/c;

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/j0/c;-><init>(Lcom/google/firebase/analytics/a/a;)V

    return-object v0
.end method
