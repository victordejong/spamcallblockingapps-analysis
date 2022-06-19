.class public final Lcom/google/firebase/inappmessaging/display/internal/q/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/firebase/inappmessaging/display/internal/q/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/model/i;",
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
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;",
            "Lj/a/a<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/model/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/b;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/q/b;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/q/b;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/firebase/inappmessaging/display/internal/q/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/display/internal/j;",
            ">;",
            "Lj/a/a<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/model/i;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/display/internal/q/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/q/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/q/b;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/q/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/q/a;-><init>(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/display/internal/q/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/q/b;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/j;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/q/b;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/q/b;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/model/i;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/q/b;->c(Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/view/LayoutInflater;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/q/b;->b()Lcom/google/firebase/inappmessaging/display/internal/q/a;

    move-result-object v0

    return-object v0
.end method
