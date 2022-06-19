.class public final Le/a/i/d0/d0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/i;


# instance fields
.field public final synthetic a:Le/a/i/c/d/a;

.field public final synthetic b:Lcom/truecaller/ads/mediation/google/ServerParams;

.field public final synthetic c:Le/a/i/d0/d0/b;


# direct methods
.method public constructor <init>(Le/a/i/c/d/a;Le/a/i/d0/d0/g;Lcom/truecaller/ads/mediation/google/ServerParams;Le/a/i/d0/d0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/i;->a:Le/a/i/c/d/a;

    iput-object p3, p0, Le/a/i/d0/d0/i;->b:Lcom/truecaller/ads/mediation/google/ServerParams;

    iput-object p4, p0, Le/a/i/d0/d0/i;->c:Le/a/i/d0/d0/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/a/c;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/i;->c:Le/a/i/d0/d0/b;

    new-instance v1, Le/a/i/d0/d0/i$a;

    invoke-direct {v1, p0}, Le/a/i/d0/d0/i$a;-><init>(Le/a/i/d0/d0/i;)V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v2, v1}, Le/a/i/d0/d0/b;->b(Le/a/i/c/a/c;Le/a/i/g;Ls1/z/b/a;)V

    return-void
.end method

.method public b(Le/a/i/c/b/a;)V
    .locals 1

    const-string v0, "errorAdRouter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/i;->c:Le/a/i/d0/d0/b;

    invoke-virtual {v0, p1}, Le/a/i/d0/d0/b;->a(Le/a/i/c/b/a;)V

    return-void
.end method
