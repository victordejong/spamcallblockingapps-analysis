.class public final Le/a/k/n/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/d/d;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k/n/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/k/n/d/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/n/d/g;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/n/d/g;->b:Lo3/a;

    return-void
.end method
