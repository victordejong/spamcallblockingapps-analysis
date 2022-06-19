.class public final Le/a/c/a/s/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/s/d$a;,
        Le/a/c/a/s/d$b;,
        Le/a/c/a/s/d$d;,
        Le/a/c/a/s/d$c;
    }
.end annotation


# instance fields
.field public final a:Le/a/c/a/s/d$a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a/s/d$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "-",
            "Le/a/c/a/s/c;",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/r/a/l;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/a/s/d$a;

    invoke-direct {v0, p0, p1}, Le/a/c/a/s/d$a;-><init>(Le/a/c/a/s/d;Ln3/r/a/l;)V

    iput-object v0, p0, Le/a/c/a/s/d;->a:Le/a/c/a/s/d$a;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/c/a/s/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Le/a/c/a/s/d$d;)Le/a/c/a/s/d;
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/s/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/a/s/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Le/a/c/a/s/d;->a:Le/a/c/a/s/d$a;

    .line 4
    iget-object p1, p1, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fragment"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Le/a/c/a/s/d$a;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Our Custom TabLayout doesn\'t support more than 4 tabs :)\nif you really want to add more than 3 tabs you will need to do some effort\nto support that and make sure that the animation\nis working as expected check onPageScrolled()"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
