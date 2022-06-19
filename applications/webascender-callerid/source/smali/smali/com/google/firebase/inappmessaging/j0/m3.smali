.class public final Lcom/google/firebase/inappmessaging/j0/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/l3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/r;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Li/c/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Li/c/r;",
            ">;",
            "Lj/a/a<",
            "Li/c/r;",
            ">;",
            "Lj/a/a<",
            "Li/c/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/m3;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/m3;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/m3;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/m3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Li/c/r;",
            ">;",
            "Lj/a/a<",
            "Li/c/r;",
            ">;",
            "Lj/a/a<",
            "Li/c/r;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/m3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/m3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/m3;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Li/c/r;Li/c/r;Li/c/r;)Lcom/google/firebase/inappmessaging/j0/l3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/l3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/l3;-><init>(Li/c/r;Li/c/r;Li/c/r;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/l3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/m3;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/r;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/m3;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/r;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/m3;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/r;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/m3;->c(Li/c/r;Li/c/r;Li/c/r;)Lcom/google/firebase/inappmessaging/j0/l3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/m3;->b()Lcom/google/firebase/inappmessaging/j0/l3;

    move-result-object v0

    return-object v0
.end method
