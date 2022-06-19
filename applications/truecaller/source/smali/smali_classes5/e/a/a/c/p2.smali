.class public final synthetic Le/a/a/c/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/p2;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/a/a/c/p2;->a:Le/a/a/c/y3;

    .line 1
    iget-object v0, v0, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/c/k/a/j$b;->Ba(Le/a/a/c/s8/i;)V

    return-object v1
.end method
