.class public final Ln3/z/g1$g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1$g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/c1<",
        "TValue;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/g1$g$a;


# direct methods
.method public constructor <init>(Ln3/z/g1$g$a;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$g$a$a;->a:Ln3/z/g1$g$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Ln3/z/g1$g$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/g1$g$a$a$a;

    iget v1, v0, Ln3/z/g1$g$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/g1$g$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/g1$g$a$a$a;

    invoke-direct {v0, p0, p2}, Ln3/z/g1$g$a$a$a;-><init>(Ln3/z/g1$g$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/g1$g$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/g1$g$a$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ln3/z/c1;

    .line 5
    :try_start_1
    iget-object p2, p0, Ln3/z/g1$g$a$a;->a:Ln3/z/g1$g$a;

    iget-object p2, p2, Ln3/z/g1$g$a;->g:Ln3/z/y2;

    iput v3, v0, Ln3/z/g1$g$a$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lq3/a/w2/q; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :catch_0
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
