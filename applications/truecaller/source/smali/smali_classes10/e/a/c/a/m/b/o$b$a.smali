.class public final Le/a/c/a/m/b/o$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/b/o$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Le/a/c/r/i/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/b/o$b;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/o$b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/o$b$a;->a:Le/a/c/a/m/b/o$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/c/r/i/a;",
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
    iget-object v0, p0, Le/a/c/a/m/b/o$b$a;->a:Le/a/c/a/m/b/o$b;

    iget-object v0, v0, Le/a/c/a/m/b/o$b;->f:Le/a/c/a/m/b/o;

    .line 3
    iget-object v0, v0, Le/a/c/a/m/b/o;->h:Ls1/w/f;

    .line 4
    new-instance v1, Le/a/c/a/m/b/o$b$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Le/a/c/a/m/b/o$b$a$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/c/a/m/b/o$b$a;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
