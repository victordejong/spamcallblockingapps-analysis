.class public final Le/a/h/f/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/h/f/b;

.field public final synthetic b:Le/a/b0/a/c0/b;


# direct methods
.method public constructor <init>(Le/a/h/f/b;Le/a/b0/a/c0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/b0;->a:Le/a/h/f/b;

    iput-object p2, p0, Le/a/h/f/b0;->b:Le/a/b0/a/c0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/f/b0;->b:Le/a/b0/a/c0/b;

    new-instance v1, Le/a/h/f/b0$a;

    invoke-direct {v1, p0}, Le/a/h/f/b0$a;-><init>(Le/a/h/f/b0;)V

    invoke-virtual {v0, v1}, Le/a/b0/a/c0/b;->e(Ls1/z/b/p;)V

    return-void
.end method
