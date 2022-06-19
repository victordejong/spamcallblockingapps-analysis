.class public final synthetic Le/a/e/c/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/j0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/j0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/e/c/j0;->a:Le/a/e/c/s1;

    iget-object v1, p0, Le/a/e/c/j0;->b:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-static {v0, v1}, Le/a/o5/f2/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
