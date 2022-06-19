.class public final synthetic Le/m/a/b/j/c0/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/t;

.field public final synthetic b:Le/m/a/b/j/r;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/g;->a:Le/m/a/b/j/c0/h/t;

    iput-object p2, p0, Le/m/a/b/j/c0/h/g;->b:Le/m/a/b/j/r;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/m/a/b/j/c0/h/g;->a:Le/m/a/b/j/c0/h/t;

    iget-object v1, p0, Le/m/a/b/j/c0/h/g;->b:Le/m/a/b/j/r;

    .line 1
    iget-object v0, v0, Le/m/a/b/j/c0/h/t;->c:Le/m/a/b/j/c0/i/a0;

    invoke-interface {v0, v1}, Le/m/a/b/j/c0/i/a0;->K1(Le/m/a/b/j/r;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
