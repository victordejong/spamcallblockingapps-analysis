.class public final Ls1/a/a/a/v0/d/a/d0/n/d$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/d;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/n/d;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "fqName ?: return@createL\u2026fqName: $javaAnnotation\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/d;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 6
    invoke-interface {v1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v1

    const-string v2, "fqName"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builtIns"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {v2, v0}, Ls1/a/a/a/v0/a/p/c;->g(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 11
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/d;->g:Ls1/a/a/a/v0/d/a/f0/a;

    .line 12
    invoke-interface {v1}, Ls1/a/a/a/v0/d/a/f0/a;->C()Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 13
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/n/d;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 14
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 15
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->k:Ls1/a/a/a/v0/d/a/d0/j;

    .line 16
    invoke-interface {v2, v1}, Ls1/a/a/a/v0/d/a/d0/j;->a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object v3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 18
    iget-object v2, v1, Ls1/a/a/a/v0/d/a/d0/n/d;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 19
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 20
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 21
    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    const-string v3, "ClassId.topLevel(fqName)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/d;->f:Ls1/a/a/a/v0/d/a/d0/h;

    .line 23
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 24
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->d:Ls1/a/a/a/v0/d/b/d;

    .line 25
    invoke-virtual {v1}, Ls1/a/a/a/v0/d/b/d;->b()Ls1/a/a/a/v0/k/b/j;

    move-result-object v1

    .line 26
    iget-object v1, v1, Ls1/a/a/a/v0/k/b/j;->m:Ls1/a/a/a/v0/b/b0;

    .line 27
    invoke-static {v2, v0, v1}, Le/q/f/a/d/a;->r0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/b0;)Ls1/a/a/a/v0/b/e;

    move-result-object v3

    .line 28
    :goto_2
    invoke-interface {v3}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, "No fqName: "

    .line 29
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$c;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 30
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/d;->g:Ls1/a/a/a/v0/d/a/f0/a;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->d(Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    :goto_3
    return-object v0
.end method
