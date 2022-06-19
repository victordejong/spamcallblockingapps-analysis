.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/b/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/u;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/s;)Lcom/google/firebase/inappmessaging/j0/q3/b/u;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/u;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/u;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/s;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/j0/q3/b/s;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/s;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/u;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/s;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/u;->c(Lcom/google/firebase/inappmessaging/j0/q3/b/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
