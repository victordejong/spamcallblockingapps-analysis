.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/j0/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/q3/b/n;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/o;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)Lcom/google/firebase/inappmessaging/j0/q3/b/o;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/j0/q3/b/o;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/o;-><init>(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)V

    return-object v0
.end method

.method public static b(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)Lcom/google/firebase/inappmessaging/j0/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/n;->a()Lcom/google/firebase/inappmessaging/j0/s;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/s;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/google/firebase/inappmessaging/j0/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/o;->a:Lcom/google/firebase/inappmessaging/j0/q3/b/n;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/q3/b/o;->b(Lcom/google/firebase/inappmessaging/j0/q3/b/n;)Lcom/google/firebase/inappmessaging/j0/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/o;->c()Lcom/google/firebase/inappmessaging/j0/s;

    move-result-object v0

    return-object v0
.end method
