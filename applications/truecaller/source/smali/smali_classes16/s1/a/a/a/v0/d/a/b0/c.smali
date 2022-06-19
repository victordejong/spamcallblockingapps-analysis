.class public final Ls1/a/a/a/v0/d/a/b0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/f/b;

.field public static final b:Ls1/a/a/a/v0/f/b;

.field public static final c:Ls1/a/a/a/v0/f/b;

.field public static final d:Ls1/a/a/a/v0/f/b;

.field public static final e:Ls1/a/a/a/v0/f/b;

.field public static final f:Ls1/a/a/a/v0/f/e;

.field public static final g:Ls1/a/a/a/v0/f/e;

.field public static final h:Ls1/a/a/a/v0/f/e;

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ls1/a/a/a/v0/d/a/b0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/b0/c;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/b0/c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-class v1, Ljava/lang/annotation/Target;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/c;->a:Ls1/a/a/a/v0/f/b;

    .line 3
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-class v2, Ljava/lang/annotation/Retention;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/d/a/b0/c;->b:Ls1/a/a/a/v0/f/b;

    .line 4
    new-instance v2, Ls1/a/a/a/v0/f/b;

    const-class v3, Ljava/lang/Deprecated;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v2, Ls1/a/a/a/v0/d/a/b0/c;->c:Ls1/a/a/a/v0/f/b;

    .line 5
    new-instance v3, Ls1/a/a/a/v0/f/b;

    const-class v4, Ljava/lang/annotation/Documented;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v3, Ls1/a/a/a/v0/d/a/b0/c;->d:Ls1/a/a/a/v0/f/b;

    .line 6
    new-instance v4, Ls1/a/a/a/v0/f/b;

    const-string v5, "java.lang.annotation.Repeatable"

    invoke-direct {v4, v5}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v4, Ls1/a/a/a/v0/d/a/b0/c;->e:Ls1/a/a/a/v0/f/b;

    const-string v5, "message"

    .line 7
    invoke-static {v5}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v6, "Name.identifier(\"message\")"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Ls1/a/a/a/v0/d/a/b0/c;->f:Ls1/a/a/a/v0/f/e;

    const-string v5, "allowedTargets"

    .line 8
    invoke-static {v5}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v6, "Name.identifier(\"allowedTargets\")"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Ls1/a/a/a/v0/d/a/b0/c;->g:Ls1/a/a/a/v0/f/e;

    const-string v5, "value"

    .line 9
    invoke-static {v5}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v5

    const-string v6, "Name.identifier(\"value\")"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Ls1/a/a/a/v0/d/a/b0/c;->h:Ls1/a/a/a/v0/f/e;

    const/4 v5, 0x4

    new-array v6, v5, [Ls1/k;

    .line 10
    sget-object v7, Ls1/a/a/a/v0/a/k$a;->z:Ls1/a/a/a/v0/f/b;

    .line 11
    new-instance v8, Ls1/k;

    invoke-direct {v8, v7, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 12
    sget-object v8, Ls1/a/a/a/v0/a/k$a;->C:Ls1/a/a/a/v0/f/b;

    .line 13
    new-instance v10, Ls1/k;

    invoke-direct {v10, v8, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v10, v6, v11

    .line 14
    sget-object v10, Ls1/a/a/a/v0/a/k$a;->D:Ls1/a/a/a/v0/f/b;

    .line 15
    new-instance v12, Ls1/k;

    invoke-direct {v12, v10, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x2

    aput-object v12, v6, v13

    .line 16
    sget-object v12, Ls1/a/a/a/v0/a/k$a;->E:Ls1/a/a/a/v0/f/b;

    .line 17
    new-instance v14, Ls1/k;

    invoke-direct {v14, v12, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x3

    aput-object v14, v6, v15

    .line 18
    invoke-static {v6}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Ls1/a/a/a/v0/d/a/b0/c;->i:Ljava/util/Map;

    const/4 v6, 0x5

    new-array v6, v6, [Ls1/k;

    .line 19
    new-instance v14, Ls1/k;

    invoke-direct {v14, v0, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v6, v9

    .line 20
    new-instance v0, Ls1/k;

    invoke-direct {v0, v1, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v6, v11

    .line 21
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->t:Ls1/a/a/a/v0/f/b;

    .line 22
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v13

    .line 23
    new-instance v0, Ls1/k;

    invoke-direct {v0, v4, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v6, v15

    .line 24
    new-instance v0, Ls1/k;

    invoke-direct {v0, v3, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v6, v5

    .line 25
    invoke-static {v6}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/c;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/d/a/f0/d;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/b/f1/c;
    .locals 2

    const-string v0, "kotlinName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->t:Ls1/a/a/a/v0/f/b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->c:Ls1/a/a/a/v0/f/b;

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/d/a/f0/d;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/f0/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/f0/d;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/d/a/b0/e;

    invoke-direct {p1, v0, p3}, Ls1/a/a/a/v0/d/a/b0/e;-><init>(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)V

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/f/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p2, p1}, Ls1/a/a/a/v0/d/a/f0/d;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/f0/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p2, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    invoke-virtual {p2, p1, p3}, Ls1/a/a/a/v0/d/a/b0/c;->b(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p1

    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method public final b(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/b/f1/c;
    .locals 2

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/a;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 2
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->a:Ls1/a/a/a/v0/f/b;

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ls1/a/a/a/v0/d/a/b0/i;

    invoke-direct {v0, p1, p2}, Ls1/a/a/a/v0/d/a/b0/i;-><init>(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->b:Ls1/a/a/a/v0/f/b;

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ls1/a/a/a/v0/d/a/b0/h;

    invoke-direct {v0, p1, p2}, Ls1/a/a/a/v0/d/a/b0/h;-><init>(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->e:Ls1/a/a/a/v0/f/b;

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ls1/a/a/a/v0/d/a/b0/b;

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->D:Ls1/a/a/a/v0/f/b;

    invoke-direct {v0, p2, p1, v1}, Ls1/a/a/a/v0/d/a/b0/b;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/f/b;)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->d:Ls1/a/a/a/v0/f/b;

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ls1/a/a/a/v0/d/a/b0/b;

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->E:Ls1/a/a/a/v0/f/b;

    invoke-direct {v0, p2, p1, v1}, Ls1/a/a/a/v0/d/a/b0/b;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/f/b;)V

    goto :goto_0

    .line 6
    :cond_3
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->c:Ls1/a/a/a/v0/f/b;

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_4
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/d;

    invoke-direct {v0, p2, p1}, Ls1/a/a/a/v0/d/a/d0/n/d;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;)V

    :goto_0
    return-object v0
.end method
