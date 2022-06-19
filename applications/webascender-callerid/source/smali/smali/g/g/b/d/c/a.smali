.class public abstract Lg/g/b/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/d/c/j;


# instance fields
.field final a:Lcom/google/gson/f;

.field final b:Lg/g/a/a/g/d;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/c/a;->a:Lcom/google/gson/f;

    .line 3
    iput-object p2, p0, Lg/g/b/d/c/a;->b:Lg/g/a/a/g/d;

    .line 4
    iput-object p3, p0, Lg/g/b/d/c/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method b(Li/c/b0/b/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/c/a$b;

    invoke-direct {v0, p0, p3, p2}, Lg/g/b/d/c/a$b;-><init>(Lg/g/b/d/c/a;Ljava/util/List;Ljava/util/List;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->doOnComplete(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p3, Lg/g/b/d/c/a$a;

    invoke-direct {p3, p0, p4, p2}, Lg/g/b/d/c/a$a;-><init>(Lg/g/b/d/c/a;Ljava/util/List;Ljava/util/List;)V

    .line 3
    invoke-virtual {p1, p3}, Li/c/b0/b/v;->doOnError(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
