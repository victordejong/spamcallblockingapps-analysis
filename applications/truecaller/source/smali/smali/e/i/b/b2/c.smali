.class public Le/i/b/b2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/i/b/b2/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/i/b/d2/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Le/i/b/d2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/i/b/b2/d;",
            ">;",
            "Le/i/b/d2/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/b2/c;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/b2/c;->a:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/b2/c;->b:Ljava/util/List;

    .line 4
    iput-object p2, p0, Le/i/b/b2/c;->c:Le/i/b/d2/c;

    return-void
.end method
