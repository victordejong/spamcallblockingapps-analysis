.class public final synthetic Le/m/a/c/p1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/p1/p$b;

.field public final synthetic b:Le/m/a/c/p1/p;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/p1/p$b;Le/m/a/c/p1/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/p1/a;->a:Le/m/a/c/p1/p$b;

    iput-object p2, p0, Le/m/a/c/p1/a;->b:Le/m/a/c/p1/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/c/p1/a;->a:Le/m/a/c/p1/p$b;

    iget-object v1, p0, Le/m/a/c/p1/a;->b:Le/m/a/c/p1/p;

    .line 1
    invoke-virtual {v0, v1}, Le/m/a/c/p1/p$b;->b(Le/m/a/c/p1/p;)V

    return-void
.end method
