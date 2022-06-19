.class final Lg/g/b/a/j/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/o;->h(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/a/a/i/o/y;)Li/c/b0/b/e;
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
        "Ljava/lang/String;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/o;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lg/g/b/a/j/m;

.field final synthetic j:I

.field final synthetic k:Lg/g/a/a/i/o/y;


# direct methods
.method constructor <init>(Lg/g/b/a/j/o;Ljava/lang/String;Ljava/lang/String;Lg/g/b/a/j/m;ILg/g/a/a/i/o/y;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/o$c;->f:Lg/g/b/a/j/o;

    iput-object p2, p0, Lg/g/b/a/j/o$c;->g:Ljava/lang/String;

    iput-object p3, p0, Lg/g/b/a/j/o$c;->h:Ljava/lang/String;

    iput-object p4, p0, Lg/g/b/a/j/o$c;->i:Lg/g/b/a/j/m;

    iput p5, p0, Lg/g/b/a/j/o$c;->j:I

    iput-object p6, p0, Lg/g/b/a/j/o$c;->k:Lg/g/a/a/i/o/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 9

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/o$c;->f:Lg/g/b/a/j/o;

    invoke-static {v0}, Lg/g/b/a/j/o;->c(Lg/g/b/a/j/o;)Lcom/hiya/client/callerid/dao/r;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lg/g/b/a/j/o$c;->g:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lg/g/b/a/j/o$c;->h:Ljava/lang/String;

    const-string v0, "catName"

    .line 4
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lg/g/b/a/j/o$c;->i:Lg/g/b/a/j/m;

    invoke-virtual {v0}, Lg/g/b/a/j/m;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-eqz v0, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 6
    :goto_0
    iget v6, p0, Lg/g/b/a/j/o$c;->j:I

    .line 7
    iget-object v0, p0, Lg/g/b/a/j/o$c;->i:Lg/g/b/a/j/m;

    invoke-virtual {v0}, Lg/g/b/a/j/m;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v4

    .line 8
    :goto_1
    iget-object v0, p0, Lg/g/b/a/j/o$c;->k:Lg/g/a/a/i/o/y;

    invoke-virtual {v0}, Lg/g/a/a/i/o/y;->getCachedProfileTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    move-object v4, p1

    .line 9
    invoke-virtual/range {v1 .. v8}, Lcom/hiya/client/callerid/dao/r;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$c;->a(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
