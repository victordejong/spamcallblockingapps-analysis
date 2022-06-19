.class public final Le/a/q2/x0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/u3/g;

.field public final c:Lcom/truecaller/settings/CallingSettings;

.field public final d:Le/a/o5/f0;

.field public final e:Le/a/o5/x1;

.field public final f:Le/a/o5/r;

.field public final g:Le/a/q2/x0/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/u3/g;Lcom/truecaller/settings/CallingSettings;Le/a/o5/f0;Le/a/o5/x1;Le/a/o5/r;Le/a/q2/x0/f;)V
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

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usageChecker"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactManagerSync"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAnalyticsUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/x0/a;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/q2/x0/a;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/q2/x0/a;->c:Lcom/truecaller/settings/CallingSettings;

    iput-object p4, p0, Le/a/q2/x0/a;->d:Le/a/o5/f0;

    iput-object p5, p0, Le/a/q2/x0/a;->e:Le/a/o5/x1;

    iput-object p6, p0, Le/a/q2/x0/a;->f:Le/a/o5/r;

    iput-object p7, p0, Le/a/q2/x0/a;->g:Le/a/q2/x0/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;ZZLs1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/analytics/call/CallDirection;",
            "ZZ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/x0/a;->a:Ls1/w/f;

    new-instance v8, Le/a/q2/x0/a$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/q2/x0/a$a;-><init>(Le/a/q2/x0/a;Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;ZZLs1/w/d;)V

    invoke-static {v0, v8, p5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
