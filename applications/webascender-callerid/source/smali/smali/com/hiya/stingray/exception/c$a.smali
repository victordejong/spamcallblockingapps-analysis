.class Lcom/hiya/stingray/exception/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/exception/c;->d(Li/c/b0/b/v;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Li/c/b0/b/v<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/exception/c;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/exception/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/exception/c$a;->f:Lcom/hiya/stingray/exception/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/v<",
            "+TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/exception/c$a;->f:Lcom/hiya/stingray/exception/c;

    invoke-static {v1}, Lcom/hiya/stingray/exception/c;->b(Lcom/hiya/stingray/exception/c;)Lg/g/a/a/b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Error with the action %s"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/exception/c$a;->f:Lcom/hiya/stingray/exception/c;

    invoke-static {v0}, Lcom/hiya/stingray/exception/c;->b(Lcom/hiya/stingray/exception/c;)Lg/g/a/a/b;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/hiya/stingray/exception/c;->c(Lcom/hiya/stingray/exception/c;Ljava/lang/Throwable;Lg/g/a/a/b;)Ljava/lang/Throwable;

    .line 3
    invoke-static {p1}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/exception/c$a;->a(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
