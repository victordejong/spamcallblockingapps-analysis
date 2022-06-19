.class public final Le/a/a4/p;
.super Le/a/a4/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/a4/m;

.field public final c:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/a4/m;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/a4/m;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/a4/c;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/a4/p;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/a4/p;->b:Le/a/a4/m;

    iput-object p3, p0, Le/a/a4/p;->c:Ls1/z/b/a;

    return-void
.end method


# virtual methods
.method public a()Le/a/a4/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/p;->b:Le/a/a4/m;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/p;->a:Ljava/lang/String;

    return-object v0
.end method
