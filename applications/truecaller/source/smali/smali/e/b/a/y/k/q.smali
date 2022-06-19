.class public Le/b/a/y/k/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/y/k/q$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/b/a/y/k/q$a;

.field public final c:Le/b/a/y/j/b;

.field public final d:Le/b/a/y/j/b;

.field public final e:Le/b/a/y/j/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/b/a/y/k/q$a;Le/b/a/y/j/b;Le/b/a/y/j/b;Le/b/a/y/j/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/k/q;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/a/y/k/q;->b:Le/b/a/y/k/q$a;

    .line 4
    iput-object p3, p0, Le/b/a/y/k/q;->c:Le/b/a/y/j/b;

    .line 5
    iput-object p4, p0, Le/b/a/y/k/q;->d:Le/b/a/y/j/b;

    .line 6
    iput-object p5, p0, Le/b/a/y/k/q;->e:Le/b/a/y/j/b;

    .line 7
    iput-boolean p6, p0, Le/b/a/y/k/q;->f:Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/k;Le/b/a/y/l/b;)Le/b/a/w/b/c;
    .locals 0

    .line 1
    new-instance p1, Le/b/a/w/b/s;

    invoke-direct {p1, p2, p0}, Le/b/a/w/b/s;-><init>(Le/b/a/y/l/b;Le/b/a/y/k/q;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Trim Path: {start: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/y/k/q;->c:Le/b/a/y/j/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/a/y/k/q;->d:Le/b/a/y/j/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/a/y/k/q;->e:Le/b/a/y/j/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
