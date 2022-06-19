.class public final Le/m/a/h/a/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/h/a/h/q;

    .line 1
    invoke-direct {v0}, Le/m/a/h/a/h/q;-><init>()V

    sput-object v0, Le/m/a/h/a/h/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Le/m/a/h/a/h/p;

    invoke-direct {v0}, Le/m/a/h/a/h/p;-><init>()V

    sput-object v0, Le/m/a/h/a/h/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
