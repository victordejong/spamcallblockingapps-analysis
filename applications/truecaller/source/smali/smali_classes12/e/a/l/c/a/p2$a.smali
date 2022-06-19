.class public final Le/a/l/c/a/p2$a;
.super Ls1/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/p2;-><init>()V
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
        "Le/a/l/c/a/o2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/c/a/p2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/l/c/a/p2;)V
    .locals 0

    iput-object p3, p0, Le/a/l/c/a/p2$a;->b:Le/a/l/c/a/p2;

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
            "Le/a/l/c/a/o2;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Le/a/l/c/a/o2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 2
    iget-object p1, p0, Le/a/l/c/a/p2$a;->b:Le/a/l/c/a/p2;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
