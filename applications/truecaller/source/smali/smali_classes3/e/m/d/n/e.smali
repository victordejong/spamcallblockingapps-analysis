.class public Le/m/d/n/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/d/v/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/a<",
            "Le/m/d/k/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/d/n/j/h/a;

.field public volatile c:Le/m/d/n/j/i/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/d/n/j/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/d/v/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/a<",
            "Le/m/d/k/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/d/n/j/i/c;

    invoke-direct {v0}, Le/m/d/n/j/i/c;-><init>()V

    new-instance v1, Le/m/d/n/j/h/f;

    invoke-direct {v1}, Le/m/d/n/j/h/f;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/m/d/n/e;->a:Le/m/d/v/a;

    .line 4
    iput-object v0, p0, Le/m/d/n/e;->c:Le/m/d/n/j/i/b;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/d/n/e;->d:Ljava/util/List;

    .line 6
    iput-object v1, p0, Le/m/d/n/e;->b:Le/m/d/n/j/h/a;

    .line 7
    new-instance v0, Le/m/d/n/a;

    invoke-direct {v0, p0}, Le/m/d/n/a;-><init>(Le/m/d/n/e;)V

    check-cast p1, Le/m/d/m/f0;

    invoke-virtual {p1, v0}, Le/m/d/m/f0;->a(Le/m/d/v/a$a;)V

    return-void
.end method
