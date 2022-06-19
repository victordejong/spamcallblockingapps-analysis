.class public final Le/m/b/x/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/b/x/d/b;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:Le/m/b/x/d/f;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/b/x/b/k;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Le/m/b/x/b/k$a;->d:Ljava/util/List;

    .line 4
    invoke-static {v0, v1}, Le/m/b/x/d/f;->c(Ljava/lang/Class;Z)Le/m/b/x/d/f;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/b/k$a;->c:Le/m/b/x/d/f;

    .line 5
    iput-object p2, p0, Le/m/b/x/b/k$a;->b:Ljava/lang/StringBuilder;

    .line 6
    new-instance p2, Le/m/b/x/d/b;

    invoke-direct {p2, p1}, Le/m/b/x/d/b;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Le/m/b/x/b/k$a;->a:Le/m/b/x/d/b;

    return-void
.end method
