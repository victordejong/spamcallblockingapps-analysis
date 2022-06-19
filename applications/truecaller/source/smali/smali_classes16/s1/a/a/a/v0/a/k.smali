.class public final Ls1/a/a/a/v0/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/k$a;
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/f/e;

.field public static final b:Ls1/a/a/a/v0/f/e;

.field public static final c:Ls1/a/a/a/v0/f/b;

.field public static final d:Ls1/a/a/a/v0/f/b;

.field public static final e:Ls1/a/a/a/v0/f/b;

.field public static final f:Ls1/a/a/a/v0/f/b;

.field public static final g:Ls1/a/a/a/v0/f/b;

.field public static final h:Ls1/a/a/a/v0/f/b;

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ls1/a/a/a/v0/f/e;

.field public static final k:Ls1/a/a/a/v0/f/b;

.field public static final l:Ls1/a/a/a/v0/f/b;

.field public static final m:Ls1/a/a/a/v0/f/b;

.field public static final n:Ls1/a/a/a/v0/f/b;

.field public static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ls1/a/a/a/v0/a/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/k;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/k;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/k;->p:Ls1/a/a/a/v0/a/k;

    const-string v0, "values"

    .line 2
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(\"values\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/a/k;->a:Ls1/a/a/a/v0/f/e;

    const-string v0, "valueOf"

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(\"valueOf\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/a/k;->b:Ls1/a/a/a/v0/f/e;

    .line 4
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "kotlin.coroutines"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/a/k;->c:Ls1/a/a/a/v0/f/b;

    const-string v1, "experimental"

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "COROUTINES_PACKAGE_FQ_NA\u2026entifier(\"experimental\"))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/k;->d:Ls1/a/a/a/v0/f/b;

    const-string v2, "intrinsics"

    .line 6
    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "COROUTINES_PACKAGE_FQ_NA\u2026identifier(\"intrinsics\"))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Continuation"

    .line 7
    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v3, "COROUTINES_PACKAGE_FQ_NA\u2026entifier(\"Continuation\"))"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/k;->e:Ls1/a/a/a/v0/f/b;

    .line 8
    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/k;->f:Ls1/a/a/a/v0/f/b;

    .line 9
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.Result"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/k;->g:Ls1/a/a/a/v0/f/b;

    .line 10
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.reflect"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/k;->h:Ls1/a/a/a/v0/f/b;

    const-string v2, "KProperty"

    const-string v3, "KMutableProperty"

    const-string v4, "KFunction"

    const-string v5, "KSuspendFunction"

    .line 11
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ls1/a/a/a/v0/a/k;->i:Ljava/util/List;

    const-string v2, "kotlin"

    .line 12
    invoke-static {v2}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v2

    const-string v3, "Name.identifier(\"kotlin\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Ls1/a/a/a/v0/a/k;->j:Ls1/a/a/a/v0/f/e;

    .line 13
    invoke-static {v2}, Ls1/a/a/a/v0/f/b;->k(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "FqName.topLevel(BUILT_INS_PACKAGE_NAME)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    const-string v3, "annotation"

    .line 14
    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v3

    const-string v4, "BUILT_INS_PACKAGE_FQ_NAM\u2026identifier(\"annotation\"))"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Ls1/a/a/a/v0/a/k;->l:Ls1/a/a/a/v0/f/b;

    const-string v4, "collections"

    .line 15
    invoke-static {v4}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v4

    const-string v5, "BUILT_INS_PACKAGE_FQ_NAM\u2026dentifier(\"collections\"))"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Ls1/a/a/a/v0/a/k;->m:Ls1/a/a/a/v0/f/b;

    const-string v5, "ranges"

    .line 16
    invoke-static {v5}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    const-string v6, "BUILT_INS_PACKAGE_FQ_NAM\u2026ame.identifier(\"ranges\"))"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Ls1/a/a/a/v0/a/k;->n:Ls1/a/a/a/v0/f/b;

    const-string v6, "text"

    .line 17
    invoke-static {v6}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v6

    const-string v7, "BUILT_INS_PACKAGE_FQ_NAM\u2026(Name.identifier(\"text\"))"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x7

    new-array v6, v6, [Ls1/a/a/a/v0/f/b;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    aput-object v5, v6, v4

    const/4 v4, 0x3

    aput-object v3, v6, v4

    const/4 v3, 0x4

    aput-object v1, v6, v3

    const-string v1, "internal"

    .line 18
    invoke-static {v1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "BUILT_INS_PACKAGE_FQ_NAM\u2026e.identifier(\"internal\"))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/4 v1, 0x6

    aput-object v0, v6, v1

    .line 19
    invoke-static {v6}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/a/k;->o:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ls1/a/a/a/v0/f/a;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/a;

    sget-object v1, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Function"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    return-object v0
.end method
