.class public final Le/m/d/r/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/r/j/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/d/r/i/b<",
        "Le/m/d/r/j/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/m/d/r/j/e$a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/d/r/j/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/m/d/r/j/e$a;-><init>(Le/m/d/r/j/d;)V

    sput-object v0, Le/m/d/r/j/e;->e:Le/m/d/r/j/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/m/d/r/j/e;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le/m/d/r/j/e;->b:Ljava/util/Map;

    .line 4
    sget-object v2, Le/m/d/r/j/a;->a:Le/m/d/r/j/a;

    iput-object v2, p0, Le/m/d/r/j/e;->c:Le/m/d/r/e;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Le/m/d/r/j/e;->d:Z

    .line 6
    const-class v2, Ljava/lang/String;

    sget-object v3, Le/m/d/r/j/b;->a:Le/m/d/r/j/b;

    .line 7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Le/m/d/r/j/c;->a:Le/m/d/r/j/c;

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Ljava/util/Date;

    sget-object v3, Le/m/d/r/j/e;->e:Le/m/d/r/j/e$a;

    .line 13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public registerEncoder(Ljava/lang/Class;Le/m/d/r/e;)Le/m/d/r/i/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/r/j/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Le/m/d/r/j/e;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
