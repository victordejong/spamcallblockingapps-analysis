.class Li/a/c/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/a/c/a/b;->R(Ljava/util/Collection;)Li/a/d/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Li/a/d/c/e;

.field final synthetic b:Li/a/c/a/b;


# direct methods
.method constructor <init>(Li/a/c/a/b;Li/a/d/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/a/c/a/b$a;->b:Li/a/c/a/b;

    iput-object p2, p0, Li/a/c/a/b$a;->a:Li/a/d/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-object p1, p0, Li/a/c/a/b$a;->a:Li/a/d/c/e;

    invoke-virtual {p1}, Li/a/d/c/e;->h()Li/a/d/c/e;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/c/a/b$a;->b:Li/a/c/a/b;

    invoke-static {v0}, Li/a/c/a/b;->a(Li/a/c/a/b;)Li/a/d/d/h;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Failed to export spans"

    invoke-virtual {v0, v1, v2, p1}, Li/a/d/d/h;->c(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Li/a/c/a/b$a;->a:Li/a/d/c/e;

    invoke-virtual {p1}, Li/a/d/c/e;->a()Li/a/d/c/e;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Li/a/c/a/b$a;->a(Ljava/lang/Void;)V

    return-void
.end method
