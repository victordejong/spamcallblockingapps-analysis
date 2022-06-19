.class public final Lp3/a/i0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/i0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lp3/a/a;

.field public c:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lp3/a/a;->b:Lp3/a/a;

    iput-object v0, p0, Lp3/a/i0$b$a;->b:Lp3/a/a;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lp3/a/i0$b$a;->c:[[Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method public a()Lp3/a/i0$b;
    .locals 5

    .line 1
    new-instance v0, Lp3/a/i0$b;

    iget-object v1, p0, Lp3/a/i0$b$a;->a:Ljava/util/List;

    iget-object v2, p0, Lp3/a/i0$b$a;->b:Lp3/a/a;

    iget-object v3, p0, Lp3/a/i0$b$a;->c:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lp3/a/i0$b;-><init>(Ljava/util/List;Lp3/a/a;[[Ljava/lang/Object;Lp3/a/i0$a;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)Lp3/a/i0$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;)",
            "Lp3/a/i0$b$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addrs is empty"

    invoke-static {v0, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lp3/a/i0$b$a;->a:Ljava/util/List;

    return-object p0
.end method
