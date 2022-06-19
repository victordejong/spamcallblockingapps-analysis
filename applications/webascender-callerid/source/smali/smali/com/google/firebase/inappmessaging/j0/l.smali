.class public final Lcom/google/firebase/inappmessaging/j0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/k;",
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

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/r3/a;",
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
            "Lcom/google/firebase/inappmessaging/j0/u2;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/r3/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/l;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/l;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/l;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/u2;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/r3/a;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/l;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/u2;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/r3/a;)Lcom/google/firebase/inappmessaging/j0/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/k;-><init>(Lcom/google/firebase/inappmessaging/j0/u2;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/r3/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/k;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/l;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/j0/u2;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/l;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/l;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/j0/r3/a;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/l;->c(Lcom/google/firebase/inappmessaging/j0/u2;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/r3/a;)Lcom/google/firebase/inappmessaging/j0/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/l;->b()Lcom/google/firebase/inappmessaging/j0/k;

    move-result-object v0

    return-object v0
.end method
