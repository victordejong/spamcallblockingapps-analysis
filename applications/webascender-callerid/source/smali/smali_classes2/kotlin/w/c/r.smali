.class public Lkotlin/w/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/w/c/s;

.field private static final b:[Lkotlin/a0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/w/c/s;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lkotlin/w/c/s;

    invoke-direct {v0}, Lkotlin/w/c/s;-><init>()V

    :goto_1
    sput-object v0, Lkotlin/w/c/r;->a:Lkotlin/w/c/s;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/a0/b;

    .line 4
    sput-object v0, Lkotlin/w/c/r;->b:[Lkotlin/a0/b;

    return-void
.end method

.method public static a(Lkotlin/w/c/i;)Lkotlin/a0/d;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/w/c/r;->a:Lkotlin/w/c/s;

    invoke-virtual {v0, p0}, Lkotlin/w/c/s;->a(Lkotlin/w/c/i;)Lkotlin/a0/d;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lkotlin/a0/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/w/c/r;->a:Lkotlin/w/c/s;

    invoke-virtual {v0, p0}, Lkotlin/w/c/s;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lkotlin/a0/c;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/w/c/r;->a:Lkotlin/w/c/s;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/w/c/s;->c(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/a0/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lkotlin/w/c/h;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/w/c/r;->a:Lkotlin/w/c/s;

    invoke-virtual {v0, p0}, Lkotlin/w/c/s;->d(Lkotlin/w/c/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lkotlin/w/c/l;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/w/c/r;->a:Lkotlin/w/c/s;

    invoke-virtual {v0, p0}, Lkotlin/w/c/s;->e(Lkotlin/w/c/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
