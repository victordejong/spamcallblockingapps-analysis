.class public final Le/a/c/a/p/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/p/b/e;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/c/y/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/p/b/g;

.field public final synthetic c:Le/a/c/a/p/c/e;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/p/b/g;Le/a/c/a/p/c/e;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/b/e$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/p/b/e$a;->b:Le/a/c/a/p/b/g;

    iput-object p3, p0, Le/a/c/a/p/b/e$a;->c:Le/a/c/a/p/c/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Le/a/c/a/p/b/e$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/p/b/e$a$a;

    iget v1, v0, Le/a/c/a/p/b/e$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/p/b/e$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/p/b/e$a$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/p/b/e$a$a;-><init>(Le/a/c/a/p/b/e$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/p/b/e$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/p/b/e$a$a;->e:I

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
    iget-object p2, p0, Le/a/c/a/p/b/e$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ln3/z/b2;

    .line 6
    iget-object v2, p0, Le/a/c/a/p/b/e$a;->b:Le/a/c/a/p/b/g;

    iget-object v4, p0, Le/a/c/a/p/b/e$a;->c:Le/a/c/a/p/c/e;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 9
    invoke-virtual {v5}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    new-instance v7, Le/a/c/a/p/b/f;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v5, v8}, Le/a/c/a/p/b/f;-><init>(Le/a/c/a/p/b/g;Lw3/b/a/b;Ls1/w/d;)V

    invoke-static {p1, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->R0(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    .line 12
    new-instance v5, Le/a/c/a/p/b/b;

    invoke-direct {v5, v8}, Le/a/c/a/p/b/b;-><init>(Ls1/w/d;)V

    invoke-static {p1, v8, v5, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->H0(Ln3/z/b2;Ln3/z/f3;Ls1/z/b/q;I)Ln3/z/b2;

    move-result-object p1

    .line 13
    new-instance v5, Le/a/c/a/p/b/a;

    invoke-direct {v5, v2, v4, v6, v8}, Le/a/c/a/p/b/a;-><init>(Le/a/c/a/p/b/g;Le/a/c/a/p/c/e;Ljava/util/Set;Ls1/w/d;)V

    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->Z(Ln3/z/b2;Ls1/z/b/p;)Ln3/z/b2;

    move-result-object p1

    .line 14
    new-instance v2, Le/a/c/a/p/b/c;

    invoke-direct {v2, v6, v4, v8}, Le/a/c/a/p/b/c;-><init>(Ljava/util/Set;Le/a/c/a/p/c/e;Ls1/w/d;)V

    invoke-static {p1, v8, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->H0(Ln3/z/b2;Ln3/z/f3;Ls1/z/b/q;I)Ln3/z/b2;

    move-result-object p1

    .line 15
    iput v3, v0, Le/a/c/a/p/b/e$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
