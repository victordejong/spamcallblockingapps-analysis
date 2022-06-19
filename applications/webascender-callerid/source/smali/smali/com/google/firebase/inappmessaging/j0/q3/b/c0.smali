.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/r2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/c0;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)Lcom/google/firebase/inappmessaging/j0/q3/b/c0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/c0;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/c0;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)Lcom/google/firebase/inappmessaging/j0/r2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/a0;->c()Lcom/google/firebase/inappmessaging/j0/r2;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/r2;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/j0/r2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/c0;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/a0;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/c0;->c(Lcom/google/firebase/inappmessaging/j0/q3/b/a0;)Lcom/google/firebase/inappmessaging/j0/r2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/c0;->b()Lcom/google/firebase/inappmessaging/j0/r2;

    move-result-object v0

    return-object v0
.end method
