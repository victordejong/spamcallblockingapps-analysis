.class public final synthetic Le/m/d/z/m/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/z/m/k;


# direct methods
.method public synthetic constructor <init>(Le/m/d/z/m/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/m/e;->a:Le/m/d/z/m/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/z/m/e;->a:Le/m/d/z/m/k;

    .line 1
    iget-object v1, v0, Le/m/d/z/m/k;->l:Le/m/d/z/m/j;

    iget-boolean v0, v0, Le/m/d/z/m/k;->q:Z

    .line 2
    iget-object v2, v1, Le/m/d/z/m/j;->c:Le/m/d/z/m/j$a;

    invoke-virtual {v2, v0}, Le/m/d/z/m/j$a;->a(Z)V

    .line 3
    iget-object v1, v1, Le/m/d/z/m/j;->d:Le/m/d/z/m/j$a;

    invoke-virtual {v1, v0}, Le/m/d/z/m/j$a;->a(Z)V

    return-void
.end method
