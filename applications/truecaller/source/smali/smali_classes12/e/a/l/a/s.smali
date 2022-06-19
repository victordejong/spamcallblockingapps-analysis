.class public final Le/a/l/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/q/z;

.field public final b:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/s;->a:Le/a/b0/q/z;

    iput-object p2, p0, Le/a/l/a/s;->b:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final a(Le/a/l/p2/s1$b;)Le/a/l/v2/i/a/b;
    .locals 11

    const-string v0, "dataFetched"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/a/s;->a:Le/a/b0/q/z;

    invoke-interface {v0}, Le/a/b0/q/z;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KE"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/a/l/v2/i/a/b;

    iget-object v1, p0, Le/a/l/a/s;->b:Le/a/p5/c0;

    const v2, 0x7f12046e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "resourceProvider.getStri\u2026Consumable.obtainPrice())"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfe

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
