.class public final Le/a/c/a/p/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/p/b/d;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/b2<",
        "Ls1/l<",
        "+",
        "Le/a/c/y/m;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/p/b/g;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/p/b/g;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/b/d$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/p/b/d$a;->b:Le/a/c/a/p/b/g;

    iput-object p3, p0, Le/a/c/a/p/b/d$a;->c:Ljava/util/Set;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Le/a/c/a/p/b/d$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/p/b/d$a$a;

    iget v1, v0, Le/a/c/a/p/b/d$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/p/b/d$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/p/b/d$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/p/b/d$a$a;-><init>(Le/a/c/a/p/b/d$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/p/b/d$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/p/b/d$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p2, p0, Le/a/c/a/p/b/d$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ln3/z/b2;

    .line 6
    new-instance v2, Le/a/c/a/p/b/d$a$b;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0}, Le/a/c/a/p/b/d$a$b;-><init>(Ls1/w/d;Le/a/c/a/p/b/d$a;)V

    const-string v5, "$this$mapNotNull"

    .line 7
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "transform"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v6, Le/a/c/c0/s;

    invoke-direct {v6, v2, v5, v4}, Le/a/c/c0/s;-><init>(Ls1/z/b/p;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {p1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->R0(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    .line 10
    new-instance v2, Le/a/c/c0/t;

    invoke-direct {v2, v5, v4}, Le/a/c/c0/t;-><init>(Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->Z(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    .line 11
    new-instance v2, Le/a/c/c0/u;

    invoke-direct {v2, v4}, Le/a/c/c0/u;-><init>(Ls1/w/d;)V

    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->R0(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    .line 12
    iput v3, v0, Le/a/c/a/p/b/d$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
