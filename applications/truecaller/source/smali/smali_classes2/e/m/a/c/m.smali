.class public final synthetic Le/m/a/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final synthetic b:Le/m/a/c/t$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Le/m/a/c/t$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Le/m/a/c/m;->b:Le/m/a/c/t$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/c/m;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Le/m/a/c/m;->b:Le/m/a/c/t$b;

    .line 1
    invoke-static {v0, v1}, Le/m/a/c/d0;->b(Ljava/util/concurrent/CopyOnWriteArrayList;Le/m/a/c/t$b;)V

    return-void
.end method
