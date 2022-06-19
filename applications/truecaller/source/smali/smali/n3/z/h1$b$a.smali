.class public final Ln3/z/h1$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h1$b;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/i3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Ln3/z/h1$b;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Ln3/z/h1$b;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h1$b$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Ln3/z/h1$b$a;->b:Ln3/z/h1$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Ln3/z/h1$b$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ln3/z/h1$b$a$a;

    iget v2, v1, Ln3/z/h1$b$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ln3/z/h1$b$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Ln3/z/h1$b$a$a;

    invoke-direct {v1, p0, p2}, Ln3/z/h1$b$a$a;-><init>(Ln3/z/h1$b$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Ln3/z/h1$b$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Ln3/z/h1$b$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

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
    iget-object p2, p0, Ln3/z/h1$b$a;->a:Lq3/a/x2/g;

    .line 5
    move-object v3, p1

    check-cast v3, Ln3/z/i3;

    .line 6
    iget v5, v3, Ln3/z/i3;->a:I

    mul-int/lit8 v5, v5, -0x1

    .line 7
    iget-object v6, p0, Ln3/z/h1$b$a;->b:Ln3/z/h1$b;

    iget-object v6, v6, Ln3/z/h1$b;->b:Ln3/z/h1;

    iget-object v6, v6, Ln3/z/h1;->f:Ln3/z/g1;

    .line 8
    iget-object v6, v6, Ln3/z/g1;->j:Ln3/z/a2;

    .line 9
    iget v6, v6, Ln3/z/a2;->f:I

    if-gt v5, v6, :cond_4

    .line 10
    iget v3, v3, Ln3/z/i3;->b:I

    mul-int/lit8 v3, v3, -0x1

    if-le v3, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v4

    .line 11
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iput v4, v1, Ln3/z/h1$b$a$a;->e:I

    invoke-interface {p2, p1, v1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_3
    return-object v0
.end method
