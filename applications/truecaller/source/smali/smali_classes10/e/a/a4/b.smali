.class public final Le/a/a4/b;
.super Le/a/a4/f;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo3/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/a4/f;-><init>(Lo3/a;Z)V

    const-string p1, "After wizard"

    .line 2
    iput-object p1, p0, Le/a/a4/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/a4/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/a/r/t/c;->qa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/b;->d:Ljava/lang/String;

    return-object v0
.end method
