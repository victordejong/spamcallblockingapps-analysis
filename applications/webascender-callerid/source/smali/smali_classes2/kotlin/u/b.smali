.class public abstract Lkotlin/u/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lkotlin/u/g$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lkotlin/u/g$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/u/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/u/g$c<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "Lkotlin/u/g$b;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/u/g$c;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$c<",
            "TB;>;",
            "Lkotlin/w/b/l<",
            "-",
            "Lkotlin/u/g$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/u/b;->b:Lkotlin/w/b/l;

    .line 2
    instance-of p2, p1, Lkotlin/u/b;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlin/u/b;

    iget-object p1, p1, Lkotlin/u/b;->a:Lkotlin/u/g$c;

    :cond_0
    iput-object p1, p0, Lkotlin/u/b;->a:Lkotlin/u/g$c;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/u/g$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$c<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    .line 1
    iget-object v0, p0, Lkotlin/u/b;->a:Lkotlin/u/g$c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Lkotlin/u/g$b;)Lkotlin/u/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$b;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/u/b;->b:Lkotlin/w/b/l;

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/u/g$b;

    return-object p1
.end method
