.class public final Le/a/v/a/c0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/v/a/c0/p;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/v/a/c0/p;Ljava/lang/String;ZLs1/z/b/a;Ls1/z/b/a;I)V
    .locals 0

    and-int/lit8 p5, p6, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_1

    .line 1
    sget-object p4, Le/a/v/a/c0/a;->b:Le/a/v/a/c0/a;

    :cond_1
    and-int/lit8 p5, p6, 0x10

    if-eqz p5, :cond_2

    .line 2
    sget-object p5, Le/a/v/a/c0/b;->b:Le/a/v/a/c0/b;

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    const-string p6, "iconBinder"

    .line 3
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "text"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onClick"

    invoke-static {p4, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "onLongClick"

    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/c0/c;->a:Le/a/v/a/c0/p;

    iput-object p2, p0, Le/a/v/a/c0/c;->b:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/v/a/c0/c;->c:Z

    iput-object p4, p0, Le/a/v/a/c0/c;->d:Ls1/z/b/a;

    iput-object p5, p0, Le/a/v/a/c0/c;->e:Ls1/z/b/a;

    return-void
.end method
