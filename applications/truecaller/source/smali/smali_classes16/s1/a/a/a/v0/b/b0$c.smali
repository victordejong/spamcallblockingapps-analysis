.class public final Ls1/a/a/a/v0/b/b0$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/b0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b0$a;",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/b0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/b0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/b0$c;->b:Ls1/a/a/a/v0/b/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b0$a;

    const-string v0, "<name for destructuring parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Ls1/a/a/a/v0/b/b0$a;->a:Ls1/a/a/a/v0/f/a;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/b/b0$a;->b:Ljava/util/List;

    .line 5
    iget-boolean v1, v0, Ls1/a/a/a/v0/f/a;->c:Z

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->g()Ls1/a/a/a/v0/f/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/b/b0$c;->b:Ls1/a/a/a/v0/b/b0;

    const-string v3, "outerClassId"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p1, v3}, Ls1/u/i;->s(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ls1/a/a/a/v0/b/b0;->a(Ls1/a/a/a/v0/f/a;Ljava/util/List;)Ls1/a/a/a/v0/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/b/b0$c;->b:Ls1/a/a/a/v0/b/b0;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/b/b0;->a:Ls1/a/a/a/v0/l/g;

    .line 10
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/g;

    :goto_0
    move-object v4, v1

    .line 11
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->k()Z

    move-result v6

    .line 12
    new-instance v1, Ls1/a/a/a/v0/b/b0$b;

    iget-object v2, p0, Ls1/a/a/a/v0/b/b0$c;->b:Ls1/a/a/a/v0/b/b0;

    .line 13
    iget-object v3, v2, Ls1/a/a/a/v0/b/b0;->c:Ls1/a/a/a/v0/l/m;

    .line 14
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v0, "classId.shortClassName"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ls1/a/a/a/v0/b/b0$b;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;ZI)V

    return-object v1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unresolved local class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
