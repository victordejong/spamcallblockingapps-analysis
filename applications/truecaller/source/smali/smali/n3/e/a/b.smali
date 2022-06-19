.class public final synthetic Ln3/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/x$a;


# static fields
.field public static final synthetic a:Ln3/e/a/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/e/a/b;

    invoke-direct {v0}, Ln3/e/a/b;-><init>()V

    sput-object v0, Ln3/e/a/b;->a:Ln3/e/a/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Ln3/e/b/j1/x;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ln3/e/a/e/g1;

    invoke-direct {v0, p1, p2, p3}, Ln3/e/a/e/g1;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catch Ln3/e/b/n0; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ln3/e/b/x0;

    invoke-direct {p2, p1}, Ln3/e/b/x0;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
