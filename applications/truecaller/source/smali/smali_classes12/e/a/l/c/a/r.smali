.class public final Le/a/l/c/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/l/p2/f0;

.field public final c:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/p2/f0;Le/a/p5/h0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumExpireDateHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/r;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/c/a/r;->b:Le/a/l/p2/f0;

    iput-object p3, p0, Le/a/l/c/a/r;->c:Le/a/p5/h0;

    return-void
.end method


# virtual methods
.method public final a(I)Le/a/l/c/a/q;
    .locals 4

    .line 1
    new-instance v0, Le/a/l/c/a/q;

    .line 2
    iget-object v1, p0, Le/a/l/c/a/r;->c:Le/a/p5/h0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f120532

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026emiumUserTabLabelWinback)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0805d5

    .line 3
    invoke-direct {v0, v2, v1, p1}, Le/a/l/c/a/q;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public final b()Le/a/l/c/a/q;
    .locals 4

    .line 1
    new-instance v0, Le/a/l/c/a/q;

    .line 2
    iget-object v1, p0, Le/a/l/c/a/r;->c:Le/a/p5/h0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f120530

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026rTabLabelPremiumRequired)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0805d4

    const v3, 0x7f0405a1

    .line 3
    invoke-direct {v0, v2, v1, v3}, Le/a/l/c/a/q;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public final c()Le/a/l/c/a/q;
    .locals 4

    .line 1
    new-instance v0, Le/a/l/c/a/q;

    .line 2
    iget-object v1, p0, Le/a/l/c/a/r;->c:Le/a/p5/h0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f120531

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026miumUserTabLabelUnlocked)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0805d2

    const v3, 0x7f04056c

    .line 3
    invoke-direct {v0, v2, v1, v3}, Le/a/l/c/a/q;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method
