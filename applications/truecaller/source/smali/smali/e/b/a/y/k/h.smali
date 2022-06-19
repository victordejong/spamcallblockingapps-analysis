.class public Le/b/a/y/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/y/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/y/k/h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/b/a/y/k/h$a;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/b/a/y/k/h$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/y/k/h;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/a/y/k/h;->b:Le/b/a/y/k/h$a;

    .line 4
    iput-boolean p3, p0, Le/b/a/y/k/h;->c:Z

    return-void
.end method


# virtual methods
.method public a(Le/b/a/k;Le/b/a/y/l/b;)Le/b/a/w/b/c;
    .locals 0

    .line 1
    iget-boolean p1, p1, Le/b/a/k;->k:Z

    if-nez p1, :cond_0

    const-string p1, "Animation contains merge paths but they are disabled."

    .line 2
    invoke-static {p1}, Le/b/a/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Le/b/a/w/b/l;

    invoke-direct {p1, p0}, Le/b/a/w/b/l;-><init>(Le/b/a/y/k/h;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MergePaths{mode="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/y/k/h;->b:Le/b/a/y/k/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
