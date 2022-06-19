.class public Le/f/a/e;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final k:Le/f/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/j<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/f/a/n/o/b0/b;

.field public final b:Le/f/a/g;

.field public final c:Le/f/a/r/k/g;

.field public final d:Le/f/a/c$a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/r/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/j<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final g:Le/f/a/n/o/l;

.field public final h:Z

.field public final i:I

.field public j:Le/f/a/r/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/b;

    invoke-direct {v0}, Le/f/a/b;-><init>()V

    sput-object v0, Le/f/a/e;->k:Le/f/a/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/f/a/n/o/b0/b;Le/f/a/g;Le/f/a/r/k/g;Le/f/a/c$a;Ljava/util/Map;Ljava/util/List;Le/f/a/n/o/l;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/a/n/o/b0/b;",
            "Le/f/a/g;",
            "Le/f/a/r/k/g;",
            "Le/f/a/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/j<",
            "**>;>;",
            "Ljava/util/List<",
            "Le/f/a/r/g<",
            "Ljava/lang/Object;",
            ">;>;",
            "Le/f/a/n/o/l;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Le/f/a/e;->a:Le/f/a/n/o/b0/b;

    .line 3
    iput-object p3, p0, Le/f/a/e;->b:Le/f/a/g;

    .line 4
    iput-object p4, p0, Le/f/a/e;->c:Le/f/a/r/k/g;

    .line 5
    iput-object p5, p0, Le/f/a/e;->d:Le/f/a/c$a;

    .line 6
    iput-object p7, p0, Le/f/a/e;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Le/f/a/e;->f:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Le/f/a/e;->g:Le/f/a/n/o/l;

    .line 9
    iput-boolean p9, p0, Le/f/a/e;->h:Z

    .line 10
    iput p10, p0, Le/f/a/e;->i:I

    return-void
.end method
