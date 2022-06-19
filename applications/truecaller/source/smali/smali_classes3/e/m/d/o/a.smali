.class public final synthetic Le/m/d/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/o/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/o/a;

    invoke-direct {v0}, Le/m/d/o/a;-><init>()V

    sput-object v0, Le/m/d/o/a;->a:Le/m/d/o/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Le/m/a/b/j/v;->c(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Le/m/a/b/j/v;->a()Le/m/a/b/j/v;

    move-result-object p1

    sget-object v0, Le/m/a/b/i/c;->g:Le/m/a/b/i/c;

    invoke-virtual {p1, v0}, Le/m/a/b/j/v;->d(Le/m/a/b/j/l;)Le/m/a/b/g;

    move-result-object p1

    return-object p1
.end method
