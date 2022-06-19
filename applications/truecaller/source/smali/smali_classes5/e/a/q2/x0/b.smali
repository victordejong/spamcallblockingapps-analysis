.class public final Le/a/q2/x0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/b;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/o5/r;

.field public final c:Le/a/k3/j/b;

.field public final d:Le/a/b0/q/z;

.field public final e:Le/a/q2/x0/f;

.field public final f:Lcom/truecaller/settings/CallingSettings;

.field public final g:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o5/r;Le/a/k3/j/b;Le/a/b0/q/z;Le/a/q2/x0/f;Lcom/truecaller/settings/CallingSettings;Le/a/p5/a0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactManagerSync"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAnalyticsUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/x0/b;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/q2/x0/b;->b:Le/a/o5/r;

    iput-object p3, p0, Le/a/q2/x0/b;->c:Le/a/k3/j/b;

    iput-object p4, p0, Le/a/q2/x0/b;->d:Le/a/b0/q/z;

    iput-object p5, p0, Le/a/q2/x0/b;->e:Le/a/q2/x0/f;

    iput-object p6, p0, Le/a/q2/x0/b;->f:Lcom/truecaller/settings/CallingSettings;

    iput-object p7, p0, Le/a/q2/x0/b;->g:Le/a/p5/a0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/q2/w0/h/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/x0/b;->a:Ls1/w/f;

    new-instance v1, Le/a/q2/x0/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/q2/x0/b$b;-><init>(Le/a/q2/x0/b;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/analytics/call/BlockingAction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/x0/b;->a:Ls1/w/f;

    new-instance v1, Le/a/q2/x0/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/q2/x0/b$a;-><init>(Le/a/q2/x0/b;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
