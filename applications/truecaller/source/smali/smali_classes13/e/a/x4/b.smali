.class public final Le/a/x4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x4/a;


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/b;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/x4/b;->a:Le/a/q2/a;

    new-instance v1, Le/a/x4/c;

    invoke-direct {v1, p1, p2, p3, p4}, Le/a/x4/c;-><init>(Ljava/lang/String;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
