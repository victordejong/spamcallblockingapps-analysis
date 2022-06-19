.class public Le/a/a4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a4/m;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a4/f;->b:Lo3/a;

    iput-boolean p2, p0, Le/a/a4/f;->c:Z

    const-string p1, "Authorized"

    .line 2
    iput-object p1, p0, Le/a/a4/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a4/f;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/f;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/f;->a:Ljava/lang/String;

    return-object v0
.end method
