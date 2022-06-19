.class public final synthetic Le/m/a/b/j/c0/h/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/t;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/l;->a:Le/m/a/b/j/c0/h/t;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/m/a/b/j/c0/h/l;->a:Le/m/a/b/j/c0/h/t;

    .line 1
    iget-object v0, v0, Le/m/a/b/j/c0/h/t;->i:Le/m/a/b/j/c0/i/z;

    invoke-interface {v0}, Le/m/a/b/j/c0/i/z;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
