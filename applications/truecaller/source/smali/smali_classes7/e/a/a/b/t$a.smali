.class public final Le/a/a/b/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/t;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/c/a/l/b$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/t;

.field public final synthetic b:Lq3/a/i0;


# direct methods
.method public constructor <init>(Le/a/a/b/t;Lq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iput-object p2, p0, Le/a/a/b/t$a;->b:Lq3/a/i0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/l/b$d;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/c/a/l/b$d;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-object v1, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object v1, v1, Le/a/a/b/t;->g:Le/a/a/b/s;

    .line 3
    iget-object v1, v1, Le/a/a/b/s;->p:Le/a/a/i/f;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Le/a/a/i/f;->a:Le/a/c/a/l/b$d;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v1, Le/a/c/a/l/b$d;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p1, Le/a/c/a/l/b$d;->c:Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object v2, v2, Le/a/a/b/t;->g:Le/a/a/b/s;

    .line 8
    iget-object v2, v2, Le/a/a/b/s;->v0:Le/a/b0/m/c/a;

    .line 9
    iget-object v3, p1, Le/a/c/a/l/b$d;->c:Ljava/lang/String;

    .line 10
    new-instance v4, Le/a/a/b/t$a$a;

    iget-object v5, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object v5, v5, Le/a/a/b/t;->g:Le/a/a/b/s;

    invoke-direct {v4, v5}, Le/a/a/b/t$a$a;-><init>(Le/a/a/b/s;)V

    invoke-interface {v2, v3, v4}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    .line 11
    :cond_1
    iget-object v2, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object v2, v2, Le/a/a/b/t;->g:Le/a/a/b/s;

    new-instance v3, Le/a/a/i/f;

    .line 12
    iget-object v4, v2, Le/a/a/b/s;->p:Le/a/a/i/f;

    if-eqz v4, :cond_2

    .line 13
    iget-object v0, v4, Le/a/a/i/f;->b:Le/a/b0/m/a/a;

    .line 14
    :cond_2
    invoke-direct {v3, p1, v0, v1}, Le/a/a/i/f;-><init>(Le/a/c/a/l/b$d;Le/a/b0/m/a/a;Z)V

    .line 15
    iput-object v3, v2, Le/a/a/b/s;->p:Le/a/a/i/f;

    .line 16
    iget-object v0, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object v0, v0, Le/a/a/b/t;->g:Le/a/a/b/s;

    .line 17
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/b/r;

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Le/a/a/b/r;->D0()V

    .line 19
    :cond_3
    iget-object v0, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object v0, v0, Le/a/a/b/t;->g:Le/a/a/b/s;

    sget-object v1, Le/a/c/a/b/c/c;->e:Le/a/c/a/b/c/c;

    .line 20
    sget-object v1, Le/a/c/a/b/c/c;->a:Le/a/c/r/d/c;

    .line 21
    invoke-virtual {v0, v1, p1}, Le/a/a/b/s;->Nj(Le/a/c/r/d/c;Le/a/c/a/l/b$d;)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Le/a/a/b/t$a;->a:Le/a/a/b/t;

    iget-object p1, p1, Le/a/a/b/t;->g:Le/a/a/b/s;

    .line 23
    iput-object v0, p1, Le/a/a/b/s;->p:Le/a/a/i/f;

    .line 24
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/b/r;

    if-eqz p1, :cond_5

    .line 25
    invoke-interface {p1}, Le/a/a/b/r;->D0()V

    :goto_1
    move-object v0, p2

    .line 26
    :cond_5
    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, p1, :cond_6

    return-object v0

    :cond_6
    return-object p2
.end method
