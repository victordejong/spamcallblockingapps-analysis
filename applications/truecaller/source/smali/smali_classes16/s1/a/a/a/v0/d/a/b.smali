.class public final Ls1/a/a/a/v0/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/f/b;

.field public static final b:Ls1/a/a/a/v0/f/b;

.field public static final c:Ls1/a/a/a/v0/f/b;

.field public static final d:Ls1/a/a/a/v0/f/b;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/d/a/d0/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/b;->a:Ls1/a/a/a/v0/f/b;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/b;->b:Ls1/a/a/a/v0/f/b;

    .line 3
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/b;->c:Ls1/a/a/a/v0/f/b;

    .line 4
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/b;->d:Ls1/a/a/a/v0/f/b;

    const/4 v0, 0x2

    new-array v1, v0, [Ls1/k;

    .line 5
    new-instance v2, Ls1/a/a/a/v0/f/b;

    const-string v3, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v2, v3}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v3, Ls1/a/a/a/v0/d/a/d0/k;

    .line 7
    new-instance v4, Ls1/a/a/a/v0/d/a/g0/i;

    sget-object v5, Ls1/a/a/a/v0/d/a/g0/h;->a:Ls1/a/a/a/v0/d/a/g0/h;

    const/4 v6, 0x0

    .line 8
    invoke-direct {v4, v5, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    .line 9
    sget-object v5, Ls1/a/a/a/v0/d/a/a$a;->b:Ls1/a/a/a/v0/d/a/a$a;

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 10
    invoke-direct {v3, v4, v7}, Ls1/a/a/a/v0/d/a/d0/k;-><init>(Ls1/a/a/a/v0/d/a/g0/i;Ljava/util/Collection;)V

    .line 11
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v6

    .line 12
    new-instance v2, Ls1/a/a/a/v0/f/b;

    const-string v3, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v2, v3}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v3, Ls1/a/a/a/v0/d/a/d0/k;

    .line 14
    new-instance v4, Ls1/a/a/a/v0/d/a/g0/i;

    sget-object v7, Ls1/a/a/a/v0/d/a/g0/h;->b:Ls1/a/a/a/v0/d/a/g0/h;

    .line 15
    invoke-direct {v4, v7, v6}, Ls1/a/a/a/v0/d/a/g0/i;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Z)V

    .line 16
    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 17
    invoke-direct {v3, v4, v5}, Ls1/a/a/a/v0/d/a/d0/k;-><init>(Ls1/a/a/a/v0/d/a/g0/i;Ljava/util/Collection;)V

    .line 18
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v4, v1, v2

    .line 19
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/d/a/b;->e:Ljava/util/Map;

    new-array v0, v0, [Ls1/a/a/a/v0/f/b;

    .line 20
    sget-object v1, Ls1/a/a/a/v0/d/a/w;->b:Ls1/a/a/a/v0/f/b;

    aput-object v1, v0, v6

    .line 21
    sget-object v1, Ls1/a/a/a/v0/d/a/w;->c:Ls1/a/a/a/v0/f/b;

    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/d/a/b;->f:Ljava/util/Set;

    return-void
.end method
