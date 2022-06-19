.class public final Le/a/c/a/r/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/h/e;


# direct methods
.method public constructor <init>(Le/a/c/h/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/r/e;->b:Le/a/c/h/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    .line 2
    instance-of v1, p1, Le/a/c/a/l/b$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Le/a/c/a/l/b$e;

    .line 3
    iget-object p1, p1, Le/a/c/a/l/b$e;->f:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, p1, Le/a/c/a/l/b$b;

    if-eqz v1, :cond_1

    check-cast p1, Le/a/c/a/l/b$b;

    .line 5
    iget-object p1, p1, Le/a/c/a/l/b$b;->e:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, p1, Le/a/c/a/l/b$c;

    if-eqz v1, :cond_2

    check-cast p1, Le/a/c/a/l/b$c;

    .line 7
    iget-object p1, p1, Le/a/c/a/l/b$c;->l:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, p1, Le/a/c/a/l/b$h;

    if-eqz v1, :cond_3

    check-cast p1, Le/a/c/a/l/b$h;

    .line 9
    iget-object p1, p1, Le/a/c/a/l/b$h;->b:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_3
    instance-of v1, p1, Le/a/c/a/l/b$g;

    if-eqz v1, :cond_4

    check-cast p1, Le/a/c/a/l/b$g;

    .line 11
    iget-object p1, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_4
    instance-of v1, p1, Le/a/c/q/j$b;

    if-eqz v1, :cond_5

    check-cast p1, Le/a/c/q/j$b;

    .line 13
    iget-object p1, p1, Le/a/c/q/j$b;->c:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_5
    instance-of v1, p1, Le/a/c/q/j$a;

    if-eqz v1, :cond_6

    check-cast p1, Le/a/c/q/j$a;

    .line 15
    iget-object p1, p1, Le/a/c/q/j$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_6
    instance-of v1, p1, Le/a/c/q/c;

    if-eqz v1, :cond_7

    check-cast p1, Le/a/c/q/c;

    .line 17
    iget-object p1, p1, Le/a/c/q/c;->c:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_7
    instance-of v1, p1, Le/a/c/r/f/b;

    if-eqz v1, :cond_8

    check-cast p1, Le/a/c/r/f/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    goto :goto_0

    .line 19
    :cond_8
    instance-of v1, p1, Le/a/c/r/e/a/a;

    if-eqz v1, :cond_a

    check-cast p1, Le/a/c/r/e/a/a;

    .line 20
    iget-object p1, p1, Le/a/c/r/e/a/a;->a:Ljava/lang/String;

    .line 21
    :goto_0
    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_9

    .line 23
    new-instance p1, Le/a/c/a/r/d;

    invoke-direct {p1, p0, v0, v2}, Le/a/c/a/r/d;-><init>(Le/a/c/a/r/e;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v2, p1, v1, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 24
    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not supported for blocked filtering"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
