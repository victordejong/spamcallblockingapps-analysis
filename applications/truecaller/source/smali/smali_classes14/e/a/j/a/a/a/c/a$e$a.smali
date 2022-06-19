.class public final Le/a/j/a/a/a/c/a$e$a;
.super Ls1/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/a$e;-><init>(Le/a/j/a/a/a/c/a;Ls1/z/b/l;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/b0/b<",
        "Ljava/util/List<",
        "+",
        "Le/a/j/a/a/a/c/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j/a/a/a/c/a$e;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/j/a/a/a/c/a$e;)V
    .locals 0

    iput-object p3, p0, Le/a/j/a/a/a/c/a$e$a;->b:Le/a/j/a/a/a/c/a$e;

    .line 1
    invoke-direct {p0, p2}, Ls1/b0/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ls1/a/l;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/l<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Le/a/j/a/a/a/c/f;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Le/a/j/a/a/a/c/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 2
    new-instance p1, Le/a/b0/a/r/a;

    sget-object v0, Le/a/j/a/a/a/c/a$e$c;->b:Le/a/j/a/a/a/c/a$e$c;

    invoke-direct {p1, p2, p3, v0}, Le/a/b0/a/r/a;-><init>(Ljava/util/List;Ljava/util/List;Ls1/z/b/p;)V

    const/4 p2, 0x1

    .line 3
    invoke-static {p1, p2}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object p1

    .line 4
    iget-object p2, p0, Le/a/j/a/a/a/c/a$e$a;->b:Le/a/j/a/a/a/c/a$e;

    invoke-virtual {p1, p2}, Ln3/b0/a/h$d;->c(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method
