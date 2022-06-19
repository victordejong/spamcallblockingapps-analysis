.class public final Ln3/a0/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/a0/a/b$c;,
        Ln3/a0/a/b$b;,
        Ln3/a0/a/b$e;,
        Ln3/a0/a/b$d;
    }
.end annotation


# static fields
.field public static final f:Ln3/a0/a/b$c;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/a0/a/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/a0/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln3/a0/a/d;",
            "Ln3/a0/a/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/util/SparseBooleanArray;

.field public final e:Ln3/a0/a/b$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/a0/a/b$a;

    invoke-direct {v0}, Ln3/a0/a/b$a;-><init>()V

    sput-object v0, Ln3/a0/a/b;->f:Ln3/a0/a/b$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/a0/a/b$e;",
            ">;",
            "Ljava/util/List<",
            "Ln3/a0/a/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/a0/a/b;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Ln3/a0/a/b;->b:Ljava/util/List;

    .line 4
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Ln3/a0/a/b;->d:Landroid/util/SparseBooleanArray;

    .line 5
    new-instance p2, Ln3/g/a;

    invoke-direct {p2}, Ln3/g/a;-><init>()V

    iput-object p2, p0, Ln3/a0/a/b;->c:Ljava/util/Map;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/high16 p2, -0x80000000

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 7
    iget-object v2, p0, Ln3/a0/a/b;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/a0/a/b$e;

    .line 8
    iget v3, v2, Ln3/a0/a/b$e;->e:I

    if-le v3, p2, :cond_0

    move-object v0, v2

    move p2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iput-object v0, p0, Ln3/a0/a/b;->e:Ln3/a0/a/b$e;

    return-void
.end method
