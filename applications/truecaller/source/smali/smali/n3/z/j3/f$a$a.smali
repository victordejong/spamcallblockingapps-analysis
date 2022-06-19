.class public final Ln3/z/j3/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/j3/c$c$b$c<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Ln3/z/j3/f$a;Lq3/a/x2/g;)V
    .locals 0

    iput-object p2, p0, Ln3/z/j3/f$a$a;->a:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Ln3/z/j3/f$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln3/z/j3/f$a$a$a;

    iget v1, v0, Ln3/z/j3/f$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln3/z/j3/f$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln3/z/j3/f$a$a$a;

    invoke-direct {v0, p0, p2}, Ln3/z/j3/f$a$a$a;-><init>(Ln3/z/j3/f$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Ln3/z/j3/f$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ln3/z/j3/f$a$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ln3/z/j3/f$a$a$a;->g:Ljava/lang/Object;

    check-cast p1, Ln3/z/j3/c$c$b$c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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
    iget-object p2, p0, Ln3/z/j3/f$a$a;->a:Lq3/a/x2/g;

    check-cast p1, Ln3/z/j3/c$c$b$c;

    .line 5
    iget-object v2, p1, Ln3/z/j3/c$c$b$c;->a:Ljava/lang/Object;

    .line 6
    iput-object p1, v0, Ln3/z/j3/f$a$a$a;->g:Ljava/lang/Object;

    iput v3, v0, Ln3/z/j3/f$a$a$a;->e:I

    invoke-interface {p2, v2, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p1, Ln3/z/j3/c$c$b$c;->b:Lq3/a/w;

    .line 8
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-interface {p1, p2}, Lq3/a/w;->K(Ljava/lang/Object;)Z

    return-object p2
.end method
