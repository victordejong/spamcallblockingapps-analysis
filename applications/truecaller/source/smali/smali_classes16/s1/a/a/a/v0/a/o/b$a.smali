.class public final Ls1/a/a/a/v0/a/o/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/o/b;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/a/o/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/m/j1;",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/o/b;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/o/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/o/b$a;->b:Ls1/a/a/a/v0/a/o/b;

    iput-object p2, p0, Ls1/a/a/a/v0/a/o/b$a;->c:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/j1;Ljava/lang/String;)V
    .locals 8

    const-string v0, "variance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b$a;->c:Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/a/o/b$a;->b:Ls1/a/a/a/v0/a/o/b;

    sget-object v2, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 5
    invoke-static {p2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    iget-object p2, p0, Ls1/a/a/a/v0/a/o/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object p2, p0, Ls1/a/a/a/v0/a/o/b$a;->b:Ls1/a/a/a/v0/a/o/b;

    .line 6
    iget-object v7, p2, Ls1/a/a/a/v0/a/o/b;->h:Ls1/a/a/a/v0/l/m;

    const/4 v3, 0x0

    move-object v4, p1

    .line 7
    invoke-static/range {v1 .. v7}, Ls1/a/a/a/v0/b/h1/m0;->R0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/l/m;)Ls1/a/a/a/v0/b/w0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/j1;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/a/o/b$a;->a(Ls1/a/a/a/v0/m/j1;Ljava/lang/String;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
