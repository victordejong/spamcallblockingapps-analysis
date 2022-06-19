.class public final Le/a/d/c0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/f;->e(Le/a/d/c0/k1;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/c/c0;

.field public final synthetic b:Le/a/d/c0/f;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Le/a/d/c0/f;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/f$a;->a:Ls1/z/c/c0;

    iput-object p2, p0, Le/a/d/c0/f$a;->b:Le/a/d/c0/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Le/a/d/c0/f$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/f$a$a;

    iget v1, v0, Le/a/d/c0/f$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/f$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/f$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/f$a$a;-><init>(Le/a/d/c0/f$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/f$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/f$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/f$a$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/l1;

    iget-object v0, v0, Le/a/d/c0/f$a$a;->f:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

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
    iget-object p2, p0, Le/a/d/c0/f$a;->a:Ls1/z/c/c0;

    iget-object v2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast v2, Le/a/d/c0/l1;

    .line 5
    iget-boolean v4, v2, Le/a/d/c0/l1;->c:Z

    if-eqz v4, :cond_3

    goto :goto_4

    .line 6
    :cond_3
    iget-object v4, p0, Le/a/d/c0/f$a;->b:Le/a/d/c0/f;

    .line 7
    iget-object v4, v4, Le/a/d/c0/f;->d:Le/a/d/c0/j1;

    .line 8
    iput-object p2, v0, Le/a/d/c0/f$a$a;->f:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/c0/f$a$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/f$a$a;->e:I

    invoke-interface {v4, p1, v0}, Le/a/d/c0/j1;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p2

    move-object p2, p1

    move-object p1, v2

    .line 9
    :goto_1
    check-cast p2, Le/a/d/c0/l1;

    .line 10
    iget-boolean v1, p2, Le/a/d/c0/l1;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 11
    new-instance p1, Le/a/d/c0/l1;

    const/4 p2, 0x3

    invoke-direct {p1, v2, v2, v3, p2}, Le/a/d/c0/l1;-><init>(IZZI)V

    move-object v2, p1

    goto :goto_3

    .line 12
    :cond_5
    iget-boolean v1, p1, Le/a/d/c0/l1;->b:Z

    if-nez v1, :cond_7

    iget-boolean v1, p2, Le/a/d/c0/l1;->b:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    .line 13
    :cond_7
    :goto_2
    iget p1, p1, Le/a/d/c0/l1;->a:I

    iget p2, p2, Le/a/d/c0/l1;->a:I

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 15
    new-instance p2, Le/a/d/c0/l1;

    const/4 v1, 0x4

    invoke-direct {p2, p1, v3, v2, v1}, Le/a/d/c0/l1;-><init>(IZZI)V

    move-object v2, p2

    :goto_3
    move-object p2, v0

    :goto_4
    iput-object v2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
