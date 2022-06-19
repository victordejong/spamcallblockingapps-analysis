.class public final Le/a/c/a/c/f/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/f/a$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/c/a/c/f/a$a;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/a$a$a;->a:Le/a/c/a/c/f/a$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
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
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/c/f/a$a$a;->a:Le/a/c/a/c/f/a$a;

    iget-object v1, v0, Le/a/c/a/c/f/a$a;->b:Lq3/a/x2/g;

    iget-object v0, v0, Le/a/c/a/c/f/a$a;->a:Le/a/c/a/c/f/a;

    iget-object v0, v0, Le/a/c/a/c/f/a;->g:Le/a/c/a/c/f/b;

    invoke-virtual {v0, p1}, Le/a/c/a/c/f/b;->e(Ljava/util/List;)Le/a/c/a/c/g/a;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
