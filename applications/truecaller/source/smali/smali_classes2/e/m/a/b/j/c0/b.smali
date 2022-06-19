.class public final synthetic Le/m/a/b/j/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/c;

.field public final synthetic b:Le/m/a/b/j/r;

.field public final synthetic c:Le/m/a/b/j/n;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/c;Le/m/a/b/j/r;Le/m/a/b/j/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/b;->a:Le/m/a/b/j/c0/c;

    iput-object p2, p0, Le/m/a/b/j/c0/b;->b:Le/m/a/b/j/r;

    iput-object p3, p0, Le/m/a/b/j/c0/b;->c:Le/m/a/b/j/n;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/m/a/b/j/c0/b;->a:Le/m/a/b/j/c0/c;

    iget-object v1, p0, Le/m/a/b/j/c0/b;->b:Le/m/a/b/j/r;

    iget-object v2, p0, Le/m/a/b/j/c0/b;->c:Le/m/a/b/j/n;

    .line 1
    iget-object v3, v0, Le/m/a/b/j/c0/c;->d:Le/m/a/b/j/c0/i/a0;

    invoke-interface {v3, v1, v2}, Le/m/a/b/j/c0/i/a0;->a2(Le/m/a/b/j/r;Le/m/a/b/j/n;)Le/m/a/b/j/c0/i/g0;

    .line 2
    iget-object v0, v0, Le/m/a/b/j/c0/c;->a:Le/m/a/b/j/c0/h/x;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/m/a/b/j/c0/h/x;->b(Le/m/a/b/j/r;I)V

    const/4 v0, 0x0

    return-object v0
.end method
