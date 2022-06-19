.class final Lg/g/b/a/j/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/k;->f(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Ljava/lang/Boolean;Ljava/util/Map;)Li/c/b0/b/e;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/k;

.field final synthetic g:Lg/g/a/a/i/h;

.field final synthetic h:Lg/g/b/c/n;

.field final synthetic i:Lg/g/a/a/i/o/o;

.field final synthetic j:Ljava/lang/Boolean;

.field final synthetic k:Ljava/util/Map;


# direct methods
.method constructor <init>(Lg/g/b/a/j/k;Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Ljava/lang/Boolean;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/k$a;->f:Lg/g/b/a/j/k;

    iput-object p2, p0, Lg/g/b/a/j/k$a;->g:Lg/g/a/a/i/h;

    iput-object p3, p0, Lg/g/b/a/j/k$a;->h:Lg/g/b/c/n;

    iput-object p4, p0, Lg/g/b/a/j/k$a;->i:Lg/g/a/a/i/o/o;

    iput-object p5, p0, Lg/g/b/a/j/k$a;->j:Ljava/lang/Boolean;

    iput-object p6, p0, Lg/g/b/a/j/k$a;->k:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/c/f;",
            ")",
            "Ljava/util/List<",
            "Lg/g/a/a/i/k/d;",
            ">;"
        }
    .end annotation

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/k$a;->f:Lg/g/b/a/j/k;

    invoke-static {v0}, Lg/g/b/a/j/k;->b(Lg/g/b/a/j/k;)Lg/g/b/a/g/a/i/f;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lg/g/b/a/j/k$a;->g:Lg/g/a/a/i/h;

    .line 3
    iget-object v3, p0, Lg/g/b/a/j/k$a;->h:Lg/g/b/c/n;

    .line 4
    iget-object v4, p0, Lg/g/b/a/j/k$a;->i:Lg/g/a/a/i/o/o;

    .line 5
    iget-object v6, p0, Lg/g/b/a/j/k$a;->j:Ljava/lang/Boolean;

    .line 6
    iget-object v7, p0, Lg/g/b/a/j/k$a;->k:Ljava/util/Map;

    move-object v5, p1

    .line 7
    invoke-virtual/range {v1 .. v7}, Lg/g/b/a/g/a/i/f;->c(Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Lg/g/b/c/f;Ljava/lang/Boolean;Ljava/util/Map;)Lg/g/a/a/i/k/d;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/k$a;->a(Lg/g/b/c/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
