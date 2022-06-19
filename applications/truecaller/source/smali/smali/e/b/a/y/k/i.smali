.class public Le/b/a/y/k/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/y/k/i$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/b/a/y/k/i$a;

.field public final c:Le/b/a/y/j/b;

.field public final d:Le/b/a/y/j/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/y/j/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/b/a/y/j/b;

.field public final f:Le/b/a/y/j/b;

.field public final g:Le/b/a/y/j/b;

.field public final h:Le/b/a/y/j/b;

.field public final i:Le/b/a/y/j/b;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/b/a/y/k/i$a;Le/b/a/y/j/b;Le/b/a/y/j/m;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/b/a/y/k/i$a;",
            "Le/b/a/y/j/b;",
            "Le/b/a/y/j/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Le/b/a/y/j/b;",
            "Le/b/a/y/j/b;",
            "Le/b/a/y/j/b;",
            "Le/b/a/y/j/b;",
            "Le/b/a/y/j/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/k/i;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/a/y/k/i;->b:Le/b/a/y/k/i$a;

    .line 4
    iput-object p3, p0, Le/b/a/y/k/i;->c:Le/b/a/y/j/b;

    .line 5
    iput-object p4, p0, Le/b/a/y/k/i;->d:Le/b/a/y/j/m;

    .line 6
    iput-object p5, p0, Le/b/a/y/k/i;->e:Le/b/a/y/j/b;

    .line 7
    iput-object p6, p0, Le/b/a/y/k/i;->f:Le/b/a/y/j/b;

    .line 8
    iput-object p7, p0, Le/b/a/y/k/i;->g:Le/b/a/y/j/b;

    .line 9
    iput-object p8, p0, Le/b/a/y/k/i;->h:Le/b/a/y/j/b;

    .line 10
    iput-object p9, p0, Le/b/a/y/k/i;->i:Le/b/a/y/j/b;

    .line 11
    iput-boolean p10, p0, Le/b/a/y/k/i;->j:Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/k;Le/b/a/y/l/b;)Le/b/a/w/b/c;
    .locals 1

    .line 1
    new-instance v0, Le/b/a/w/b/n;

    invoke-direct {v0, p1, p2, p0}, Le/b/a/w/b/n;-><init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/i;)V

    return-object v0
.end method
