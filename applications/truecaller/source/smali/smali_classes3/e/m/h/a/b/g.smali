.class public final synthetic Le/m/h/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/a/b/g;

    invoke-direct {v0}, Le/m/h/a/b/g;-><init>()V

    sput-object v0, Le/m/h/a/b/g;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p1, Le/m/h/a/d/a;

    invoke-direct {p1}, Le/m/h/a/d/a;-><init>()V

    .line 2
    sget-object v0, Le/m/h/a/d/p;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p1, v0}, Le/m/h/a/d/a;->a(Ljava/lang/Object;Ljava/lang/Runnable;)Le/m/h/a/d/a$a;

    .line 3
    iget-object v0, p1, Le/m/h/a/d/a;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p1, Le/m/h/a/d/a;->b:Ljava/util/Set;

    .line 4
    new-instance v2, Le/m/h/a/d/o;

    invoke-direct {v2, v0, v1}, Le/m/h/a/d/o;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MlKitCleaner"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p1
.end method
