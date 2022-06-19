.class public final Le/a/l/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/n0;


# instance fields
.field public final a:Le/a/q5/d;

.field public final b:Le/a/r5/n0;

.field public final c:Le/a/c0/h;


# direct methods
.method public constructor <init>(Le/a/q5/d;Le/a/r5/n0;Le/a/c0/h;)V
    .locals 1

    const-string v0, "whatsAppCallerIdManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "revealProfileViewAbTestManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/n;->a:Le/a/q5/d;

    iput-object p2, p0, Le/a/l/n;->b:Le/a/r5/n0;

    iput-object p3, p0, Le/a/l/n;->c:Le/a/c0/h;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/m0;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/l/n;->c:Le/a/c0/h;

    .line 4
    iget-object p1, p1, Le/a/c0/h;->e:Le/a/c0/c;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v0, v2, v1, v2}, Le/a/c0/f;->e(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Le/a/l/m0;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Le/a/l/n2/f;)V
    .locals 1

    const-string v0, "subscription"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Le/a/l/m0;)V
    .locals 11

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/l/m0;->a:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x39

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/l/n;->c:Le/a/c0/h;

    .line 4
    iget-object p1, p1, Le/a/c0/h;->g:Le/a/c0/c;

    const/4 v0, 0x2

    .line 5
    invoke-static {p1, v1, v4, v0, v4}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/l/n;->a:Le/a/q5/d;

    invoke-interface {p1}, Le/a/q5/d;->t()V

    .line 7
    iget-object p1, p0, Le/a/l/n;->c:Le/a/c0/h;

    .line 8
    iget-object p1, p1, Le/a/c0/h;->k:Le/a/c0/c;

    .line 9
    invoke-static {p1, v3, v4, v2, v4}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Le/a/l/n;->c:Le/a/c0/h;

    .line 11
    iget-object p1, p1, Le/a/c0/h;->d:Le/a/c0/c;

    .line 12
    invoke-static {p1, v3, v4, v2, v4}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/l/n;->c:Le/a/c0/h;

    .line 14
    iget-object p1, p1, Le/a/c0/h;->e:Le/a/c0/c;

    .line 15
    invoke-static {p1, v3, v4, v2, v4}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 16
    iget-object p1, p0, Le/a/l/n;->b:Le/a/r5/n0;

    .line 17
    iget-object v0, p1, Le/a/r5/n0;->d:Ls1/w/f;

    invoke-static {v4, v1, v4}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v5

    new-instance v8, Le/a/r5/m0;

    invoke-direct {v8, p1, v4}, Le/a/r5/m0;-><init>(Le/a/r5/n0;Ls1/w/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void
.end method
