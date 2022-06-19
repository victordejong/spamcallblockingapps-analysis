.class final Lg/g/b/a/b$l;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/b;->G(Ljava/lang/String;ZZZLjava/lang/Boolean;Lg/g/b/a/g/b/a;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/q<",
        "Ljava/lang/Boolean;",
        "Lkotlin/w/b/a<",
        "+",
        "Li/c/b0/b/e;",
        ">;",
        "Li/c/b0/b/e;",
        "Li/c/b0/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lg/g/b/a/b$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/b/a/b$l;

    invoke-direct {v0}, Lg/g/b/a/b$l;-><init>()V

    sput-object v0, Lg/g/b/a/b$l;->f:Lg/g/b/a/b$l;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/w/b/a;Li/c/b0/b/e;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/w/b/a<",
            "+",
            "Li/c/b0/b/e;",
            ">;",
            "Li/c/b0/b/e;",
            ")",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "trueCompletable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p3

    :goto_0
    invoke-interface {p2}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/c/b0/b/i;

    invoke-virtual {p3, p1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "(preCompletable\n        \u2026ndThen(trueCompletable())"

    goto :goto_1

    :cond_1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.complete()"

    :goto_1
    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lkotlin/w/b/a;

    check-cast p3, Li/c/b0/b/e;

    invoke-virtual {p0, p1, p2, p3}, Lg/g/b/a/b$l;->a(ZLkotlin/w/b/a;Li/c/b0/b/e;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
