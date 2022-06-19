.class public Le/i/b/b2/b$b;
.super Le/i/b/b2/b$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/b2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/reflect/Method;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/i/b/b2/b$a;)V
    .locals 1

    const-string p2, "AdMob19"

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Le/i/b/b2/b$d;-><init>(Ljava/lang/String;Le/i/b/b2/b$a;)V

    .line 2
    iput-object p1, p0, Le/i/b/b2/b$b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/String;

    sget-object v2, Le/i/b/b2/b$b;->d:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Le/i/b/b2/b$b;->e:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v2, "com.google.android.gms.ads.doubleclick.PublisherAdRequest$Builder"

    .line 3
    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Le/i/b/b2/b$b;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "addCustomTargeting"

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    aput-object v1, v5, v3

    aput-object v1, v5, v4

    .line 4
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Le/i/b/b2/b$b;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    :catch_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Le/i/b/b2/b$b;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v3, v4

    :cond_1
    return v3
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Le/i/b/b2/b$b;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Le/i/b/b2/b$b;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    invoke-static {v0}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-super {p0, p1, p2}, Le/i/b/b2/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
