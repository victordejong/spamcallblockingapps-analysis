.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/l0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/v2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/d;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/l0;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/v2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/q3/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/d;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/l0;",
            ">;",
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/firebase/inappmessaging/j0/v2;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/j0/q3/b/e;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lcom/google/firebase/inappmessaging/i0/a;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/v2;)Lcom/google/firebase/inappmessaging/j0/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/j0/q3/b/d;",
            "Lcom/google/firebase/inappmessaging/i0/a<",
            "Lcom/google/firebase/inappmessaging/j0/l0;",
            ">;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/j0/v2;",
            ")",
            "Lcom/google/firebase/inappmessaging/j0/d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/j0/q3/b/d;->a(Lcom/google/firebase/inappmessaging/i0/a;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/v2;)Lcom/google/firebase/inappmessaging/j0/d;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/d;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/d;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->b:Lj/a/a;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/i0/b/a;->a(Lj/a/a;)Lcom/google/firebase/inappmessaging/i0/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inappmessaging/j0/v2;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->c(Lcom/google/firebase/inappmessaging/j0/q3/b/d;Lcom/google/firebase/inappmessaging/i0/a;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/v2;)Lcom/google/firebase/inappmessaging/j0/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/e;->b()Lcom/google/firebase/inappmessaging/j0/d;

    move-result-object v0

    return-object v0
.end method
