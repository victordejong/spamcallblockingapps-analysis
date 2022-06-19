.class public final Le/a/c/c/f/f;
.super Le/q/e/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/q/e/a/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/c/f/g;


# direct methods
.method public constructor <init>(Le/a/c/c/f/g;)V
    .locals 1

    const-string v0, "enrichmentUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/q/e/a/a;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/f;->e:Le/a/c/c/f/g;

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/c/c/f/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/c/c/f/f$a;-><init>(Le/a/c/c/f/f;Ljava/util/List;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
