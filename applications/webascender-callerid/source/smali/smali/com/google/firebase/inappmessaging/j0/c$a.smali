.class Lcom/google/firebase/inappmessaging/j0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/j0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/h<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/inappmessaging/j0/c;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/j0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/c$a;->a:Lcom/google/firebase/inappmessaging/j0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Subscribing to analytics events."

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/c$a;->a:Lcom/google/firebase/inappmessaging/j0/c;

    .line 3
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/c;->b(Lcom/google/firebase/inappmessaging/j0/c;)Lcom/google/firebase/analytics/a/a;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/j0/i0;

    invoke-direct {v2, p1}, Lcom/google/firebase/inappmessaging/j0/i0;-><init>(Li/c/g;)V

    const-string p1, "fiam"

    invoke-interface {v1, p1, v2}, Lcom/google/firebase/analytics/a/a;->g(Ljava/lang/String;Lcom/google/firebase/analytics/a/a$b;)Lcom/google/firebase/analytics/a/a$a;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/j0/c;->a(Lcom/google/firebase/inappmessaging/j0/c;Lcom/google/firebase/analytics/a/a$a;)Lcom/google/firebase/analytics/a/a$a;

    return-void
.end method
