.class public final Le/a/a/p0/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/f$a;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/p0/m/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/a/p0/m/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "flagObserver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/p0/m/c;->a:Lo3/a;

    return-void
.end method


# virtual methods
.method public Q1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/p0/m/c;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/p0/m/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/a/p0/m/a;->a(Z)V

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/p0/m/c;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/p0/m/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/a/p0/m/a;->a(Z)V

    return-void
.end method
