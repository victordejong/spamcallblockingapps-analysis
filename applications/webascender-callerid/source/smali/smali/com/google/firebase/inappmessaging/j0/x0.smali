.class public final Lcom/google/firebase/inappmessaging/j0/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/w0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/u2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/u2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/x0;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/u2;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/x0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/x0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/x0;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/u2;)Lcom/google/firebase/inappmessaging/j0/w0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/w0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/w0;-><init>(Lcom/google/firebase/inappmessaging/j0/u2;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/x0;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/j0/u2;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/x0;->c(Lcom/google/firebase/inappmessaging/j0/u2;)Lcom/google/firebase/inappmessaging/j0/w0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/x0;->b()Lcom/google/firebase/inappmessaging/j0/w0;

    move-result-object v0

    return-object v0
.end method
