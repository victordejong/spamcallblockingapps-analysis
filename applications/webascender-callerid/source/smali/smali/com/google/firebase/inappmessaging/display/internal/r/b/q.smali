.class public final Lcom/google/firebase/inappmessaging/display/internal/r/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/firebase/inappmessaging/model/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/q;->a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/display/internal/r/b/q;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/r/b/q;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/r/b/q;-><init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/model/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;->b()Lcom/google/firebase/inappmessaging/model/i;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/display/i/a/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/model/i;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/model/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/b/q;->a:Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/r/b/q;->c(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/r/b/q;->b()Lcom/google/firebase/inappmessaging/model/i;

    move-result-object v0

    return-object v0
.end method
