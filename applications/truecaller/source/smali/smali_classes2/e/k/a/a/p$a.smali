.class public Le/k/a/a/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/k/a/a/p;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:Le/k/a/a/p$a;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Le/k/a/a/p$a;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/k/a/a/p$a;-><init>(Ljava/util/Set;ZZZZ)V

    sput-object v6, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    .line 4
    :goto_0
    iput-boolean p2, p0, Le/k/a/a/p$a;->b:Z

    .line 5
    iput-boolean p3, p0, Le/k/a/a/p$a;->c:Z

    .line 6
    iput-boolean p4, p0, Le/k/a/a/p$a;->d:Z

    .line 7
    iput-boolean p5, p0, Le/k/a/a/p$a;->e:Z

    return-void
.end method

.method public static a(Ljava/util/Set;ZZZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    iget-boolean v1, v0, Le/k/a/a/p$a;->b:Z

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-boolean p1, v0, Le/k/a/a/p$a;->c:Z

    if-ne p2, p1, :cond_1

    iget-boolean p1, v0, Le/k/a/a/p$a;->d:Z

    if-ne p3, p1, :cond_1

    iget-boolean p1, v0, Le/k/a/a/p$a;->e:Z

    if-ne p4, p1, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static b(Le/k/a/a/p$a;Le/k/a/a/p$a;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/k/a/a/p$a;->b:Z

    iget-boolean v1, p1, Le/k/a/a/p$a;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/k/a/a/p$a;->e:Z

    iget-boolean v1, p1, Le/k/a/a/p$a;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/k/a/a/p$a;->c:Z

    iget-boolean v1, p1, Le/k/a/a/p$a;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/k/a/a/p$a;->d:Z

    iget-boolean v1, p1, Le/k/a/a/p$a;->d:Z

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    iget-object p1, p1, Le/k/a/a/p$a;->a:Ljava/util/Set;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/util/Set;ZZZZ)Le/k/a/a/p$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)",
            "Le/k/a/a/p$a;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Le/k/a/a/p$a;->a(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    return-object p0

    .line 3
    :cond_0
    new-instance v6, Le/k/a/a/p$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/a/p$a;-><init>(Ljava/util/Set;ZZZZ)V

    return-object v6
.end method


# virtual methods
.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/a/p$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/a/p$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    check-cast p1, Le/k/a/a/p$a;

    .line 2
    invoke-static {p0, p1}, Le/k/a/a/p$a;->b(Le/k/a/a/p$a;Le/k/a/a/p$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-boolean v1, p0, Le/k/a/a/p$a;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    add-int/2addr v0, v1

    iget-boolean v1, p0, Le/k/a/a/p$a;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, -0x7

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Le/k/a/a/p$a;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :cond_2
    const/16 v1, -0xb

    :goto_2
    add-int/2addr v0, v1

    iget-boolean v1, p0, Le/k/a/a/p$a;->e:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    goto :goto_3

    :cond_3
    const/16 v1, -0xd

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    iget-boolean v1, p0, Le/k/a/a/p$a;->b:Z

    iget-boolean v2, p0, Le/k/a/a/p$a;->c:Z

    iget-boolean v3, p0, Le/k/a/a/p$a;->d:Z

    iget-boolean v4, p0, Le/k/a/a/p$a;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Le/k/a/a/p$a;->a(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/k/a/a/p$a;->f:Le/k/a/a/p$a;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/k/a/a/p$a;->a:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/a/p$a;->b:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/a/p$a;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/a/p$a;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/k/a/a/p$a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "JsonIgnoreProperties.Value(ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s)"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
