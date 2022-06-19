.class public final Le/a/q2/w0/h/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/k;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/p5/c;

.field public final c:Le/a/q2/w0/h/h;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/w0/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/c;Le/a/q2/w0/h/h;Lo3/a;)V
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
            "Le/a/p5/c;",
            "Le/a/q2/w0/h/h;",
            "Lo3/a<",
            "Le/a/q2/w0/h/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initPointProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/w0/h/l;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/q2/w0/h/l;->b:Le/a/p5/c;

    iput-object p3, p0, Le/a/q2/w0/h/l;->c:Le/a/q2/w0/h/h;

    iput-object p4, p0, Le/a/q2/w0/h/l;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/f/y/x;)Le/a/q2/w0/h/j;
    .locals 7

    const-string v0, "phoneCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/q2/w0/h/m;

    iget-object v2, p0, Le/a/q2/w0/h/l;->a:Ls1/w/f;

    iget-object v4, p0, Le/a/q2/w0/h/l;->b:Le/a/p5/c;

    iget-object v5, p0, Le/a/q2/w0/h/l;->c:Le/a/q2/w0/h/h;

    iget-object v6, p0, Le/a/q2/w0/h/l;->d:Lo3/a;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Le/a/q2/w0/h/m;-><init>(Ls1/w/f;Le/a/f/y/x;Le/a/p5/c;Le/a/q2/w0/h/h;Lo3/a;)V

    return-object v0
.end method
