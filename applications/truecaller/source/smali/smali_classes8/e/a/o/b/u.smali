.class public final Le/a/o/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/t;


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/contextcall/utils/ContextCallState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/contextcall/utils/ContextCallState;->Initial:Lcom/truecaller/contextcall/utils/ContextCallState;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/o/b/u;->a:Lq3/a/x2/a1;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/contextcall/utils/ContextCallState;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/utils/ContextCallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/o/b/u;->a:Lq3/a/x2/a1;

    invoke-interface {p2, p1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/b/u;->a:Lq3/a/x2/a1;

    sget-object v1, Lcom/truecaller/contextcall/utils/ContextCallState;->Initial:Lcom/truecaller/contextcall/utils/ContextCallState;

    invoke-interface {v0, v1}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Lcom/truecaller/contextcall/utils/ContextCallState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/b/u;->a:Lq3/a/x2/a1;

    return-object v0
.end method
