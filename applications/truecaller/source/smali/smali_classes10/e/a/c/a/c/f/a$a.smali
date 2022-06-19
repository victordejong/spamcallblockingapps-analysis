.class public final Le/a/c/a/c/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/f/a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/f/a;

.field public final synthetic b:Lq3/a/x2/g;

.field public final synthetic c:Le/a/c/q/i;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/a;Lq3/a/x2/g;Le/a/c/q/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/a$a;->a:Le/a/c/a/c/f/a;

    iput-object p2, p0, Le/a/c/a/c/f/a$a;->b:Lq3/a/x2/g;

    iput-object p3, p0, Le/a/c/a/c/f/a$a;->c:Le/a/c/q/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/c/q/c;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 3
    iget-object p1, p0, Le/a/c/a/c/f/a$a;->a:Le/a/c/a/c/f/a;

    iget-object p1, p1, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    .line 4
    iget-object p1, p1, Le/a/c/a/c/f/b;->b:Le/a/c/q/d;

    .line 5
    new-instance v1, Lw3/b/a/p;

    iget-object v3, p0, Le/a/c/a/c/f/a$a;->c:Le/a/c/q/i;

    .line 6
    iget-wide v3, v3, Le/a/c/q/i;->a:J

    .line 7
    invoke-direct {v1, v3, v4}, Lw3/b/a/p;-><init>(J)V

    invoke-interface {p1, v2, v1}, Le/a/c/q/d;->y(ILw3/b/a/p;)Lq3/a/x2/f;

    move-result-object p1

    .line 8
    new-instance v1, Le/a/c/a/c/f/a$a$a;

    invoke-direct {v1, p0}, Le/a/c/a/c/f/a$a$a;-><init>(Le/a/c/a/c/f/a$a;)V

    invoke-interface {p1, v1, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object p1

    .line 9
    :cond_0
    iget-object v1, p0, Le/a/c/a/c/f/a$a;->b:Lq3/a/x2/g;

    iget-object v2, p0, Le/a/c/a/c/f/a$a;->a:Le/a/c/a/c/f/a;

    iget-object v2, v2, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    invoke-virtual {v2, p1}, Le/a/c/a/c/f/b;->e(Ljava/util/List;)Le/a/c/a/c/g/a;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object p1

    .line 10
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
