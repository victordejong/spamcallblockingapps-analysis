.class public Le/b/a/y/k/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/k/b;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Le/b/a/y/j/a;

.field public final e:Le/b/a/y/j/d;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Le/b/a/y/j/a;Le/b/a/y/j/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/k/m;->c:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Le/b/a/y/k/m;->a:Z

    .line 4
    iput-object p3, p0, Le/b/a/y/k/m;->b:Landroid/graphics/Path$FillType;

    .line 5
    iput-object p4, p0, Le/b/a/y/k/m;->d:Le/b/a/y/j/a;

    .line 6
    iput-object p5, p0, Le/b/a/y/k/m;->e:Le/b/a/y/j/d;

    .line 7
    iput-boolean p6, p0, Le/b/a/y/k/m;->f:Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/k;Le/b/a/y/l/b;)Le/b/a/w/b/c;
    .locals 1

    .line 1
    new-instance v0, Le/b/a/w/b/g;

    invoke-direct {v0, p1, p2, p0}, Le/b/a/w/b/g;-><init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/m;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ShapeFill{color=, fillEnabled="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/b/a/y/k/m;->a:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
