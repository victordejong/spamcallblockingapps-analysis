.class public final Le/a/l/p2/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/p2/i1$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/l/p2/o0;

.field public final c:Le/a/l/f;

.field public final d:Le/a/l/a/g;

.field public final e:Le/a/l/p2/e0;

.field public final f:Le/a/l/p2/o;

.field public final g:Le/a/l/c2;

.field public final h:Le/a/l/a/l0;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l/p2/o0;Le/a/l/f;Le/a/l/a/g;Le/a/l/p2/e0;Le/a/l/p2/o;Le/a/l/c2;Le/a/l/a/l0;Ls1/w/f;)V
    .locals 1
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductsRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumFeaturesListHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugSubscriptionResultWrapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumExpireDateFormatter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goldCallerIdPreviewDataFactory"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "welcomeOfferUtils"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/i1;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/p2/i1;->b:Le/a/l/p2/o0;

    iput-object p3, p0, Le/a/l/p2/i1;->c:Le/a/l/f;

    iput-object p4, p0, Le/a/l/p2/i1;->d:Le/a/l/a/g;

    iput-object p5, p0, Le/a/l/p2/i1;->e:Le/a/l/p2/e0;

    iput-object p6, p0, Le/a/l/p2/i1;->f:Le/a/l/p2/o;

    iput-object p7, p0, Le/a/l/p2/i1;->g:Le/a/l/c2;

    iput-object p8, p0, Le/a/l/p2/i1;->h:Le/a/l/a/l0;

    iput-object p9, p0, Le/a/l/p2/i1;->i:Ls1/w/f;

    return-void
.end method

.method public static synthetic b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/i1$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/i1;->i:Ls1/w/f;

    new-instance v1, Le/a/l/p2/i1$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/l/p2/i1$b;-><init>(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
