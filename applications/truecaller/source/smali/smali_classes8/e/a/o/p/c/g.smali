.class public final Le/a/o/p/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/p/c/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/db/ContextCallDatabase;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCallDatabase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/p/c/g;->b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

    iput-object p2, p0, Le/a/o/p/c/g;->c:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/o/p/c/g$a;

    invoke-direct {p1, p0}, Le/a/o/p/c/g$a;-><init>(Le/a/o/p/c/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/p/c/g;->a:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/o/p/c/g;)Le/a/o/p/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/o/p/c/g;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/o/p/c/a;

    return-object p0
.end method
