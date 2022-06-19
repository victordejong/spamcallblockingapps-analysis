.class final Lg/g/b/a/i/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->q(Lg/g/b/a/i/a$a;Lg/g/b/a/k/k;J)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/util/List<",
        "+[",
        "Ljava/lang/String;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;

.field final synthetic g:Lg/g/b/a/i/a$a;

.field final synthetic h:J


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;Lg/g/b/a/i/a$a;J)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$h;->f:Lg/g/b/a/i/b;

    iput-object p2, p0, Lg/g/b/a/i/b$h;->g:Lg/g/b/a/i/a$a;

    iput-wide p3, p0, Lg/g/b/a/i/b$h;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$h;->g:Lg/g/b/a/i/a$a;

    sget-object v1, Lg/g/b/a/i/a$a;->TRANSLATION:Lg/g/b/a/i/a$a;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lg/g/b/a/i/b$h$a;

    invoke-direct {v0, p0}, Lg/g/b/a/i/b$h$a;-><init>(Lg/g/b/a/i/b$h;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object p1

    .line 5
    new-instance v0, Lg/g/b/a/i/b$h$b;

    invoke-direct {v0, p0}, Lg/g/b/a/i/b$h$b;-><init>(Lg/g/b/a/i/b$h;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p1

    .line 7
    new-instance v0, Lg/g/b/a/i/b$h$c;

    invoke-direct {v0, p0}, Lg/g/b/a/i/b$h$c;-><init>(Lg/g/b/a/i/b$h;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object p1

    .line 9
    new-instance v0, Lg/g/b/a/i/b$h$d;

    invoke-direct {v0, p0}, Lg/g/b/a/i/b$h$d;-><init>(Lg/g/b/a/i/b$h;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$h;->a(Ljava/util/List;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method
