.class public Le/a/i4/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr3/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "Could not access badger init method"

    const-string v1, "Could not access badger"

    .line 1
    const-class v2, Lr3/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "b"

    .line 2
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/a/a/a;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v6, :cond_0

    :try_start_1
    const-string v7, "c"

    new-array v8, v5, [Ljava/lang/Class;

    .line 5
    const-class v9, Landroid/content/Context;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v10

    .line 7
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr3/a/a/a;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v3, v6

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v6

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v3, v6

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v3, v6

    goto :goto_3

    :catch_4
    move-exception p1

    .line 9
    :goto_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception p1

    .line 10
    :goto_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_4

    :catch_6
    move-exception p1

    .line 11
    :goto_2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_4

    :catch_7
    move-exception p1

    .line 12
    :goto_3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_4
    move-object v6, v3

    .line 13
    :cond_0
    :goto_5
    iput-object v6, p0, Le/a/i4/u;->a:Lr3/a/a/a;

    return-void
.end method
