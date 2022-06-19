.class public final Le/a/e/d2/p/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Le/a/q4/d0;

.field public final d:Le/a/e/d2/p/f;

.field public final e:Le/a/e/d2/p/j;

.field public final f:Le/a/e/d2/p/h;

.field public final g:Le/a/e/d2/p/g;

.field public final h:Le/a/e/d2/p/k;

.field public final i:Le/a/e/d2/p/a;

.field public final j:Le/a/e/d2/p/b;

.field public final k:Le/a/e/d2/p/i;

.field public final l:Z

.field public final m:Le/a/u3/g;


# direct methods
.method public constructor <init>(ZLe/a/q4/d0;Le/a/l/a/y;Le/a/e/d2/p/f;Le/a/e/d2/p/j;Le/a/e/d2/p/h;Le/a/e/d2/p/g;Le/a/e/d2/p/k;Le/a/e/d2/p/a;Le/a/e/d2/p/b;Le/a/e/d2/p/i;ZLe/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "growthMarketUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callsButton"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesButton"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homeButton"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsButton"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumButton"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistantButton"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingButton"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inviteButton"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/e/d2/p/d;->b:Z

    iput-object p2, p0, Le/a/e/d2/p/d;->c:Le/a/q4/d0;

    iput-object p4, p0, Le/a/e/d2/p/d;->d:Le/a/e/d2/p/f;

    iput-object p5, p0, Le/a/e/d2/p/d;->e:Le/a/e/d2/p/j;

    iput-object p6, p0, Le/a/e/d2/p/d;->f:Le/a/e/d2/p/h;

    iput-object p7, p0, Le/a/e/d2/p/d;->g:Le/a/e/d2/p/g;

    iput-object p8, p0, Le/a/e/d2/p/d;->h:Le/a/e/d2/p/k;

    iput-object p9, p0, Le/a/e/d2/p/d;->i:Le/a/e/d2/p/a;

    iput-object p10, p0, Le/a/e/d2/p/d;->j:Le/a/e/d2/p/b;

    iput-object p11, p0, Le/a/e/d2/p/d;->k:Le/a/e/d2/p/i;

    iput-boolean p12, p0, Le/a/e/d2/p/d;->l:Z

    iput-object p13, p0, Le/a/e/d2/p/d;->m:Le/a/u3/g;

    .line 2
    invoke-virtual {p3}, Le/a/l/a/y;->b()Z

    move-result p1

    iput-boolean p1, p0, Le/a/e/d2/p/d;->a:Z

    return-void
.end method
