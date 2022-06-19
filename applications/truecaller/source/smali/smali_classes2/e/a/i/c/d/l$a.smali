.class public final Le/a/i/c/d/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/c/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Le/a/i/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network"

    .line 2
    iput-object v0, p0, Le/a/i/c/d/l$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Le/a/i/c/d/l;
    .locals 2

    .line 1
    new-instance v0, Le/a/i/c/d/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/i/c/d/l;-><init>(Le/a/i/c/d/l$a;Ls1/z/c/f;)V

    return-object v0
.end method

.method public final varargs b([Ljava/lang/String;)Le/a/i/c/d/l$a;
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c/d/l$a;->e:Ljava/util/List;

    return-object p0
.end method

.method public final varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Le/a/i/c/d/l$a;
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/c/d/l$a;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Le/a/i/c/d/l$a;->b:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c/d/l$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Le/a/i/c/d/l$a;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/c/d/l$a;->d:Ljava/lang/String;

    return-object p0
.end method
