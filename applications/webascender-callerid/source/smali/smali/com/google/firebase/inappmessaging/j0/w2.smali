.class public final Lcom/google/firebase/inappmessaging/j0/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/v2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/app/Application;",
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
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/w2;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/google/firebase/inappmessaging/j0/w2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/j0/w2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/w2;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/w2;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/j0/v2;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/v2;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/v2;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/v2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/w2;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/w2;->c(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/j0/v2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/w2;->b()Lcom/google/firebase/inappmessaging/j0/v2;

    move-result-object v0

    return-object v0
.end method
