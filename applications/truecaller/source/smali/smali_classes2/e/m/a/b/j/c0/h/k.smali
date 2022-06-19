.class public final synthetic Le/m/a/b/j/c0/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/t;

.field public final synthetic b:Le/m/a/b/j/r;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/t;Le/m/a/b/j/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/k;->a:Le/m/a/b/j/c0/h/t;

    iput-object p2, p0, Le/m/a/b/j/c0/h/k;->b:Le/m/a/b/j/r;

    iput p3, p0, Le/m/a/b/j/c0/h/k;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/m/a/b/j/c0/h/k;->a:Le/m/a/b/j/c0/h/t;

    iget-object v1, p0, Le/m/a/b/j/c0/h/k;->b:Le/m/a/b/j/r;

    iget v2, p0, Le/m/a/b/j/c0/h/k;->c:I

    .line 1
    iget-object v0, v0, Le/m/a/b/j/c0/h/t;->d:Le/m/a/b/j/c0/h/x;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Le/m/a/b/j/c0/h/x;->b(Le/m/a/b/j/r;I)V

    const/4 v0, 0x0

    return-object v0
.end method
