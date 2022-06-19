.class public final Lcom/hiya/client/callerid/dao/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/a/a/g/h/c;


# direct methods
.method public constructor <init>(Lg/g/a/a/g/h/c;)V
    .locals 1

    const-string v0, "ingestionApi"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/y;->a:Lg/g/a/a/g/h/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/k/d;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/y;->a:Lg/g/a/a/g/h/c;

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/c;->c(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e0;->q(Li/c/b0/b/a0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/dao/y$a;->f:Lcom/hiya/client/callerid/dao/y$a;

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e0;->r()Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Single.fromObservable(in\u2026cessful }.ignoreElement()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
