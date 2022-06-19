.class final Li/a/a/c/c;
.super Li/a/a/d/a;
.source "SourceFile"

# interfaces
.implements Li/a/a/c/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/a/d/a<",
        "Li/a/a/c/f<",
        "*>;",
        "Ljava/lang/Object;",
        ">;",
        "Li/a/a/c/j;"
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Li/a/a/c/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final h:Li/a/a/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Li/a/a/c/b;->a:Li/a/a/c/b;

    .line 2
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Li/a/a/c/c;->g:Ljava/util/Comparator;

    .line 3
    invoke-static {}, Li/a/a/c/i;->a()Li/a/a/c/k;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/c/k;->c()Li/a/a/c/j;

    move-result-object v0

    sput-object v0, Li/a/a/c/c;->h:Li/a/a/c/j;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "Li/a/a/c/f<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Li/a/a/d/a;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method static varargs i([Ljava/lang/Object;)Li/a/a/c/j;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 2
    aget-object v1, p0, v0

    check-cast v1, Li/a/a/c/f;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    aput-object v1, p0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Li/a/a/c/c;

    sget-object v1, Li/a/a/c/c;->g:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Li/a/a/c/c;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public a(Li/a/a/c/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/a/c/f<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Li/a/a/d/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
