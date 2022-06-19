.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lg/f/e/a/a/a/e/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lio/grpc/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lio/grpc/q0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/b/v;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/v;",
            "Lj/a/a<",
            "Lio/grpc/e;",
            ">;",
            "Lj/a/a<",
            "Lio/grpc/q0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/v;Lj/a/a;Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/q3/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/v;",
            "Lj/a/a<",
            "Lio/grpc/e;",
            ">;",
            "Lj/a/a<",
            "Lio/grpc/q0;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/q3/b/x;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/v;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/q3/b/v;Lio/grpc/e;Lio/grpc/q0;)Lg/f/e/a/a/a/e/g$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->c(Lio/grpc/e;Lio/grpc/q0;)Lg/f/e/a/a/a/e/g$b;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/f/e/a/a/a/e/g$b;

    return-object p0
.end method


# virtual methods
.method public b()Lg/f/e/a/a/a/e/g$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/v;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/e;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/q0;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->c(Lcom/google/firebase/inappmessaging/j0/q3/b/v;Lio/grpc/e;Lio/grpc/q0;)Lg/f/e/a/a/a/e/g$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/x;->b()Lg/f/e/a/a/a/e/g$b;

    move-result-object v0

    return-object v0
.end method
