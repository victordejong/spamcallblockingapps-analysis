.class public abstract Le/a/b0/b/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/b/g/a$f;,
        Le/a/b0/b/g/a$b;,
        Le/a/b0/b/g/a$h;,
        Le/a/b0/b/g/a$a;,
        Le/a/b0/b/g/a$g;,
        Le/a/b0/b/g/a$e;,
        Le/a/b0/b/g/a$d;,
        Le/a/b0/b/g/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/a/b0/b/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:B

.field public final b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/f0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BZLjava/util/List;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Le/a/b0/b/g/a;->a:B

    iput-boolean p2, p0, Le/a/b0/b/g/a;->b:Z

    iput-object p3, p0, Le/a/b0/b/g/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Le/a/b0/b/g/a;

    const-string v0, "other"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-byte v0, p0, Le/a/b0/b/g/a;->a:B

    iget-byte p1, p1, Le/a/b0/b/g/a;->a:B

    invoke-static {v0, p1}, Ls1/z/c/l;->g(II)I

    move-result p1

    return p1
.end method
