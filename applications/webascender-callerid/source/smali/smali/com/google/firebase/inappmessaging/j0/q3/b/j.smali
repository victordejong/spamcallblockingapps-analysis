.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/p3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/n3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/d;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/n3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/j;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/j;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/q3/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/d;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/n3;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/j;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/b/j;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lcom/google/firebase/inappmessaging/j0/n3;)Lcom/google/firebase/inappmessaging/j0/p3;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->f(Lcom/google/firebase/inappmessaging/j0/n3;)Lcom/google/firebase/inappmessaging/j0/p3;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/p3;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/p3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/j;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/j;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/j0/n3;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/j0/q3/b/j;->c(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lcom/google/firebase/inappmessaging/j0/n3;)Lcom/google/firebase/inappmessaging/j0/p3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/j;->b()Lcom/google/firebase/inappmessaging/j0/p3;

    move-result-object v0

    return-object v0
.end method
