.class final Lg/g/b/a/j/o$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/o;->a(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/b/c/n;Lg/g/a/a/i/o/u;)Li/c/b0/b/e;
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
        "Lkotlin/l<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Lg/g/a/a/i/o/y;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/o;

.field final synthetic g:Lg/g/b/a/j/m;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lg/g/b/a/j/o;Lg/g/b/a/j/m;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/o$i;->f:Lg/g/b/a/j/o;

    iput-object p2, p0, Lg/g/b/a/j/o$i;->g:Lg/g/b/a/j/m;

    iput-object p3, p0, Lg/g/b/a/j/o$i;->h:Ljava/lang/String;

    iput-object p4, p0, Lg/g/b/a/j/o$i;->i:Ljava/lang/String;

    iput p5, p0, Lg/g/b/a/j/o$i;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)Li/c/b0/b/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "+",
            "Lg/g/a/a/i/o/y;",
            ">;)",
            "Li/c/b0/b/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/o$i;->g:Lg/g/b/a/j/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/b/a/j/m;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lg/g/b/a/j/o$i;->f:Lg/g/b/a/j/o;

    .line 4
    iget-object v3, p0, Lg/g/b/a/j/o$i;->h:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lg/g/b/a/j/o$i;->i:Ljava/lang/String;

    .line 6
    iget v5, p0, Lg/g/b/a/j/o$i;->j:I

    .line 7
    iget-object v6, p0, Lg/g/b/a/j/o$i;->g:Lg/g/b/a/j/m;

    .line 8
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "it.second"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Lg/g/a/a/i/o/y;

    .line 9
    invoke-static/range {v2 .. v7}, Lg/g/b/a/j/o;->g(Lg/g/b/a/j/o;Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/a/a/i/o/y;)Li/c/b0/b/e;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lg/g/b/a/j/o$i;->f:Lg/g/b/a/j/o;

    invoke-static {p1}, Lg/g/b/a/j/o;->c(Lg/g/b/a/j/o;)Lcom/hiya/client/callerid/dao/r;

    move-result-object p1

    iget-object v0, p0, Lg/g/b/a/j/o$i;->h:Ljava/lang/String;

    iget-object v1, p0, Lg/g/b/a/j/o$i;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hiya/client/callerid/dao/r;->h(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$i;->a(Lkotlin/l;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method
