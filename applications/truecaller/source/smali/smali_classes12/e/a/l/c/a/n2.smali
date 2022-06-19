.class public final Le/a/l/c/a/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/h0;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/l/c/a/m;

.field public final d:Le/a/l/c/m;

.field public final e:Le/a/q4/d0;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/l/p2/v0;Le/a/l/c/a/m;Le/a/l/c/m;Le/a/q4/d0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardDismissManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralManagerHolder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "growthMarketUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/n2;->a:Le/a/p5/h0;

    iput-object p2, p0, Le/a/l/c/a/n2;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/c/a/n2;->c:Le/a/l/c/a/m;

    iput-object p4, p0, Le/a/l/c/a/n2;->d:Le/a/l/c/m;

    iput-object p5, p0, Le/a/l/c/a/n2;->e:Le/a/q4/d0;

    return-void
.end method
