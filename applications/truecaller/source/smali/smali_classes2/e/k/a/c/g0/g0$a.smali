.class public Le/k/a/c/g0/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/g0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/k/a/c/g0/g0<",
        "Le/k/a/c/g0/g0$a;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:Le/k/a/c/g0/g0$a;


# instance fields
.field public final a:Le/k/a/a/f$a;

.field public final b:Le/k/a/a/f$a;

.field public final c:Le/k/a/a/f$a;

.field public final d:Le/k/a/a/f$a;

.field public final e:Le/k/a/a/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/g0/g0$a;

    sget-object v5, Le/k/a/a/f$a;->d:Le/k/a/a/f$a;

    sget-object v4, Le/k/a/a/f$a;->a:Le/k/a/a/f$a;

    move-object v0, v6

    move-object v1, v5

    move-object v2, v5

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    sput-object v6, Le/k/a/c/g0/g0$a;->f:Le/k/a/c/g0/g0$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/a/f$a;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    .line 9
    sget-object p1, Le/k/a/a/f$a;->d:Le/k/a/a/f$a;

    iput-object p1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    .line 10
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    .line 11
    sget-object v0, Le/k/a/a/f$a;->a:Le/k/a/a/f$a;

    iput-object v0, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    .line 12
    iput-object v0, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    .line 13
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    .line 15
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    .line 16
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    .line 17
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    .line 18
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    :goto_0
    return-void
.end method

.method public constructor <init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    .line 4
    iput-object p3, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    .line 5
    iput-object p4, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    .line 6
    iput-object p5, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    return-void
.end method


# virtual methods
.method public final a(Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/a/f$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public b(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    if-ne p5, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/g0/g0$a;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    return-object v0
.end method

.method public c(Le/k/a/c/g0/i;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    invoke-virtual {v0, p1}, Le/k/a/a/f$a;->a(Ljava/lang/reflect/Member;)Z

    move-result p1

    return p1
.end method

.method public d(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;
    .locals 6

    .line 1
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Le/k/a/a/f$a;->a:Le/k/a/a/f$a;

    :cond_0
    move-object v4, p1

    .line 2
    iget-object p1, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    if-ne p1, v4, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Le/k/a/c/g0/g0$a;

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    iget-object v2, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    iget-object v3, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    iget-object v5, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    return-object p1
.end method

.method public e(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;
    .locals 6

    .line 1
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Le/k/a/a/f$a;->d:Le/k/a/a/f$a;

    :cond_0
    move-object v5, p1

    .line 2
    iget-object p1, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    if-ne p1, v5, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Le/k/a/c/g0/g0$a;

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    iget-object v2, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    iget-object v3, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    iget-object v4, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    return-object p1
.end method

.method public f(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;
    .locals 6

    .line 1
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Le/k/a/a/f$a;->d:Le/k/a/a/f$a;

    :cond_0
    move-object v1, p1

    .line 2
    iget-object p1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    if-ne p1, v1, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Le/k/a/c/g0/g0$a;

    iget-object v2, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    iget-object v3, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    iget-object v4, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    iget-object v5, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    return-object p1
.end method

.method public g(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;
    .locals 6

    .line 1
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Le/k/a/a/f$a;->d:Le/k/a/a/f$a;

    :cond_0
    move-object v2, p1

    .line 2
    iget-object p1, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    if-ne p1, v2, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Le/k/a/c/g0/g0$a;

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    iget-object v3, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    iget-object v4, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    iget-object v5, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    return-object p1
.end method

.method public h(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;
    .locals 6

    .line 1
    sget-object v0, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p1, v0, :cond_0

    sget-object p1, Le/k/a/a/f$a;->a:Le/k/a/a/f$a;

    :cond_0
    move-object v3, p1

    .line 2
    iget-object p1, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    if-ne p1, v3, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Le/k/a/c/g0/g0$a;

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    iget-object v2, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    iget-object v4, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    iget-object v5, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;Le/k/a/a/f$a;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/k/a/c/g0/g0$a;->a:Le/k/a/a/f$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->b:Le/k/a/a/f$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->c:Le/k/a/a/f$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->d:Le/k/a/a/f$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le/k/a/c/g0/g0$a;->e:Le/k/a/a/f$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "[Visibility: getter=%s,isGetter=%s,setter=%s,creator=%s,field=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
