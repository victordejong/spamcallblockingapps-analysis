.class public final Le/a/d/z/b/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/b/m;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/x1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/z/b/m;


# direct methods
.method public constructor <init>(Le/a/d/z/b/m;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/b/m$a;->a:Le/a/d/z/b/m;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/d/c0/x1/b;

    .line 2
    iget-object p1, p1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 3
    instance-of p1, p1, Le/a/d/c0/x1/a$c;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d/z/b/m$a;->a:Le/a/d/z/b/m;

    iget-object p1, p1, Le/a/d/z/b/m;->f:Le/a/d/z/b/c;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/z/b/b;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Le/a/d/z/b/b;->c()V

    move-object v1, v0

    :cond_0
    if-ne v1, p2, :cond_3

    return-object v1

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/d/z/b/m$a;->a:Le/a/d/z/b/m;

    iget-object p1, p1, Le/a/d/z/b/m;->f:Le/a/d/z/b/c;

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/z/b/b;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Le/a/d/z/b/b;->b()V

    move-object v1, v0

    :cond_2
    if-ne v1, p2, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method
