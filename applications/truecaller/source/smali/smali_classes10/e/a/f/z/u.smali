.class public final Le/a/f/z/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/f$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/f/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incallUI"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/u;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/f/z/u;->c:Lo3/a;

    const-string p1, "featureInCallUIDefaultOptIn"

    .line 2
    iput-object p1, p0, Le/a/f/z/u;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Q1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/z/u;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/b;

    iget-object v1, p0, Le/a/f/z/u;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Le/a/f/b;->q(Landroid/content/Context;)V

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/z/u;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/b;

    iget-object v1, p0, Le/a/f/z/u;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Le/a/f/b;->q(Landroid/content/Context;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/z/u;->a:Ljava/lang/String;

    return-object v0
.end method
