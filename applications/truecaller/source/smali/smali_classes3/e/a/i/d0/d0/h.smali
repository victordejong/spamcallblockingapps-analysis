.class public final Le/a/i/d0/d0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/i;


# instance fields
.field public final synthetic a:Le/a/i/c/d/a;

.field public final synthetic b:Le/a/i/d0/d0/a;

.field public final synthetic c:Le/a/i/d0/d0/b;

.field public final synthetic d:Lcom/truecaller/ads/mediation/google/ServerParams;


# direct methods
.method public constructor <init>(Le/a/i/c/d/a;Le/a/i/d0/d0/a;Le/a/i/d0/d0/b;Lcom/truecaller/ads/mediation/google/ServerParams;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/h;->a:Le/a/i/c/d/a;

    iput-object p2, p0, Le/a/i/d0/d0/h;->b:Le/a/i/d0/d0/a;

    iput-object p3, p0, Le/a/i/d0/d0/h;->c:Le/a/i/d0/d0/b;

    iput-object p4, p0, Le/a/i/d0/d0/h;->d:Lcom/truecaller/ads/mediation/google/ServerParams;

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
    iget-object v0, p0, Le/a/i/d0/d0/h;->c:Le/a/i/d0/d0/b;

    iget-object v1, p0, Le/a/i/d0/d0/h;->b:Le/a/i/d0/d0/a;

    .line 2
    iget-object v1, v1, Le/a/i/d0/d0/a;->b:Le/a/i/g;

    .line 3
    new-instance v2, Le/a/i/d0/d0/h$a;

    invoke-direct {v2, p0}, Le/a/i/d0/d0/h$a;-><init>(Le/a/i/d0/d0/h;)V

    invoke-virtual {v0, p1, v1, v2}, Le/a/i/d0/d0/b;->b(Le/a/i/c/a/c;Le/a/i/g;Ls1/z/b/a;)V

    return-void
.end method

.method public b(Le/a/i/c/b/a;)V
    .locals 1

    const-string v0, "errorAdRouter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/h;->c:Le/a/i/d0/d0/b;

    invoke-virtual {v0, p1}, Le/a/i/d0/d0/b;->a(Le/a/i/c/b/a;)V

    return-void
.end method
