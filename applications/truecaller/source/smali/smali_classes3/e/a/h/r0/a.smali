.class public final Le/a/h/r0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/r0/b;


# instance fields
.field public final a:Le/a/h/r0/c;


# direct methods
.method public constructor <init>(Le/a/h/r0/c;)V
    .locals 1

    const-string v0, "sim"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/r0/a;->a:Le/a/h/r0/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/e/l;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/h/e/l;

    .line 1
    iget-object v1, p0, Le/a/h/r0/a;->a:Le/a/h/r0/c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Le/a/h/r0/c;->a(I)Le/a/h/e/l;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/h/r0/a;->a:Le/a/h/r0/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/a/h/r0/c;->a(I)Le/a/h/e/l;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
