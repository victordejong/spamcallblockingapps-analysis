.class public final Lcom/google/firebase/inappmessaging/j0/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/l0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/f/e/a/a/a/e/g$b;",
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
            "Lg/f/e/a/a/a/e/g$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/m0;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/f/e/a/a/a/e/g$b;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/m0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/m0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/m0;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/f/e/a/a/a/e/g$b;)Lcom/google/firebase/inappmessaging/j0/l0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/l0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/l0;-><init>(Lg/f/e/a/a/a/e/g$b;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/m0;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f/e/a/a/a/e/g$b;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/m0;->c(Lg/f/e/a/a/a/e/g$b;)Lcom/google/firebase/inappmessaging/j0/l0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/m0;->b()Lcom/google/firebase/inappmessaging/j0/l0;

    move-result-object v0

    return-object v0
.end method
