.class Lcom/google/firebase/inappmessaging/display/internal/r/a/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/r/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/a/a<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/display/internal/r/a/f;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/r/a/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/b$f;->a:Lcom/google/firebase/inappmessaging/display/internal/r/a/f;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/r/a/b$f;->a:Lcom/google/firebase/inappmessaging/display/internal/r/a/f;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/f;->b()Landroid/app/Application;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/display/i/a/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/b$f;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
