.class public final Le/a/c0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/s4/a;

.field public final b:Le/a/q2/d1/d;

.field public final c:Le/a/u3/a;


# direct methods
.method public constructor <init>(Le/a/s4/a;Le/a/q2/d1/d;Le/a/u3/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c0/e;->a:Le/a/s4/a;

    iput-object p2, p0, Le/a/c0/e;->b:Le/a/q2/d1/d;

    iput-object p3, p0, Le/a/c0/e;->c:Le/a/u3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/c0/d;Ljava/lang/Class;)Le/a/c0/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Le/a/c0/d;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Le/a/c0/c<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c0/c;

    iget-object v4, p0, Le/a/c0/e;->c:Le/a/u3/a;

    iget-object v5, p0, Le/a/c0/e;->a:Le/a/s4/a;

    iget-object v6, p0, Le/a/c0/e;->b:Le/a/q2/d1/d;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Le/a/c0/c;-><init>(Le/a/c0/d;Ljava/lang/Class;Le/a/u3/a;Le/a/s4/a;Le/a/q2/d1/d;)V

    return-object v0
.end method
