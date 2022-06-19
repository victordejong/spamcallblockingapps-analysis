.class public final Le/a/a/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k0;


# instance fields
.field public final a:Le/a/p5/g;

.field public final b:Le/a/a/i0;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/a/i0;)V
    .locals 1

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/l0;->a:Le/a/p5/g;

    iput-object p2, p0, Le/a/a/l0;->b:Le/a/a/i0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/l0;->a:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/l0;->b:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->c2()I

    move-result v0

    .line 3
    iget-object v2, p0, Le/a/a/l0;->b:Le/a/a/i0;

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x5

    invoke-interface {v2, v3}, Le/a/a/i0;->V(I)V

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
