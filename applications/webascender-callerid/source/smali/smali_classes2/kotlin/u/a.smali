.class public abstract Lkotlin/u/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/g$b;


# instance fields
.field private final key:Lkotlin/u/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/u/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/u/g$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/u/a;->key:Lkotlin/u/g$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/w/b/p<",
            "-TR;-",
            "Lkotlin/u/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/u/g$b$a;->a(Lkotlin/u/g$b;Ljava/lang/Object;Lkotlin/w/b/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/u/g$c;)Lkotlin/u/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/u/g$b;",
            ">(",
            "Lkotlin/u/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/u/g$b$a;->b(Lkotlin/u/g$b;Lkotlin/u/g$c;)Lkotlin/u/g$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lkotlin/u/g$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/u/g$c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/u/a;->key:Lkotlin/u/g$c;

    return-object v0
.end method

.method public minusKey(Lkotlin/u/g$c;)Lkotlin/u/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/g$c<",
            "*>;)",
            "Lkotlin/u/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/u/g$b$a;->c(Lkotlin/u/g$b;Lkotlin/u/g$c;)Lkotlin/u/g;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/u/g;)Lkotlin/u/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/u/g$b$a;->d(Lkotlin/u/g$b;Lkotlin/u/g;)Lkotlin/u/g;

    move-result-object p1

    return-object p1
.end method
