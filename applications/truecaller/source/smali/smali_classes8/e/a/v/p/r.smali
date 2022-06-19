.class public final Le/a/v/p/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/p/q;


# instance fields
.field public final a:Le/a/d/c0/s1;


# direct methods
.method public constructor <init>(Le/a/d/c0/s1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/p/r;->a:Le/a/d/c0/s1;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/w/i;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 2
    iget-object v1, p0, Le/a/v/p/r;->a:Le/a/d/c0/s1;

    new-instance v2, Le/a/v/p/r$a;

    invoke-direct {v2, v0}, Le/a/v/p/r$a;-><init>(Ls1/w/d;)V

    invoke-interface {v1, p1, v2}, Le/a/d/c0/s1;->g(Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;)V

    .line 3
    invoke-virtual {v0}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
