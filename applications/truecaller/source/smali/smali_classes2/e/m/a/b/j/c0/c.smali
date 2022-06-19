.class public Le/m/a/b/j/c0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Le/m/a/b/j/c0/h/x;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Le/m/a/b/j/y/e;

.field public final d:Le/m/a/b/j/c0/i/a0;

.field public final e:Le/m/a/b/j/d0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/m/a/b/j/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/m/a/b/j/c0/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Le/m/a/b/j/y/e;Le/m/a/b/j/c0/h/x;Le/m/a/b/j/c0/i/a0;Le/m/a/b/j/d0/b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/c0/c;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/c0/c;->c:Le/m/a/b/j/y/e;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/c0/c;->a:Le/m/a/b/j/c0/h/x;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/c0/c;->d:Le/m/a/b/j/c0/i/a0;

    .line 6
    iput-object p5, p0, Le/m/a/b/j/c0/c;->e:Le/m/a/b/j/d0/b;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/b/j/r;Le/m/a/b/j/n;Le/m/a/b/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/b/j/c0/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/b/j/c0/a;

    invoke-direct {v1, p0, p1, p3, p2}, Le/m/a/b/j/c0/a;-><init>(Le/m/a/b/j/c0/c;Le/m/a/b/j/r;Le/m/a/b/h;Le/m/a/b/j/n;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
