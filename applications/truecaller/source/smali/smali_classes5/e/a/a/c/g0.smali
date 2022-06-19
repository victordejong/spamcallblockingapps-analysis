.class public final synthetic Le/a/a/c/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;ZLjava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/g0;->a:Le/a/a/c/y3;

    iput-boolean p2, p0, Le/a/a/c/g0;->b:Z

    iput-object p3, p0, Le/a/a/c/g0;->c:Ljava/util/List;

    iput-object p4, p0, Le/a/a/c/g0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/a/a/c/g0;->a:Le/a/a/c/y3;

    iget-boolean v1, p0, Le/a/a/c/g0;->b:Z

    iget-object v2, p0, Le/a/a/c/g0;->c:Ljava/util/List;

    iget-object v3, p0, Le/a/a/c/g0;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object v0, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1, v2, v3}, Le/a/a/c/h3;->a2(ZZLjava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
