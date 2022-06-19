.class public Le/b/a/y/k/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/k/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Le/b/a/y/j/h;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILe/b/a/y/j/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/k/o;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Le/b/a/y/k/o;->b:I

    .line 4
    iput-object p3, p0, Le/b/a/y/k/o;->c:Le/b/a/y/j/h;

    .line 5
    iput-boolean p4, p0, Le/b/a/y/k/o;->d:Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/k;Le/b/a/y/l/b;)Le/b/a/w/b/c;
    .locals 1

    .line 1
    new-instance v0, Le/b/a/w/b/q;

    invoke-direct {v0, p1, p2, p0}, Le/b/a/w/b/q;-><init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/o;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ShapePath{name="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/y/k/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/y/k/o;->b:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
