.class public Le/b/a/y/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/k/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/b/a/y/j/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/y/j/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/b/a/y/j/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/b/a/y/j/m;Le/b/a/y/j/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/b/a/y/j/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Le/b/a/y/j/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/k/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/a/y/k/a;->b:Le/b/a/y/j/m;

    .line 4
    iput-object p3, p0, Le/b/a/y/k/a;->c:Le/b/a/y/j/f;

    .line 5
    iput-boolean p4, p0, Le/b/a/y/k/a;->d:Z

    .line 6
    iput-boolean p5, p0, Le/b/a/y/k/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/k;Le/b/a/y/l/b;)Le/b/a/w/b/c;
    .locals 1

    .line 1
    new-instance v0, Le/b/a/w/b/f;

    invoke-direct {v0, p1, p2, p0}, Le/b/a/w/b/f;-><init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/a;)V

    return-object v0
.end method
