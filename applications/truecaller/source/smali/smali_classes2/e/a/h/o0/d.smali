.class public final Le/a/h/o0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/d;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/o0/d;->b:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/h/o0/d$a;

    invoke-direct {p1, p0}, Le/a/h/o0/d$a;-><init>(Le/a/h/o0/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/o0/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/o0/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a3/a;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Le/a/a3/a;->a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
